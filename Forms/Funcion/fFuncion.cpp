// ---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fFuncion.h"
#include "uEval_Ex.h"

// ---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmFuncion *frmFuncion;

// ---------------------------------------------------------------------------
bool CheckTokens(AnsiString s) {
	const AnsiString Tokens[26] = {
		"cos", "sin", "tg", "ctg", "abs", "sgn", "sign", "sqrt", "ln", "exp",
		"arcsin", "arccos", "arctg", "arctan", "arcctg", "sh", "sinh", "ch",
		"cosh", "th", "tanh", "cth", "coth", "heaviside", "h", "x"};

	AnsiString CurTok = "";
	int i, j;
	for (i = 1; i <= s.Length(); i++) {
		s[i] = LowerCase(s[i])[1];
		if (('a' <= s[i]) && (s[i] <= 'z') || ('_' == s[i]))
			CurTok += s[i];
		else {
			if (CurTok != "") {
				for (j = 0; j < 26; j++)
					if (Tokens[j] == CurTok)
						break;
				if (j >= 26)
					return false;
				CurTok = "";
			}
		}
	}
	if (CurTok != "") {
		for (j = 0; j < 26; j++)
			if (Tokens[j] == CurTok)
				break;
		if (j >= 26)
			return false;
	}
	return true;
}

// ---------------------------------------------------------------------------
__fastcall TfrmFuncion::TfrmFuncion(TComponent* Owner) : TForm(Owner) {
}

// ---------------------------------------------------------------------------
void __fastcall TfrmFuncion::FormCreate(TObject *Sender) {
	Intervalos = NULL;
	lstIntervalos->ItemIndex = 0;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmFuncion::pntIntervalosPaint(TObject *Sender) {
	const int offset = 10;
	int w, h, i;
	long double a, b;
	TInfoInt Aux;
	Soporte(Intervalos, &a, &b);
	pntIntervalos->Canvas->Brush->Color = clWindow;
	pntIntervalos->Canvas->FillRect(pntIntervalos->Canvas->ClipRect);
	w = pntIntervalos->Width - 2 * offset;
	h = pntIntervalos->Height;
	pntIntervalos->Canvas->Pen->Color = clWindowText;
	pntIntervalos->Canvas->MoveTo(offset, h / 2);
	pntIntervalos->Canvas->LineTo(offset + w, h / 2);
	pntIntervalos->Canvas->Font->Color = clWindowText;
	pntIntervalos->Canvas->Pen->Color = clWindowFrame;
	for (i = 0; i <= Count(Intervalos) - 1; i++) {
		Aux = Find(Intervalos, i)->Info;
		pntIntervalos->Canvas->Brush->Color = TColor(Aux.Color);
		pntIntervalos->Canvas->Rectangle(offset + (Aux.Min - a)*w / (b - a),
			h / 2 - 6, offset + (Aux.Max - a)*w / (b - a), h / 2 - 1);
		pntIntervalos->Canvas->Brush->Color = clWindow;
		pntIntervalos->Canvas->TextOut(offset + (Aux.Min - a)*w / (b - a) -
			Canvas->TextWidth(FormatFloat("0.##", Aux.Min)) / 2, h / 2 + 1,
			FormatFloat("0.##", Aux.Min));
		pntIntervalos->Canvas->TextOut(offset + (Aux.Max - a)*w / (b - a) -
			Canvas->TextWidth(FormatFloat("0.##", Aux.Max)) / 2, h / 2 + 1,
			FormatFloat("0.##", Aux.Max));
	}
}
// ---------------------------------------------------------------------------

void __fastcall TfrmFuncion::btnAplicarClick(TObject *Sender) {
	TEval Eval;
	TInfoInt Info, Aux;
	int i, ItemIndex, Pos;
	bool e = false;
	ItemIndex = lstIntervalos->ItemIndex;
	if (!Eval.Evaluate(txtExpresion->Text)) {
		if ((Eval.LastError() == eSintaxis) || !CheckTokens(txtExpresion->Text))
		{
			Application->MessageBox
				(L"Error de sintaxis, verifique la expresión",
				L"Error en definición", MB_OK + MB_ICONERROR);
			txtExpresion->SetFocus();
			return;
		}
	}
	else if (!CheckTokens(txtExpresion->Text)) {
		Application->MessageBox(L"Error de sintaxis, verifique la expresión",
			L"Error en definición", MB_OK + MB_ICONERROR);
		txtExpresion->SetFocus();
		return;
	}
	if (IsDouble(txtMin->Text))
		Info.Min = StrToFloat(txtMin->Text);
	else {
		Application->MessageBox(L"Se aceptan solo números reales...",
			L"Error en definición", MB_OK + MB_ICONERROR);
		txtMin->SetFocus();
		return;
	}
	if (IsDouble(txtMax->Text))
		Info.Max = StrToFloat(txtMax->Text);
	else {
		Application->MessageBox(L"Se aceptan solo números reales...",
			L"Error en definición", MB_OK + MB_ICONERROR);
		txtMax->SetFocus();
		return;
	}
	strcpy(Info.Expresion, AnsiString(txtExpresion->Text).c_str());
	Info.TipoGrafico = TTipoGrafico(cboTipoGrafico->ItemIndex);
	Info.Color = clrColor->Selected;
	Info.Grosor = cboGrosor->ItemIndex + 1;
	if (ItemIndex != Count(Intervalos)) {
		Aux = Find(Intervalos, ItemIndex)->Info;
		e = Delete(Intervalos, Aux);
	}
	switch (CheckNewInterval(Intervalos, Info)) {
	case erIntervaloAbsurdo: {
			Application->MessageBox(L"Intervalo absurdo, no se agregará...",
				L"Error en definición", MB_OK + MB_ICONERROR);
			if (e)
				Add(Intervalos, Aux);
			txtMax->SetFocus();
			break;
		}
	case erSuperposicion: {
			Application->MessageBox
				(L"Se superpone el intervalo, no se agregará...",
				L"Error en definición", MB_OK + MB_ICONERROR);
			if (e)
				Add(Intervalos, Aux);
			txtMin->SetFocus();
			break;
		}
	case erNoError: {
			Add(Intervalos, Info);
			txtMin->Clear();
			txtMax->Clear();
			txtExpresion->Clear();
			txtExpresion->SetFocus();
			ItemIndex = Count(Intervalos);
		}
	}
	lstIntervalos->Clear();
	for (i = 0; i <= Count(Intervalos) - 1; i++) {
		Aux = Find(Intervalos, i)->Info;
		lstIntervalos->Items->Add(AnsiString(Aux.Expresion) + "; " +
			FloatToStr(Aux.Min) + " <= x < " + FloatToStr(Aux.Max));
	}
	lstIntervalos->Items->Add("[Nuevo Intervalo]");
	lstIntervalos->ItemIndex = ItemIndex;
	pntIntervalos->Repaint();
}
// ---------------------------------------------------------------------------

void __fastcall TfrmFuncion::btnEliminarClick(TObject *Sender) {
	if ((lstIntervalos->ItemIndex != -1) && (lstIntervalos->ItemIndex != Count
		(Intervalos)))
		if (Application->MessageBox
			(L"Estoy por eliminar un intervalo. ¿Continúo?...", L"Eliminación",
			MB_YESNO + MB_ICONQUESTION) == mrYes) {
			Delete(Intervalos, Find(Intervalos, lstIntervalos->ItemIndex)
				->Info);
			int i = lstIntervalos->ItemIndex - 1;
			lstIntervalos->DeleteSelected();
			if (i == -1)
				i = 0;
			lstIntervalos->ItemIndex = i;
			lstIntervalosClick(NULL);
		}
		else
			Application->MessageBox(L"Eliminación cancelada", L"Información",
			MB_OK + MB_ICONINFORMATION);
	else
		Application->MessageBox(L"Seleccione un intervalo...",
		L"Error en definición", MB_OK + MB_ICONERROR);
	pntIntervalos->Repaint();
}
// ---------------------------------------------------------------------------

void __fastcall TfrmFuncion::lstIntervalosClick(TObject *Sender) {
	TInfoInt Aux;
	if (lstIntervalos->ItemIndex != Count(Intervalos)) {
		Aux = Find(Intervalos, lstIntervalos->ItemIndex)->Info;
		txtMin->Text = FloatToStr(Aux.Min);
		txtMax->Text = FloatToStr(Aux.Max);
		txtExpresion->Text = Aux.Expresion;
		cboTipoGrafico->ItemIndex = int(Aux.TipoGrafico);
		clrColor->Selected = TColor(Aux.Color);
		cboGrosor->ItemIndex = Aux.Grosor - 1;
	}
	else {
		txtMin->Clear();
		txtMax->Clear();
		txtExpresion->Clear();
	}
}
// ---------------------------------------------------------------------------

void __fastcall TfrmFuncion::InFocus(TObject *Sender) {
	((TLabeledEdit*)Sender)->Color = clHighlight;
	((TLabeledEdit*)Sender)->Font->Color = clHighlightText;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmFuncion::OutFocus(TObject *Sender) {
	((TLabeledEdit*)Sender)->Color = clWindow;
	((TLabeledEdit*)Sender)->Font->Color = clWindowText;
}
// ---------------------------------------------------------------------------

void TfrmFuncion::Actualizar(void) {
	int i;
	TInfoInt Aux;
	lstIntervalos->Clear();
	for (i = 0; i <= Count(Intervalos) - 1; i++) {
		Aux = Find(Intervalos, i)->Info;
		lstIntervalos->Items->Add(AnsiString(Aux.Expresion) + "; " +
			FloatToStr(Aux.Min) + " <= x < " + FloatToStr(Aux.Max));
	}
	lstIntervalos->Items->Add("[Nuevo Intervalo]");
	lstIntervalos->ItemIndex = 0;
	Aux = Find(Intervalos, lstIntervalos->ItemIndex)->Info;
	txtMin->Text = FloatToStr(Aux.Min);
	txtMax->Text = FloatToStr(Aux.Max);
	txtExpresion->Text = Aux.Expresion;
	cboTipoGrafico->ItemIndex = int(Aux.TipoGrafico);
	clrColor->Selected = TColor(Aux.Color);
	cboGrosor->ItemIndex = Aux.Grosor - 1;
	pntIntervalos->Repaint();
}

// ---------------------------------------------------------------------------

void __fastcall TfrmFuncion::cboGrosorDrawItem(TWinControl *Control, int Index,
	TRect &Rect, TOwnerDrawState State) {
	ilsGrosor->Draw(cboGrosor->Canvas, Rect.Left + (Rect.Right - 50) / 2,
		Rect.Top, Index, true);
}
// ---------------------------------------------------------------------------

void __fastcall TfrmFuncion::btnAceptarClick(TObject *Sender) {
	if (Count(Intervalos) == 0) {
		Application->MessageBox(L"La función no contiene intervalos",
			L"Error en definición", MB_OK + MB_ICONERROR);
		ModalResult = mrNone;
	}
	else {
		ModalResult = mrOk;
	}
}
// ---------------------------------------------------------------------------

void __fastcall TfrmFuncion::btnEvaluarClick(TObject *Sender) {
	const WCHAR *sTitle = L"Error en definición";
	const int bError = MB_OK + MB_ICONERROR;
	const int bInfo = MB_OK + MB_ICONINFORMATION;
	AnsiString Msg;
	TEval Eval;
	TIntervalo *Info;
	long double value, result;
	if (IsDouble(edtValue->Text)) {
		value = edtValue->Text.ToDouble();
		Info = Find(Intervalos, value);
		if (Info != NULL)
			if (Eval.Evaluate(Info->Info.Expresion)) {
				result = Eval.Value(value);
				switch (Eval.LastError()) {
				case eNoError:
					Msg = Format("x = %s\ny = %g",
						ARRAYOFCONST((edtValue->Text, result)));
					Application->MessageBox(String(Msg).c_str(), L"Evaluación", bInfo);
					break;
				case eDivCero:
					Application->MessageBox(L"División sobre cero", sTitle,
						bError);
					break;
				case eDominio:
					Application->MessageBox(L"Fuera del dominio de la función",
						sTitle, bError);
					break;
				case eSintaxis:
					Application->MessageBox(L"Verifique la sintaxis", sTitle,
						bError);
					break;
				}
			}
			else {
				if (Eval.LastError() == eDivCero)
					Application->MessageBox(L"División sobre cero", sTitle,
					bError);
				else if (Eval.LastError() == eDominio)
					Application->MessageBox(L"Fuera del dominio de la función",
					sTitle, bError);
				else
					Application->MessageBox(L"Verifique la sintaxis", sTitle,
					bError);
			}
		else {
			Msg = Format("x = %s\ny = 0", ARRAYOFCONST((edtValue->Text)));
			Application->MessageBox(String(Msg).c_str(), L"Evaluación", bInfo);
		}
	}
	else
		Application->MessageBox(L"Ingrese un número valido", sTitle, bError);
}
// ---------------------------------------------------------------------------

void __fastcall TfrmFuncion::InsertarFuncion(TObject *Sender) {
	AnsiString s, f;
	int ss;
	f = aFunciones[((TMenuItem*)Sender)->Tag];
	s = txtExpresion->Text;
	ss = txtExpresion->SelStart;
	s.Insert(f + "()", ss + 1);
	txtExpresion->Text = s;
	txtExpresion->SelStart = ss + f.Length() + 1;
}
// ---------------------------------------------------------------------------
