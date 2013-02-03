// ---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fChild.h"
#include "fMain.h"
#include "fTextEditor.h"
#include "fFuncion.h"
#include "fSelectFunc.h"
#include "fSelectorGraficas.h"
#include "fArbol.h"
#include "fPropVisor.h"
#include "fLimite.h"
#include "fTrace.h"
#include "fIngresoDatos.h"

// ---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "Designer2D"
#pragma resource "*.dfm"

TfrmChild *frmChild;
const AnsiString DefaultFileName = "Nuevo proyecto de funciones en R2";

// ---------------------------------------------------------------------------
__fastcall TfrmChild::TfrmChild(TComponent* Owner) : TForm(Owner) {
	PathName = DefaultFileName;
	Caption = DefaultFileName;
	if (!frmMain->tbrFunciones->Visible) {
		frmMain->tbrFunciones->Visible = true;
		frmMain->tbrOperaciones->Visible = true;
		frmMain->tbrVer->Visible = true;
		frmMain->actCerrarTodas->Enabled = true;
	}
}

// ---------------------------------------------------------------------------
__fastcall TfrmChild::TfrmChild(TComponent* Owner, AnsiString Archivo)
	: TForm(Owner) {
	if (Funciones.LoadFromFile(Archivo)) {
		PathName = Archivo;
		Caption = ExtractFileName(Archivo);
		if (!frmMain->tbrFunciones->Visible) {
			frmMain->tbrFunciones->Visible = true;
			frmMain->tbrOperaciones->Visible = true;
			frmMain->tbrVer->Visible = true;
			frmMain->actCerrarTodas->Enabled = true;
		}
		if (dsgVisor->LoadFromFile(ChangeFileExt(Archivo, ".dsg")))
			Color = dsgVisor->BackGround->Color;
		else
			dsgVisor->SaveToFile(ChangeFileExt(PathName, ".dsg"));
		EstadoControles();
	}
	else {
		if (frmMain->Config.ErrorArchivos)
			Application->MessageBox
				(L"Formato desconocido de archivo.\n"
			L"No se continuará con la apertura del mismo.", L"Error en archivo",
			MB_OK + MB_ICONERROR);
		Tag = -1;
		// Valor necesario para evadir OnActivate, por bug de ActionList
		Close();
	}
}

// ---------------------------------------------------------------------------
void __fastcall TfrmChild::FormClose(TObject *Sender, TCloseAction &Action) {
	AnsiString Msg;
	Msg = "¿Desea guardar los cambios realizados en " + Caption + "?";
	Action = caFree;
	if (Funciones.Modificado)
		switch (Application->MessageBox(String(Msg).c_str(),
			L"Confirmar antes de cerrar", MB_YESNOCANCEL + MB_ICONQUESTION)) {
		case IDYES:
			actGuardarExecute(this);
			if (Funciones.Modificado)
				Action = caNone;
			break;
		case IDCANCEL:
			Action = caNone;
			break;
		}
	if (Action == caFree) {
		Application->ProcessMessages();
		if (frmMain->MDIChildCount <= 1) {
			frmMain->tbrFunciones->Visible = false;
			frmMain->tbrOperaciones->Visible = false;
			frmMain->tbrVer->Visible = false;
			frmMain->btnGuardar->Enabled = false;
			frmMain->btnImprimir->Enabled = false;
			frmMain->actCerrarTodas->Enabled = false;
			frmMain->sbrEstado->Panels->Items[0]->Text = "";
		}
	}
}

// ---------------------------------------------------------------------------
void TfrmChild::EstadoControles(void) {
	actGuardar->Enabled = Funciones.Modificado;
	actModificarFuncion->Enabled = Funciones.Count > 0;
	actEliminarFuncion->Enabled = Funciones.Count > 0;
	actEliminarTodas->Enabled = Funciones.Count > 0;
	actArbolFunciones->Enabled = Funciones.Count > 0;
	actTrace->Enabled = Funciones.Count > 0;
	actSelectorGraficas->Enabled = Funciones.Count > 0;
	actDerivada->Enabled = Funciones.Count > 0;
	act2daDerivada->Enabled = Funciones.Count > 0;
	actTangente->Enabled = Funciones.Count > 0;
	actNormal->Enabled = Funciones.Count > 0;
	actSecante->Enabled = Funciones.Count > 0;
	actTaylor->Enabled = Funciones.Count > 0;
	actAreaBajoCurva->Enabled = Funciones.Count > 0;
	actAreaEntre2Curvas->Enabled = Funciones.Count > 1;
	actAreaLateralSupRevolucion->Enabled = Funciones.Count > 0;
	actVolDiscos->Enabled = Funciones.Count > 0;
	actVolArandelas->Enabled = Funciones.Count > 1;
	actVolCapas->Enabled = Funciones.Count > 1;
	actLongArco->Enabled = Funciones.Count > 0;
	actCentroGravedad->Enabled = Funciones.Count > 1;
	actEstudioCompleto->Enabled = Funciones.Count > 0;
	actInterseccionesEjes->Enabled = Funciones.Count > 0;
	actParidad->Enabled = Funciones.Count > 0;
	actPtsCriticos1eraDerivada->Enabled = Funciones.Count > 0;
	actIntCrecimiento->Enabled = Funciones.Count > 0;
	actMaximos->Enabled = Funciones.Count > 0;
	actPtsCriticos2daDerivada->Enabled = Funciones.Count > 0;
	actIntConcavidad->Enabled = Funciones.Count > 0;
	actPtsInflexion->Enabled = Funciones.Count > 0;
	actAsintotas->Enabled = Funciones.Count > 0;
	actInterseccion2Curvas->Enabled = Funciones.Count > 1;
}

// ---------------------------------------------------------------------------
AnsiString TfrmChild::AutoName(void) {
	// Si usaras un: static int i = 0;
	// ++i
	// se solucionaria :P
	bool rep;
	AnsiString s1;
	int i, j;
	rep = false;
	for (i = 0; rep == false; i++) {
		s1 = "F" + IntToStr(i) + " (Nombre automático)";
		rep = false;
		for (j = 0; (j < Funciones.Count) && (!rep); j++) {
			AnsiString s2(Funciones.Items[j].Nombre);
			rep = s1 == s2;
		}
		if (!rep)
			break;
		rep = false;
	}
	return s1;
}

// ---------------------------------------------------------------------------
void __fastcall TfrmChild::actNuevaFuncionExecute(TObject *Sender) {
	TInfoFuncion F;
	TfrmFuncion *frmFuncion;
	frmFuncion = new TfrmFuncion(this);
	if (frmFuncion->ShowModal() == mrOk) {
		if (Trim(frmFuncion->txtNombre->Text) == "")
			frmFuncion->txtNombre->Text = AutoName();
		strcpy(F.Nombre, AnsiString(frmFuncion->txtNombre->Text).c_str());
		F.Graficar = true;
		F.Intervalo = frmFuncion->Intervalos;
		Funciones.Add(F);
		EstadoControles();
		frmMain->sbrEstado->Panels->Items[0]->Text = "Modificado";
		dsgVisor->ModificadoGraph = true;
	}
	else
		DeleteAll(frmFuncion->Intervalos);
	delete frmFuncion;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actModificarFuncionExecute(TObject *Sender) {
	TfrmSelectFunc *frmSelectFunc;
	frmSelectFunc = new TfrmSelectFunc(this);
	Funciones.GetListaFunciones(frmSelectFunc->cboFunciones->Items);
	if (frmSelectFunc->ShowModal() == mrOk) {
		TInfoFuncion F;
		F = Funciones.Items[frmSelectFunc->cboFunciones->ItemIndex];
		TfrmFuncion *frmFuncion;
		frmFuncion = new TfrmFuncion(this);
		frmFuncion->txtNombre->Text = F.Nombre;
		Copy(F.Intervalo, frmFuncion->Intervalos);
		frmFuncion->Actualizar();
		if (frmFuncion->ShowModal() == mrOk) {
			if (Trim(frmFuncion->txtNombre->Text) == "")
				frmFuncion->txtNombre->Text = AutoName();
			strcpy(F.Nombre, AnsiString(frmFuncion->txtNombre->Text).c_str());
			DeleteAll(F.Intervalo);
			F.Intervalo = frmFuncion->Intervalos;
			Funciones.Items[frmSelectFunc->cboFunciones->ItemIndex] = F;
			EstadoControles();
			frmMain->sbrEstado->Panels->Items[0]->Text = "Modificado";
			dsgVisor->ModificadoGraph = true;
		}
		else
			DeleteAll(frmFuncion->Intervalos);
		delete frmFuncion;
	}
	delete frmSelectFunc;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actEliminarFuncionExecute(TObject *Sender) {
	TfrmSelectFunc *frmSelectFunc;
	frmSelectFunc = new TfrmSelectFunc(this);
	Funciones.GetListaFunciones(frmSelectFunc->cboFunciones->Items);
	if (frmSelectFunc->ShowModal() == mrOk)
		if (frmMain->Config.DeleteFunction) {
			if (Application->MessageBox
				(Format(L"¿Confirma la eliminación de la función \"%s\"?",
				ARRAYOFCONST((frmSelectFunc->cboFunciones->Text))).c_str(),
				L"Confirmar antes de continuar", MB_YESNO + MB_ICONQUESTION)
				== IDYES) {
				Funciones.Delete(frmSelectFunc->cboFunciones->ItemIndex);
				EstadoControles();
				frmMain->sbrEstado->Panels->Items[0]->Text = "Modificado";
				dsgVisor->ModificadoGraph = true;
			}
		}
		else {
			Funciones.Delete(frmSelectFunc->cboFunciones->ItemIndex);
			EstadoControles();
			frmMain->sbrEstado->Panels->Items[0]->Text = "Modificado";
			dsgVisor->ModificadoGraph = true;
		}
	delete frmSelectFunc;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actEliminarTodasExecute(TObject *Sender) {
	if (frmMain->Config.DeleteFunction) {
		if (Application->MessageBox
			(L"¿Confirma la eliminación de todas las funciones?",
			L"Confirmar antes de continuar", MB_YESNO + MB_ICONQUESTION)
			== IDYES) {
			while (Funciones.Count > 0) {
				Funciones.Delete(0);
				frmMain->sbrEstado->Panels->Items[0]->Text = "Modificado";
			}
			dsgVisor->ModificadoGraph = true;
			EstadoControles();
		}
	}
	else {
		while (Funciones.Count > 0) {
			Funciones.Delete(0);
			frmMain->sbrEstado->Panels->Items[0]->Text = "Modificado";
		}
		dsgVisor->ModificadoGraph = true;
		EstadoControles();
	}
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::FormActivate(TObject *Sender) {
	TfrmMain::LiberarMemoria();
	if (Tag != -1) {
		dsgVisor->FFunciones = &Funciones;
		frmMain->btnGuardar->Action = actGuardar;
		frmMain->btnImprimir->Action = actImprimir;
		frmMain->btnAdd->Action = actNuevaFuncion;
		frmMain->btnModify->Action = actModificarFuncion;
		frmMain->btnDelete->Action = actEliminarFuncion;
		frmMain->btnTree->Action = actArbolFunciones;
		frmMain->btnTrace->Action = actTrace;
		frmMain->btnVisor->Action = actVisor;
		frmMain->btnSelectorGraficas->Action = actSelectorGraficas;
		frmMain->btnZoomMenos->Action = actSetZoomMenos;
		frmMain->btnZoomMas->Action = actSetZoomMas;
		frmMain->btnMove->Action = actMove;
		frmMain->btnMira->Action = actMira;
		frmMain->btnIzquierda->Action = actIzq;
		frmMain->btnArriba->Action = actArr;
		frmMain->btnAbajo->Action = actAba;
		frmMain->btnDerecha->Action = actDer;
		frmMain->btnLimite->Action = actLimite;
		frmMain->btnDerivada->Action = actDerivada;
		frmMain->btnTangente->Action = actTangente;
		frmMain->btnNormal->Action = actNormal;
		frmMain->btnSecante->Action = actSecante;
		frmMain->btnTaylor->Action = actTaylor;
		frmMain->btnAreaBajoCurva->Action = actAreaBajoCurva;
		frmMain->btnAreaEntre2Curvas->Action = actAreaEntre2Curvas;
		frmMain->btnMetodoDiscos->Action = actVolDiscos;
		frmMain->btnMetodoArandelas->Action = actVolArandelas;
		frmMain->btnMetodoCapas->Action = actVolCapas;
		frmMain->btnLongArco->Action = actLongArco;
		frmMain->btnCentroGravedad->Action = actCentroGravedad;
		frmMain->btnEstCompleto->Action = actEstudioCompleto;
		frmMain->btnIntEjes->Action = actInterseccionesEjes;
		frmMain->btnParidad->Action = actParidad;
		frmMain->btnMaxMin->Action = actMaximos;
		frmMain->btnPtsInflexion->Action = actPtsInflexion;
		frmMain->btnAsintotas->Action = actAsintotas;
		frmMain->btnIntCurvas->Action = actInterseccion2Curvas;
		EstadoControles();
		frmMain->sbrEstado->Panels->Items[0]->Text = Funciones.Modificado ?
			"Modificado" : "No modificado";
	}
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actTraceExecute(TObject *Sender) {
	TfrmTrace *frmTrace = new TfrmTrace(this);
	Funciones.GetListaFunciones(frmTrace->cboFuncion->Items);
	frmTrace->F = &Funciones;
	frmTrace->Dsg = dsgVisor;
	frmTrace->ShowModal();
	delete frmTrace;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actArbolFuncionesExecute(TObject *Sender) {
	if (Funciones.Count > 0) {
		TfrmArbol *frmArbol = new TfrmArbol(this);
		frmArbol->Funciones = &Funciones;
		frmArbol->CrearArbol();
		frmArbol->ShowModal();
		delete frmArbol;
	}
	else
		Application->MessageBox
			(L"No existen funciones definidas en el proyecto.", L"Información",
		MB_OK + MB_ICONERROR);
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actSelectorGraficasExecute(TObject *Sender) {
	TInfoFuncion F;
	TfrmSelectorGraficas *frmSelectorGraficas = new TfrmSelectorGraficas(this);
	Funciones.GetListaFunciones(frmSelectorGraficas->lstFunciones->Items);
	for (int i = 0; i < Funciones.Count; i++)
		frmSelectorGraficas->lstFunciones->Checked[i] =
			Funciones.Items[i].Graficar;
	if (frmSelectorGraficas->ShowModal() == mrOk) {
		for (int i = 0; i < Funciones.Count; i++) {
			F = Funciones.Items[i];
			F.Graficar = frmSelectorGraficas->lstFunciones->Checked[i];
			Funciones.Items[i] = F;
		}
		EstadoControles();
		frmMain->sbrEstado->Panels->Items[0]->Text = "Modificado";
		dsgVisor->ModificadoGraph = true;
	}
	delete frmSelectorGraficas;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actGuardarComoExecute(TObject *Sender) {
	frmMain->SaveDialog->Title = "Guardar proyecto";
	frmMain->SaveDialog->Filter = "Archivo de MaxMath|*.pmm";
	frmMain->SaveDialog->FileName = PathName;
	if (frmMain->SaveDialog->Execute())
		if (Funciones.SaveToFile(frmMain->SaveDialog->FileName)) {
			if (dsgVisor->SaveToFile
				(ChangeFileExt(frmMain->SaveDialog->FileName, ".dsg"))) {
				PathName = frmMain->SaveDialog->FileName;
				Caption = ExtractFileName(PathName);
				EstadoControles();
				frmMain->Config.DirectorioPmm =
					ExtractFilePath(frmMain->SaveDialog->FileName);
				frmMain->sbrEstado->Panels->Items[0]->Text = "No modificado";
			}
		}
		else if (frmMain->Config.ErrorArchivos)
			Application->MessageBox
				(L"Imposible guardar el archivo.\n"
			L"No se continuará con la escritura del mismo.", L"Error en archivo",
			MB_OK + MB_ICONERROR);
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actGuardarExecute(TObject *Sender) {
	if (Caption == DefaultFileName)
		actGuardarComoExecute(Sender);
	else {
		if (!Funciones.SaveToFile(PathName) && dsgVisor->SaveToFile
			(ChangeFileExt(PathName, ".dsg")) && frmMain->Config.ErrorArchivos)
		{
			Application->MessageBox
				(L"Imposible guardar el archivo.\n"
				L"No se continuará con la escritura del mismo.",
				L"Error en archivo", MB_OK + MB_ICONERROR);
		}
		else {
			EstadoControles();
			frmMain->Config.DirectorioPmm =
				ExtractFilePath(frmMain->SaveDialog->FileName);
			frmMain->sbrEstado->Panels->Items[0]->Text = "No modificado";
		}
	}
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actExpFuncionExecute(TObject *Sender) {
	int Index;
	TfrmSelectFunc *frmSelectFunc;
	frmSelectFunc = new TfrmSelectFunc(this);
	Funciones.GetListaFunciones(frmSelectFunc->cboFunciones->Items);
	if (frmSelectFunc->ShowModal() == mrOk) {
		Index = frmSelectFunc->cboFunciones->ItemIndex;
		frmMain->SaveDialog->Title = "Exportar función";
		frmMain->SaveDialog->Filter = "Archivo de función|*.fmm";
		if (frmMain->SaveDialog->Execute())
			if (!Funciones.ExportFunction(Index, frmMain->SaveDialog->FileName))
				Application->MessageBox
					(L"Imposible guardar el archivo.\n"
				L"No se continuará con la escritura del mismo.",
				L"Error en archivo", MB_OK + MB_ICONERROR);
	}
	delete frmSelectFunc;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actImpFuncionExecute(TObject *Sender) {
	frmMain->OpenDialog->Title = "Importar función";
	frmMain->OpenDialog->Filter = "Archivo de función|*.fmm";
	if (frmMain->OpenDialog->Execute())
		if (Funciones.ImportFunction(frmMain->OpenDialog->FileName)) {
			EstadoControles();
			dsgVisor->ModificadoGraph = true;
			frmMain->sbrEstado->Panels->Items[0]->Text = "Modificado";
			if (frmMain->Config.DeleteImport)
				if (Application->MessageBox
					(L"¿Desea eliminar el archivo importado?",
					L"Confirmar antes de continuar", MB_YESNO + MB_ICONQUESTION)
					== IDYES)
					if (!DeleteFile(frmMain->OpenDialog->FileName))
						Application->MessageBox
							(L"Imposible eliminar el archivo.",
						L"Error en archivo", MB_OK + MB_ICONERROR);
		}
		else
			Application->MessageBox
				(L"Imposible abrir el archivo.\n"
			L"No se continuará con la lectura del mismo.", L"Error en archivo",
			MB_OK + MB_ICONERROR);
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actAreaBajoCurvaExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = true;
	frmIngresoDatos->DatoSimplePositivo = true;
	frmIngresoDatos->txtSimple->Text = FloatToStr(0.00000001);
	frmIngresoDatos->Tag = opArea;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actVisorExecute(TObject *Sender) {
	long double cx, cy;
	TfrmPropVisor*frmPropVisor = new TfrmPropVisor(this);
	frmPropVisor->dsgPrevia->Assign(dsgVisor);
	frmPropVisor->dsgPrevia->SetCenter(0, 0);
	cx = dsgVisor->CenterX;
	cy = dsgVisor->CenterY;
	if (frmPropVisor->ShowModal() == mrOk) {
		dsgVisor->Assign(frmPropVisor->dsgPrevia);
		Color = dsgVisor->BackGround->Color;
		dsgVisor->SetCenter(cx, cy);
		if (Caption != DefaultFileName)
			dsgVisor->SaveToFile(ChangeFileExt(PathName, ".dsg"));
	}
	delete frmPropVisor;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actExpImagenExecute(TObject *Sender) {
	if (frmMain->sdgImage->Execute())
		dsgVisor->SaveBitmapToFile(frmMain->sdgImage->FileName, pf8bit);
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actCopiarExecute(TObject *Sender) {
	dsgVisor->CopyToClipboard();
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actCentrarExecute(TObject *Sender) {
	dsgVisor->MoveToCenter();
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actIzqExecute(TObject *Sender) {
	dsgVisor->MoveToLeft();
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actDerExecute(TObject *Sender) {
	dsgVisor->MoveToRight();
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actArrExecute(TObject *Sender) {
	dsgVisor->MoveToTop();
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actAbaExecute(TObject *Sender) {
	dsgVisor->MoveToBottom();
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actZoomDefaultExecute(TObject *Sender) {
	dsgVisor->SetZoom(100, 100);
	frmMain->sbrEstado->Panels->Items[3]->Text =
		Format("Zx: %d%% / Zy: %d%%",
		ARRAYOFCONST((dsgVisor->ZoomAxeX, dsgVisor->ZoomAxeY)));
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actZoomMasExecute(TObject *Sender) {
	TPoint p = dsgVisor->ScreenToClient(Mouse->CursorPos);
	long double x, y;
	x = dsgVisor->ScreenXToRealX(p.x);
	y = dsgVisor->ScreenYToRealY(p.y);
	dsgVisor->SetCenter(x, y);
	dsgVisor->SetZoom(dsgVisor->ZoomAxeX + 5, dsgVisor->ZoomAxeY + 5);
	frmMain->sbrEstado->Panels->Items[3]->Text =
		Format("Zx: %d%% / Zy: %d%%",
		ARRAYOFCONST((dsgVisor->ZoomAxeX, dsgVisor->ZoomAxeY)));
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actZoomMenosExecute(TObject *Sender) {
	TPoint p = dsgVisor->ScreenToClient(Mouse->CursorPos);
	long double x, y;
	x = dsgVisor->ScreenXToRealX(p.x);
	y = dsgVisor->ScreenYToRealY(p.y);
	dsgVisor->SetCenter(x, y);
	dsgVisor->SetZoom(dsgVisor->ZoomAxeX - 5, dsgVisor->ZoomAxeY - 5);
	frmMain->sbrEstado->Panels->Items[3]->Text =
		Format("Zx: %d%% / Zy: %d%%",
		ARRAYOFCONST((dsgVisor->ZoomAxeX, dsgVisor->ZoomAxeY)));
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actImprimirExecute(TObject *Sender) {
	int Intro;
	char msg[] =
		"Para poder imprimir necesita instalar una impresora.\n" "Para hacer esto, haga click en el botón Inicio, elija Configuración y luego Impresoras y\n"
		"después seleccione Agregar impresora.";

	if (frmMain->Config.CheckWhiteColor &&
		(dsgVisor->BackGround->Color != clWhite)) {
		Intro = Application->MessageBox
			(L"El color de fondo no es blanco, si continúa con el proceso de impresión \n"
			L"seguramente consumirá mayor cantidad de tinta \n"
			L"¿Desea cancelar la impresión y modificar el color de fondo?"
			, L"Confirmar antes de continuar", MB_YESNOCANCEL + MB_ICONQUESTION);
		switch (Intro) {
		case IDYES:
			actVisorExecute(NULL);
			return;
		case IDCANCEL:
			break;
		case IDNO:
			try {
				if (frmMain->pdgPrint->Execute())
					dsgVisor->Print(frmMain->pdgPrint->Copies);
			}
			catch (...) {
				Application->MessageBox(String(msg).c_str(), L"Error de impresión",
					MB_OK + MB_ICONWARNING);
			}
		}
	}
	else {
		try {
			if (frmMain->pdgPrint->Execute())
				dsgVisor->Print(frmMain->pdgPrint->Copies);
		}
		catch (...) {
			Application->MessageBox(String(msg).c_str(), L"Error de impresión",
				MB_OK + MB_ICONWARNING);
		}
	}
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actLimiteExecute(TObject *Sender) {
	TfrmLimite *frmLimite;
	frmLimite = new TfrmLimite(this, &Funciones);
	frmLimite->ShowModal();
	delete frmLimite;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actDerivadaExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = false;
	frmIngresoDatos->DatoSimple = false;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Tag = opDerivada;
	if (frmIngresoDatos->ShowModal() == mrOk) {
		TfrmFuncion *frmFuncion;
		frmFuncion = new TfrmFuncion(this);
		frmFuncion->txtNombre->Text = frmIngresoDatos->F.Nombre;
		Copy(frmIngresoDatos->F.Intervalo, frmFuncion->Intervalos);
		frmFuncion->Actualizar();
		if (frmFuncion->ShowModal() == mrOk) {
			if (Trim(frmFuncion->txtNombre->Text) == "")
				frmFuncion->txtNombre->Text = AutoName();
			strcpy(frmIngresoDatos->F.Nombre,
				AnsiString(frmFuncion->txtNombre->Text).c_str());
			DeleteAll(frmIngresoDatos->F.Intervalo);
			frmIngresoDatos->F.Intervalo = frmFuncion->Intervalos;
			Funciones.Add(frmIngresoDatos->F);
			EstadoControles();
			frmMain->sbrEstado->Panels->Items[0]->Text = "Modificado";
			dsgVisor->ModificadoGraph = true;
		}
		else
			DeleteAll(frmFuncion->Intervalos);
		delete frmFuncion;
	}
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::act2daDerivadaExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = false;
	frmIngresoDatos->DatoSimple = false;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Tag = op2Derivada;
	if (frmIngresoDatos->ShowModal() == mrOk) {
		TfrmFuncion *frmFuncion;
		frmFuncion = new TfrmFuncion(this);
		frmFuncion->txtNombre->Text = frmIngresoDatos->F.Nombre;
		Copy(frmIngresoDatos->F.Intervalo, frmFuncion->Intervalos);
		frmFuncion->Actualizar();
		if (frmFuncion->ShowModal() == mrOk) {
			if (Trim(frmFuncion->txtNombre->Text) == "")
				frmFuncion->txtNombre->Text = AutoName();
			strcpy(frmIngresoDatos->F.Nombre,
				AnsiString(frmFuncion->txtNombre->Text).c_str());
			DeleteAll(frmIngresoDatos->F.Intervalo);
			frmIngresoDatos->F.Intervalo = frmFuncion->Intervalos;
			Funciones.Add(frmIngresoDatos->F);
			EstadoControles();
			frmMain->sbrEstado->Panels->Items[0]->Text = "Modificado";
			dsgVisor->ModificadoGraph = true;
		}
		else
			DeleteAll(frmFuncion->Intervalos);
		delete frmFuncion;
	}
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actTangenteExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = false;
	frmIngresoDatos->DatoSimple = true;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Tag = opTangente;
	if (frmIngresoDatos->ShowModal() == mrOk) {
		TfrmFuncion *frmFuncion;
		frmFuncion = new TfrmFuncion(this);
		frmFuncion->txtNombre->Text = frmIngresoDatos->F.Nombre;
		Copy(frmIngresoDatos->F.Intervalo, frmFuncion->Intervalos);
		frmFuncion->Actualizar();
		if (frmFuncion->ShowModal() == mrOk) {
			if (Trim(frmFuncion->txtNombre->Text) == "")
				frmFuncion->txtNombre->Text = AutoName();
			strcpy(frmIngresoDatos->F.Nombre,
				AnsiString(frmFuncion->txtNombre->Text).c_str());
			DeleteAll(frmIngresoDatos->F.Intervalo);
			frmIngresoDatos->F.Intervalo = frmFuncion->Intervalos;
			Funciones.Add(frmIngresoDatos->F);
			EstadoControles();
			frmMain->sbrEstado->Panels->Items[0]->Text = "Modificado";
			dsgVisor->ModificadoGraph = true;
		}
		else
			DeleteAll(frmFuncion->Intervalos);
		delete frmFuncion;
	}
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actNormalExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = false;
	frmIngresoDatos->DatoSimple = true;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Tag = opNormal;
	if (frmIngresoDatos->ShowModal() == mrOk) {
		TfrmFuncion *frmFuncion;
		frmFuncion = new TfrmFuncion(this);
		frmFuncion->txtNombre->Text = frmIngresoDatos->F.Nombre;
		Copy(frmIngresoDatos->F.Intervalo, frmFuncion->Intervalos);
		frmFuncion->Actualizar();
		if (frmFuncion->ShowModal() == mrOk) {
			if (Trim(frmFuncion->txtNombre->Text) == "")
				frmFuncion->txtNombre->Text = AutoName();
			strcpy(frmIngresoDatos->F.Nombre,
				AnsiString(frmFuncion->txtNombre->Text).c_str());
			DeleteAll(frmIngresoDatos->F.Intervalo);
			frmIngresoDatos->F.Intervalo = frmFuncion->Intervalos;
			Funciones.Add(frmIngresoDatos->F);
			EstadoControles();
			frmMain->sbrEstado->Panels->Items[0]->Text = "Modificado";
			dsgVisor->ModificadoGraph = true;
		}
		else
			DeleteAll(frmFuncion->Intervalos);
		delete frmFuncion;
	}
	delete frmIngresoDatos;
}

// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actSecanteExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = false;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Tag = opSecante;
	if (frmIngresoDatos->ShowModal() == mrOk) {
		TfrmFuncion *frmFuncion;
		frmFuncion = new TfrmFuncion(this);
		frmFuncion->txtNombre->Text = frmIngresoDatos->F.Nombre;
		Copy(frmIngresoDatos->F.Intervalo, frmFuncion->Intervalos);
		frmFuncion->Actualizar();
		if (frmFuncion->ShowModal() == mrOk) {
			if (Trim(frmFuncion->txtNombre->Text) == "")
				frmFuncion->txtNombre->Text = AutoName();
			strcpy(frmIngresoDatos->F.Nombre,
				AnsiString(frmFuncion->txtNombre->Text).c_str());
			DeleteAll(frmIngresoDatos->F.Intervalo);
			frmIngresoDatos->F.Intervalo = frmFuncion->Intervalos;
			Funciones.Add(frmIngresoDatos->F);
			EstadoControles();
			frmMain->sbrEstado->Panels->Items[0]->Text = "Modificado";
			dsgVisor->ModificadoGraph = true;
		}
		else
			DeleteAll(frmFuncion->Intervalos);
		delete frmFuncion;
	}
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::FormKeyUp(TObject *Sender, WORD &Key,
	TShiftState Shift) {
	switch (Key) {
	case VK_UP:
		dsgVisor->MoveToTop();
		break;
	case VK_DOWN:
		dsgVisor->MoveToBottom();
		break;
	case VK_LEFT:
		dsgVisor->MoveToLeft();
		break;
	case VK_RIGHT:
		dsgVisor->MoveToRight();
		break;
	case VK_ADD:
		actZoomMasExecute(this);
		break;
	case VK_SUBTRACT:
		actZoomMenosExecute(this);
		break;
	}
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::dsgVisorMouseMove(TObject *Sender, TShiftState Shift,
	int X, int Y) {
	frmMain->sbrEstado->Panels->Items[2]->Text =
		Format("(%.5g;%.5g)", ARRAYOFCONST((dsgVisor->ScreenXToRealX(X),
		dsgVisor->ScreenYToRealY(Y))));
	frmMain->sbrEstado->Panels->Items[3]->Text =
		Format("Zx: %d%% / Zy: %d%%",
		ARRAYOFCONST((dsgVisor->ZoomAxeX, dsgVisor->ZoomAxeY)));
	if (dsgVisor->Cursor == TCursor(5)) {
		dsgVisor->SetCenter(dsgVisor->CenterX - dsgVisor->ScreenXToRealX(X) +
			dsgVisor->ScreenXToRealX(px),
			dsgVisor->CenterY - dsgVisor->ScreenYToRealY(Y) +
			dsgVisor->ScreenYToRealY(py));
		px = X;
		py = Y;
	}
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::dsgVisorMouseDown(TObject *Sender,
	TMouseButton Button, TShiftState Shift, int X, int Y) {
	if (Button == mbLeft)
		if (dsgVisor->Cursor == 7)
			actZoomMenosExecute(Sender);
		else if (dsgVisor->Cursor == 6)
			actZoomMasExecute(Sender);
		else if (dsgVisor->Cursor == TCursor(4)) {
			dsgVisor->Cursor = TCursor(5);
			// ReleaseCapture;
			// Perform(WM_SETCURSOR, 1, 0);
			// Application->ProcessMessages();
			px = X;
			py = Y;
			// TfrmMain::LiberarMemoria();
		}
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actLongArcoExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = false;
	frmIngresoDatos->DatoSimplePositivo = true;
	frmIngresoDatos->Tag = opLongArco;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actAreaLateralSupRevolucionExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = true;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Tag = opAreaLatSupRev;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actVolDiscosExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = true;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Tag = opVolDisco;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actVolCapasExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = true;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = true;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Tag = opVolTubos;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actVolArandelasExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = true;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = true;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Tag = opVolArandelas;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actCentroGravedadExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = true;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = false;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Tag = opCGravedad;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actTaylorExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = false;
	frmIngresoDatos->DatoSimple = true;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Tag = opTaylor;
	if (frmIngresoDatos->ShowModal() == mrOk) {
		TfrmFuncion *frmFuncion;
		frmFuncion = new TfrmFuncion(this);
		frmFuncion->txtNombre->Text = frmIngresoDatos->F.Nombre;
		Copy(frmIngresoDatos->F.Intervalo, frmFuncion->Intervalos);
		frmFuncion->Actualizar();
		if (frmFuncion->ShowModal() == mrOk) {
			if (Trim(frmFuncion->txtNombre->Text) == "")
				frmFuncion->txtNombre->Text = AutoName();
			strcpy(frmIngresoDatos->F.Nombre,
				AnsiString(frmFuncion->txtNombre->Text).c_str());
			DeleteAll(frmIngresoDatos->F.Intervalo);
			frmIngresoDatos->F.Intervalo = frmFuncion->Intervalos;
			Funciones.Add(frmIngresoDatos->F);
			EstadoControles();
			frmMain->sbrEstado->Panels->Items[0]->Text = "Modificado";
			dsgVisor->ModificadoGraph = true;
		}
		else
			DeleteAll(frmFuncion->Intervalos);
		delete frmFuncion;
	}
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actAreaEntre2CurvasExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = true;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = true;
	frmIngresoDatos->DatoSimplePositivo = true;
	frmIngresoDatos->txtSimple->Text = FloatToStr(0.00000001);
	frmIngresoDatos->Tag = opArea2Curvas;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actSetZoomMasExecute(TObject *Sender) {
	dsgVisor->Cursor = TCursor(6);
	actSetZoomMas->Checked = true;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actSetZoomMenosExecute(TObject *Sender) {
	dsgVisor->Cursor = TCursor(7);
	actSetZoomMenos->Checked = true;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actMoveExecute(TObject *Sender) {
	dsgVisor->Cursor = TCursor(4);
	actMove->Checked = true;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::dsgVisorMouseUp(TObject *Sender, TMouseButton Button,
	TShiftState Shift, int X, int Y) {
	if (dsgVisor->Cursor == TCursor(5))
		dsgVisor->Cursor = TCursor(4);
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actMiraExecute(TObject *Sender) {
	dsgVisor->Cursor = TCursor(8);
	actMira->Checked = true;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actInterseccionesEjesExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = false;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Interseccion = true;
	frmIngresoDatos->Tag = opIntersEjes;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actEstudioCompletoExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = false;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Interseccion = true;
	frmIngresoDatos->Tag = opEstCompleto;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actMaximosExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = false;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Interseccion = true;
	frmIngresoDatos->Tag = opMaxMin;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actParidadExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = false;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Interseccion = true;
	frmIngresoDatos->Tag = opParidad;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actPtsCriticos1eraDerivadaExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = false;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Interseccion = true;
	frmIngresoDatos->Tag = opPC1eraDer;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actPtsCriticos2daDerivadaExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = false;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Interseccion = true;
	frmIngresoDatos->Tag = opPC2daDer;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actIntCrecimientoExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = false;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Interseccion = true;
	frmIngresoDatos->Tag = opIntCrecDecrec;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actIntConcavidadExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = false;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Interseccion = true;
	frmIngresoDatos->Tag = opIntConcConv;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actPtsInflexionExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = false;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Interseccion = true;
	frmIngresoDatos->Tag = opPtosInflex;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actExpMuestrasExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = true;
	frmIngresoDatos->DatoSimplePositivo = true;
	frmIngresoDatos->Interseccion = false;
	frmIngresoDatos->Tag = opMuestreo;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actAsintotasExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = false;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = false;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Interseccion = true;
	frmIngresoDatos->Tag = opAsintotas;
	if (frmIngresoDatos->ShowModal() == mrOk) {
		TfrmFuncion *frmFuncion;
		frmFuncion = new TfrmFuncion(this);
		frmFuncion->txtNombre->Text = frmIngresoDatos->F.Nombre;
		Copy(frmIngresoDatos->F.Intervalo, frmFuncion->Intervalos);
		frmFuncion->Actualizar();
		if (frmFuncion->ShowModal() == mrOk) {
			if (Trim(frmFuncion->txtNombre->Text) == "")
				frmFuncion->txtNombre->Text = AutoName();
			strcpy(frmIngresoDatos->F.Nombre,
				AnsiString(frmFuncion->txtNombre->Text).c_str());
			DeleteAll(frmIngresoDatos->F.Intervalo);
			frmIngresoDatos->F.Intervalo = frmFuncion->Intervalos;
			Funciones.Add(frmIngresoDatos->F);
			EstadoControles();
			frmMain->sbrEstado->Panels->Items[0]->Text = "Modificado";
			dsgVisor->ModificadoGraph = true;
		}
		else
			DeleteAll(frmFuncion->Intervalos);
		delete frmFuncion;
	}
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmChild::actInterseccion2CurvasExecute(TObject *Sender) {
	TfrmIngresoDatos *frmIngresoDatos;
	frmIngresoDatos = new TfrmIngresoDatos(this);
	Funciones.GetListaFunciones(frmIngresoDatos->cboFx->Items);
	Funciones.GetListaFunciones(frmIngresoDatos->cboGx->Items);
	frmIngresoDatos->Funciones = &Funciones;
	frmIngresoDatos->DosFunciones = true;
	frmIngresoDatos->Intervalos = true;
	frmIngresoDatos->DatoSimple = false;
	frmIngresoDatos->DatoSimplePositivo = false;
	frmIngresoDatos->Interseccion = true;
	frmIngresoDatos->Tag = opInters2Curvas;
	frmIngresoDatos->ShowModal();
	delete frmIngresoDatos;
}
// ---------------------------------------------------------------------------
