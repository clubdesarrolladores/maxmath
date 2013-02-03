//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

//---------------------------------------------------------------------------
//Macros definidas
#define min(a, b) (a<b)?a:b
#define max(a, b) (a>b)?a:b
//---------------------------------------------------------------------------
//Constantes
const rsCaption = 100;
const rsgrpFuncCaption = 992;
//const rsgrpIntCaption = 2000;
const rsgrpSimpCaption = 2992;
const rsedtSimpCaption = 3488;

#include "fIngresoDatos.h"
#include "fReporte.h"
#include "uMetodos.h"
#include "fTextEditor.h"
#include "fChild.h"
#include "uColas.h"

//---------------------------------------------------------------------------
bool IsDouble(AnsiString s)
{
  try{
    s.ToDouble();
    return true;
  }catch(...){
    return false;}
};

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmIngresoDatos *frmIngresoDatos;
//---------------------------------------------------------------------------
__fastcall TfrmIngresoDatos::TfrmIngresoDatos(TComponent* Owner)
        : TForm(Owner)
{
}

//---------------------------------------------------------------------------
void __fastcall TfrmIngresoDatos::FormActivate(TObject *Sender)
{
  lblGx->Enabled = DosFunciones;
  cboGx->Enabled = DosFunciones;
  lblIntervaloGx->Enabled = DosFunciones;
  cboIntervaloGx->Enabled = DosFunciones;
  grpIntervalos->Visible = Intervalos;
  radDirecto->Checked = !Intervalos;
  radDirecto->Enabled = Intervalos && !DosFunciones && !Interseccion;
  radIntervalo->Enabled = Intervalos;
  lblIntervaloFx->Enabled = Intervalos;
  lblIntervaloGx->Enabled = Intervalos && DosFunciones;
  cboIntervaloFx->Enabled = Intervalos;
  cboIntervaloGx->Enabled = Intervalos && DosFunciones;
  grpSimple->Visible = DatoSimple;
  txtSimple->Enabled = DatoSimple;
  //Captions de los controles
  Caption = LoadStr(Tag+rsCaption);
  grpFunciones->Caption = LoadStr(Tag+rsgrpFuncCaption);
  grpSimple->Caption = LoadStr(Tag+rsgrpSimpCaption);
  lblSimple->Caption = LoadStr(Tag+rsedtSimpCaption);
}

//---------------------------------------------------------------------------

void __fastcall TfrmIngresoDatos::InFocusTxt(TObject *Sender)
{
  ((TLabeledEdit*)Sender)->Color = clHighlight;
  ((TLabeledEdit*)Sender)->Font->Color = clHighlightText;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIngresoDatos::InFocusCbo(TObject *Sender)
{
  ((TComboBox*)Sender)->Color = clHighlight;
  ((TComboBox*)Sender)->Font->Color = clHighlightText;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIngresoDatos::OutFocusCbo(TObject *Sender)
{
  ((TComboBox*)Sender)->Color = clWindow;
  ((TComboBox*)Sender)->Font->Color = clWindowText;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIngresoDatos::OutFocusTxt(TObject *Sender)
{
  ((TLabeledEdit*)Sender)->Color = clWindow;
  ((TLabeledEdit*)Sender)->Font->Color = clWindowText;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIngresoDatos::radDirectoClick(TObject *Sender)
{
  txta->Enabled = radDirecto->Checked;
  txtb->Enabled = radDirecto->Checked;
  lblIntervaloFx->Enabled = !radDirecto->Checked;
  cboIntervaloFx->Enabled = !radDirecto->Checked;
  if( DosFunciones){
    lblIntervaloGx->Enabled = !radDirecto->Checked;
    cboIntervaloGx->Enabled = !radDirecto->Checked;}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIngresoDatos::cboFxChange(TObject *Sender)
{
  AnsiString s;
  TInfoFuncion InfoFuncion;
  TInfoInt InfoInt;
  cboIntervaloFx->Items->Clear();
  InfoFuncion = Funciones->Items[cboFx->ItemIndex];
  for( int i = 0; i < Count( InfoFuncion.Intervalo ); i++){
    InfoInt = Find(InfoFuncion.Intervalo, i)->Info;
    s = Format("(%g; %g) \"%s\"", ARRAYOFCONST((InfoInt.Min, InfoInt.Max, InfoInt.Expresion)));
    cboIntervaloFx->Items->Add(s);}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIngresoDatos::cboGxChange(TObject *Sender)
{
  AnsiString s;
  TInfoFuncion InfoFuncion;
  TInfoInt InfoInt;
  cboIntervaloGx->Items->Clear();
  InfoFuncion = Funciones->Items[cboGx->ItemIndex];
  for( int i = 0; i < Count( InfoFuncion.Intervalo ); i++){
    InfoInt = Find(InfoFuncion.Intervalo, i)->Info;
    s = Format("(%g; %g) \"%s\"", ARRAYOFCONST((InfoInt.Min, InfoInt.Max, InfoInt.Expresion)));
    cboIntervaloGx->Items->Add(s);}
}

//---------------------------------------------------------------------------
void __fastcall TfrmIngresoDatos::btnCalcularClick(TObject *Sender)
{
  int Fx, Gx, iAux;
  long double a, b, e;
  long double ldx, ldy;
  unsigned int g;
  TCLongDouble cldx, cldy, cldb, cldAux;
  if( !GetDatos(&Fx,&Gx,&a,&b,&e) ){
	Application->MessageBox(L"Existen errores en los datos.\nPor favor revíselos.", L"Error en definición", MB_OK+MB_ICONERROR);
    return;
  }
  AnsiString FxName(Funciones->Items[Fx].Nombre);
  AnsiString GxName(Funciones->Items[Gx].Nombre);
  prgProgreso->Position = 50;
  try{
    switch( Tag )
    {
      //-----------------------------------
      case opDerivada:
        F = Derivada(Funciones->Items[Fx]);
        break;
      //-----------------------------------
      case op2Derivada:
        F = SegDerivada(Funciones->Items[Fx]);
        break;
      //-----------------------------------
      case opTangente:
        F = Recta_Tangente(Funciones->Items[Fx], e);
        break;
      //-----------------------------------
      case opNormal:
        F = Recta_Normal(Funciones->Items[Fx], e);
        break;
      //-----------------------------------
      case opSecante:
        F = Recta_Secante(Funciones->Items[Fx], a, b);
        break;
      //-----------------------------------
      case opArea:
        frmTextEditor->CaptionText(Format("Cálculo del área bajo la curva de %s entre %g y %g", ARRAYOFCONST((Funciones->Items[Fx].Nombre,a,b))));
        frmTextEditor->CommonText("");
        frmTextEditor->CommonText(Format("Área = %g", ARRAYOFCONST((IntegralDefinida(Funciones->Items[Fx], a, b, e)))));
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opLongArco:
        frmTextEditor->CaptionText(Format("Cálculo de la longitud de arco de %s entre %g y %g", ARRAYOFCONST((Funciones->Items[Fx].Nombre,a,b))));
        frmTextEditor->CommonText("");
        frmTextEditor->CommonText(Format("Longitud = %g", ARRAYOFCONST((LongitudDeArco(Funciones->Items[Fx],a,b)))));
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opAreaLatSupRev:
        frmTextEditor->CaptionText(Format("Cálculo del área lateral de superficie de revolución de %s entre %g y %g alrededor del eje y = %g", ARRAYOFCONST((Funciones->Items[Fx].Nombre, a, b, e))));
        frmTextEditor->CommonText("");
        frmTextEditor->CommonText(Format("Área lateral = %g", ARRAYOFCONST((AreaLatSupRev(Funciones->Items[Fx], a, b, e)))));
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opVolDisco:
        frmTextEditor->CaptionText(Format("Cálculo del volúmen de superficie de revolución de %s, %g y %g alrededor del eje y = %g", ARRAYOFCONST((Funciones->Items[Fx].Nombre, a, b, e))));
        frmTextEditor->CommonText("");
        frmTextEditor->CommonText("Volúmen = " + FloatToStr(VolumenDiscos(Funciones->Items[Fx],a,b,e)));
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opVolTubos:
        frmTextEditor->CaptionText(Format("Cálculo del volúmen de superficie de revolución de %s, %s, %g y %g alrededor del eje x = %g", ARRAYOFCONST((Funciones->Items[Fx].Nombre, Funciones->Items[Gx].Nombre, a, b, e))));
        frmTextEditor->CommonText("");
        frmTextEditor->CommonText("Volúmen = " + FloatToStr(VolumenTubos(Funciones->Items[Fx], Funciones->Items[Gx], a, b, e)));
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opVolArandelas:
        frmTextEditor->CaptionText(Format("Cálculo del volúmen de superficie de revolución de %s, %s, %g y %g alrededor del eje y = %g", ARRAYOFCONST((Funciones->Items[Fx].Nombre, Funciones->Items[Gx].Nombre, a, b, e))));
        frmTextEditor->CommonText("");
        frmTextEditor->CommonText("Volúmen = " + FloatToStr(VolumenArandelas(Funciones->Items[Fx], Funciones->Items[Gx], a, b, e)));
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opCGravedad:
        Centro_Gravedad(Funciones->Items[Fx], Funciones->Items[Gx], a, b, ldx, ldy);
        frmTextEditor->CaptionText(Format("Cálculo del centro de gravedad de la región encerrada por %s, %s, x = %g y x = %g", ARRAYOFCONST((Funciones->Items[Fx].Nombre, Funciones->Items[Gx].Nombre, a, b))));
        frmTextEditor->CommonText("");
        frmTextEditor->CommonText(Format("Centro = (%g; %g)", ARRAYOFCONST((ldx, ldy))));
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opTaylor:
        F = Funciones->Items[Fx];
        F = PolinomioTaylor(F,e,g);
        break;
      //-----------------------------------
      case opArea2Curvas:
        frmTextEditor->CaptionText(Format("Cálculo del área contenida entre %s, %s, x = %g y x = %g", ARRAYOFCONST((Funciones->Items[Fx].Nombre,Funciones->Items[Gx].Nombre,a,b))));
        frmTextEditor->CommonText("");
        frmTextEditor->CommonText("Area = " + FloatToStr(Area2Curvas(Funciones->Items[Fx],Funciones->Items[Gx],a,b,e)));
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opEstCompleto:
        frmTextEditor->CaptionText(Format("Estudio completo de %s, entre x = %g y x = %g", ARRAYOFCONST((FxName,a,b))));
        Tag = opIntersEjes;
        btnCalcularClick(Sender);
        Tag = opParidad;
        btnCalcularClick(Sender);
        frmTextEditor->CaptionText("Estudio de la primera derivada");
        Tag = opPC1eraDer;
        btnCalcularClick(Sender);
        Tag = opIntCrecDecrec;
        btnCalcularClick(Sender);
        Tag = opMaxMin;
        btnCalcularClick(Sender);
        frmTextEditor->CaptionText("Estudio de la segunda derivada");
        Tag = opPC2daDer;
        btnCalcularClick(Sender);
        Tag = opIntConcConv;
        btnCalcularClick(Sender);
        Tag = opPtosInflex;
        btnCalcularClick(Sender);
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opIntersEjes:
        iAux = InterseccionEjes(Funciones->Items[Fx], a, b, cldx, ldy, cldy);
        frmTextEditor->CaptionText(Format("Cálculo de ceros de %s, entre x = %g y x = %g", ARRAYOFCONST((FxName,a,b))));
        frmTextEditor->CommonText("");
        if( (a <= 0.0) && (0.0 < b) ){
          frmTextEditor->CommonText("Intersección eje y:");
          frmTextEditor->CommonText("Ordenada al origen: y = " + FloatToStrF(ldy, ffFixed, 6, 6));
          }
        frmTextEditor->CommonText("Intersecciones eje x: "+IntToStr(iAux));
        while( !cldx.Empty() ){
          if( cldy.GetValue() == 0 )
            frmTextEditor->CommonText("Cero: x = " + FloatToStrF(cldx.GetValue(), ffFixed, 6, 6));
          else
            cldAux.Add(cldx.GetValue());
          cldx.Delete();
          cldy.Delete();
          }
        frmTextEditor->CommonText("Discontinuidades: "+IntToStr(cldAux.Count));
        while( !cldAux.Empty() ){
          frmTextEditor->CommonText("Discontinuidad: x = " + FloatToStrF(cldAux.GetValue(), ffFixed, 6, 6));
          cldAux.Delete();
        }
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opParidad:
        frmTextEditor->CaptionText(Format("Cálculo de la paridad de %s, entre x = %g y x = %g", ARRAYOFCONST((FxName,a,b))));
        frmTextEditor->CommonText("");
        switch( Paridad(Funciones->Items[Fx], a, b) )
        {
          case 0: frmTextEditor->CommonText("Asimétrica"); break;
          case 1: frmTextEditor->CommonText("Impar"); break;
          case 2: frmTextEditor->CommonText("Par"); break;
        }
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opPC1eraDer:
        PtsCrit1erDer(Funciones->Items[Fx], a, b, cldx);
        frmTextEditor->CaptionText(Format("Cálculo de puntos criticos de la 1er derivada de %s, entre x = %g y x = %g", ARRAYOFCONST((FxName,a,b))));
        frmTextEditor->CommonText("");
        frmTextEditor->CommonText("Intersecciones eje x: "+IntToStr(cldx.Count));
        while( !cldx.Empty() ){
          frmTextEditor->ParOrdenado("(%g, %g)",cldx.GetValue(),0, "");
          cldx.Delete();
          }
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opIntCrecDecrec:
        Crec_Decr(Funciones->Items[Fx], a, b, cldx, cldb);
        frmTextEditor->CaptionText(Format("Cálculo de intervalos de crecimiento y decrecimiento de %s, entre x = %g y x = %g", ARRAYOFCONST((FxName, a, b))));
        frmTextEditor->CommonText("");
        frmTextEditor->CommonText("Intervalos: "+IntToStr(cldb.Count));
        while( !cldb.Empty() ){
          ldx = cldx.GetValue();
          cldx.Delete();
          if( cldb.GetValue() != 0 )
            frmTextEditor->ParOrdenado("(%g, %g) %s", ldx, cldx.GetValue(), "Crece");
          else
            frmTextEditor->ParOrdenado("(%g, %g) %s", ldx, cldx.GetValue(), "Decrece");
          cldb.Delete();
          }
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opMaxMin:
        Maximos_y_Minimos(Funciones->Items[Fx], a, b, cldx, cldy, cldb);
        frmTextEditor->CaptionText(Format("Cálculo de maximos y minimos de %s, entre x = %g y x = %g", ARRAYOFCONST((FxName,a,b))));
        frmTextEditor->CommonText("");
        frmTextEditor->CommonText("Extremos: "+IntToStr(cldx.Count));
        while( !cldx.Empty() ){
          if( cldb.GetValue() != 0 )
            frmTextEditor->ParOrdenado("(%g, %g) %s", cldx.GetValue(),cldy.GetValue(), "Máximo");
          else
            frmTextEditor->ParOrdenado("(%g, %g) %s", cldx.GetValue(),cldy.GetValue(), "Mínimo");
          cldx.Delete();
          cldy.Delete();
          cldb.Delete();
          }
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opPC2daDer:
        PtsCrit2daDer(Funciones->Items[Fx], a, b, cldx);
        frmTextEditor->CaptionText(Format("Cálculo de puntos criticos de la segunda derivada de %s, entre x = %g y x = %g", ARRAYOFCONST((FxName,a,b))));
        frmTextEditor->CommonText("");
        frmTextEditor->CommonText("Intersecciones eje x: "+IntToStr(cldx.Count));
        while( !cldx.Empty() ){
          frmTextEditor->ParOrdenado("(%g, %g)", cldx.GetValue(),0,"");
          cldx.Delete();
          }
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opIntConcConv:
        Conc_Conv(Funciones->Items[Fx], a, b, cldx, cldb);
        frmTextEditor->CaptionText(Format("Cálculo de intervalos de concavidad y convexidad de %s, entre x = %g y x = %g", ARRAYOFCONST((FxName, a, b))));
        frmTextEditor->CommonText("");
        frmTextEditor->CommonText("Intervalos: "+IntToStr(cldb.Count));
        while( !cldb.Empty() ){
          ldx = cldx.GetValue();
          cldx.Delete();
          if( cldb.GetValue() != 0 )
            frmTextEditor->ParOrdenado("(%g, %g) %s", ldx, cldx.GetValue(), "Concava");
          else
            frmTextEditor->ParOrdenado("(%g, %g) %s", ldx, cldx.GetValue(), "Convexa");
          cldb.Delete();
          }
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opPtosInflex:
        Puntos_de_Inflexion(Funciones->Items[Fx], a, b, cldx, cldy);
        frmTextEditor->CaptionText(Format("Cálculo de puntos de inflexión de %s, entre x = %g y x = %g", ARRAYOFCONST((FxName,a,b))));
        frmTextEditor->CommonText("");
        frmTextEditor->CommonText("Puntos: "+IntToStr(cldx.Count));
        while( !cldx.Empty() ){
          frmTextEditor->ParOrdenado("(%g, %g)", cldx.GetValue(),cldy.GetValue(),"");
          cldx.Delete();
          cldy.Delete();
          }
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opAsintotas:
        F = Asintotas(Find(Funciones->Items[Fx].Intervalo, a)->Info.Expresion);
        break;
      //-----------------------------------
      case opInters2Curvas:
        iAux = Interseccion2Curvas(Funciones->Items[Fx], Funciones->Items[Gx], a, b, cldx, cldy);
        frmTextEditor->CaptionText(Format("Cálculo de intersecciones entre %s y %s, entre x = %g y x = %g", ARRAYOFCONST((FxName,GxName,a,b))));
        frmTextEditor->CommonText("Intersecciones: "+IntToStr(iAux));
        while( !cldx.Empty() ){
          frmTextEditor->ParOrdenado("(%g, %g)", cldx.GetValue(), cldy.GetValue(),"");
          cldx.Delete();
          cldy.Delete();
          }
        frmTextEditor->CommonText("");
        frmTextEditor->Show();
        break;
      //-----------------------------------
      case opMuestreo:
        frmTextEditor->dlgSaveText->FilterIndex = 0;
        if( frmTextEditor->dlgSaveText->Execute() )
          if( !Funciones->ExportFunction(Fx, a, b, e, frmTextEditor->dlgSaveText->FileName) )
			Application->MessageBox(L"Error al exportar las muestras", L"Error de archivo", MB_OK+MB_ICONWARNING);
		break;
	  //-----------------------------------
	  default:
		ModalResult = mrNone;
		return;
	  //-----------------------------------
	}
	ModalResult = mrOk;
	return;
  }catch(...)
  {
	prgProgreso->Position = 0;
	Application->MessageBox(L"La operación no puede llevarse a cabo con los "
		L"parámetros actuales", L"Error interno", MB_OK+MB_ICONERROR);
    ModalResult = mrNone;
  }
}
//---------------------------------------------------------------------------

void __fastcall TfrmIngresoDatos::btnReporteClick(TObject *Sender)
{
  TfrmReporte *frmReporte = new TfrmReporte(this);
  frmReporte->Top = Top;
  frmReporte->Left = Left + Width *(0.9);

  AnsiString s;
  TInfoFuncion InfoFuncion;
  TInfoInt InfoInt;

  if( cboFx->ItemIndex != -1){
    SetFont(frmReporte->lblNombreFx, cboFx->Items->Strings[cboFx->ItemIndex]);
    if( radDirecto->Checked )
      SetFont(frmReporte->lblValLimSup, cboFx->Items->Strings[cboFx->ItemIndex]);
  }
  else
    SetFont(frmReporte->lblNombreFx, strError);

  frmReporte->lblConfGx->Enabled = DosFunciones;
  frmReporte->lblNombreGx->Enabled = DosFunciones;
  frmReporte->lblValLimInf->Enabled = DosFunciones;
  frmReporte->lblLimInf->Enabled = DosFunciones;
  if( DosFunciones ){
    frmReporte->lblConfIntervaloGx->Enabled = !radDirecto->Checked  && Intervalos;
    frmReporte->lblIntGx->Enabled = !radDirecto->Checked  && Intervalos;
    if( (cboGx->ItemIndex != -1) && (cboFx->ItemIndex != cboGx->ItemIndex) )
    {
      SetFont(frmReporte->lblNombreGx, cboGx->Items->Strings[cboGx->ItemIndex]);
      if( radDirecto->Checked )
        SetFont(frmReporte->lblValLimInf, cboGx->Items->Strings[cboGx->ItemIndex]);
    }
    else
      SetFont(frmReporte->lblNombreGx, strError);
  }

  if( Intervalos )
  {
    frmReporte->lblIngresoDirecto->Enabled = radDirecto->Checked;
    frmReporte->lblConfa->Enabled = radDirecto->Checked;
    frmReporte->lblConfb->Enabled = radDirecto->Checked;
    frmReporte->lblVala->Enabled = radDirecto->Checked;
    frmReporte->lblValb->Enabled = radDirecto->Checked;
    frmReporte->lblConfIntervaloFx->Enabled = radIntervalo->Checked;
    frmReporte->lblConfIntervaloGx->Enabled = radIntervalo->Checked && DosFunciones;
    frmReporte->lblIntFx->Enabled = radIntervalo->Checked;
    frmReporte->lblIntGx->Enabled = radIntervalo->Checked && DosFunciones;
    if(radDirecto->Checked){
      if(IsDouble(txta->Text))
        SetFont(frmReporte->lblVala, txta->Text);
      else
        SetFont(frmReporte->lblVala, strError);
      if(IsDouble(txtb->Text))
        SetFont(frmReporte->lblValb, txtb->Text);
      else
        SetFont(frmReporte->lblValb, strError);
      if(IsDouble(txta->Text) && IsDouble(txtb->Text)){
        if(txta->Text.ToDouble() < txtb->Text.ToDouble()){
          SetFont(frmReporte->lblValLimIzq, txta->Text);
          SetFont(frmReporte->lblValLimDer, txtb->Text);
        }else{
          SetFont(frmReporte->lblValLimIzq, strError);
          SetFont(frmReporte->lblValLimDer, strError);
        }
      }else{
        SetFont(frmReporte->lblValLimIzq, strError);
        SetFont(frmReporte->lblValLimDer, strError);
      }
    }else{
      if(cboIntervaloFx->ItemIndex != -1 ){
        SetFont(frmReporte->lblIntFx, cboIntervaloFx->Items->Strings[cboIntervaloFx->ItemIndex]);
        SetFont(frmReporte->lblValLimSup, Find(Funciones->Items[cboFx->ItemIndex].Intervalo,
            cboIntervaloFx->ItemIndex)->Info.Expresion);
      }else{
        SetFont(frmReporte->lblIntFx, strError);
        SetFont(frmReporte->lblValLimSup, strError);
      }
      if(DosFunciones){
        if((cboIntervaloGx->ItemIndex != -1) && (cboFx->ItemIndex != cboGx->ItemIndex)){
          SetFont(frmReporte->lblIntGx, cboIntervaloGx->Items->Strings[cboIntervaloGx->ItemIndex]);
          SetFont(frmReporte->lblValLimInf, Find(Funciones->Items[cboGx->ItemIndex].Intervalo,
              cboIntervaloGx->ItemIndex)->Info.Expresion);
        }else{
          SetFont(frmReporte->lblIntGx, strError);
          SetFont(frmReporte->lblValLimInf, strError);
        }
        TInfoFuncion Fx,Gx;
        TInfoInt IntFx,IntGx;
        if( (cboIntervaloFx->ItemIndex != -1) && (cboIntervaloGx->ItemIndex != -1) && (cboFx->ItemIndex != cboGx->ItemIndex) )
        {
          Fx = Funciones->Items[cboFx->ItemIndex];
          Gx = Funciones->Items[cboGx->ItemIndex];
          IntFx = Find(Fx.Intervalo, cboIntervaloFx->ItemIndex)->Info;
          IntGx = Find(Gx.Intervalo, cboIntervaloGx->ItemIndex)->Info;
          if(max(IntFx.Min,IntGx.Min) < min(IntFx.Max,IntGx.Max)){
            SetFont(frmReporte->lblValLimIzq, FloatToStr(max(IntFx.Min,IntGx.Min)));
            SetFont(frmReporte->lblValLimDer, FloatToStr(min(IntFx.Max,IntGx.Max)));
          }else{
            SetFont(frmReporte->lblValLimIzq, strError);
            SetFont(frmReporte->lblValLimDer, strError);
          }
        }else{
          SetFont(frmReporte->lblValLimIzq, strError);
          SetFont(frmReporte->lblValLimDer, strError);
        }
      }
      else
      {
        TInfoFuncion Fx;
        TInfoInt IntFx;
        if( cboIntervaloFx->ItemIndex != -1 ){
          Fx = Funciones->Items[cboFx->ItemIndex];
          IntFx = Find(Fx.Intervalo, cboIntervaloFx->ItemIndex)->Info;
          SetFont(frmReporte->lblValLimIzq, FloatToStr(IntFx.Min));
          SetFont(frmReporte->lblValLimDer, FloatToStr(IntFx.Max));
        }else{
          SetFont(frmReporte->lblValLimIzq, strError);
          SetFont(frmReporte->lblValLimDer, strError);
        }
      }
    }
  }else{
    frmReporte->lblConfIntervaloFx->Enabled = false;
    frmReporte->lblConfIntervaloGx->Enabled = false;
    frmReporte->lblIntFx->Enabled = false;
    frmReporte->lblIntGx->Enabled = false;
    frmReporte->lblLimIzq->Enabled = false;
    frmReporte->lblLimDer->Enabled = false;
    frmReporte->lblValLimIzq->Enabled = false;
    frmReporte->lblValLimDer->Enabled = false;
  }

  frmReporte->lblValSimple->Enabled = DatoSimple;
  if(DatoSimple){
    if(IsDouble(txtSimple->Text)){
      if(DatoSimplePositivo){
        if(txtSimple->Text.ToDouble() > 0)
          SetFont(frmReporte->lblValSimple, txtSimple->Text);
        else
          SetFont(frmReporte->lblValSimple, strError);
      }else
        SetFont(frmReporte->lblValSimple, txtSimple->Text);
    }else
      SetFont(frmReporte->lblValSimple, strError);
  }
  else{
    frmReporte->lblSimple->Enabled = false;
    frmReporte->lblValSimple->Enabled = false;
  }

  bool Aceptar;
  Aceptar = (frmReporte->lblValLimSup->Caption != "Error!");
  (DosFunciones)?Aceptar = Aceptar && (frmReporte->lblValLimInf->Caption != "Error!"):Aceptar;
  (Intervalos)?Aceptar = Aceptar && (frmReporte->lblValLimIzq->Caption != "Error!") &&
            (frmReporte->lblValLimDer->Caption != "Error!"):Aceptar;
  (DatoSimple)?Aceptar = Aceptar && (frmReporte->lblValSimple->Caption != "Error!"):Aceptar;
  if( !Aceptar )
    frmReporte->lblError->Caption = "Existen errores en los datos. Revíselos.";
  //Aqui modificar los caption de los labels a fin de dar orientación al
  //usuario sobre cuales son los datos que se necesitan
  //ejemplo area: limite sup, inf, der, iz, y error
  //ejemplo ceros: funcion, limite der, izq, error
  frmReporte->lblSimple->Caption = lblSimple->Caption;


  frmReporte->lblConfGx->Visible = DosFunciones;
  frmReporte->lblNombreGx->Visible = DosFunciones;
  frmReporte->lblConfIntervaloGx->Visible = DosFunciones;
  frmReporte->lblIntGx->Visible = DosFunciones;
  frmReporte->lblLimInf->Visible = DosFunciones;
  frmReporte->lblValLimInf->Visible = DosFunciones;

/*  grpIntervalos->Visible = Intervalos;
  radDirecto->Checked = !Intervalos;
  radDirecto->Enabled = Intervalos && !DosFunciones && !Interseccion;
  radIntervalo->Enabled = Intervalos;
  lblIntervaloFx->Enabled = Intervalos;
  lblIntervaloGx->Enabled = Intervalos && DosFunciones;
  cboIntervaloFx->Enabled = Intervalos;
  cboIntervaloGx->Enabled = Intervalos && DosFunciones;*/

  frmReporte->lblSimple->Visible = DatoSimple;
  frmReporte->lblValSimple->Visible = DatoSimple;

  frmReporte->ShowModal();
  delete frmReporte;
}
//---------------------------------------------------------------------------
                                
void __fastcall TfrmIngresoDatos::btnPorDefectoClick(TObject *Sender)
{
  cboFx->ItemIndex = -1;
  cboGx->ItemIndex = -1;
  cboIntervaloFx->Items->Clear();
  cboIntervaloGx->Items->Clear();
  txta->Clear();
  txtb->Clear();
  txtSimple->Clear();
}
//---------------------------------------------------------------------------

bool __fastcall TfrmIngresoDatos::GetDatos(int *Fx, int *Gx, long double *a,
long double *b, long double *e)
{
  *Fx = -1;
  *Gx = -1;
  *a = 0;
  *b = 0;
  *e = 0;
  bool r;
  int ia, ib;
  *Fx = cboFx->ItemIndex;
  r = *Fx != -1;
  if( DosFunciones )
  {
    *Gx = cboGx->ItemIndex;
    r = r && (*Gx != -1) && (cboFx->ItemIndex != cboGx->ItemIndex);
  }
  if( Intervalos )
    if( radDirecto->Checked )
      if( IsDouble(txta->Text) && IsDouble(txtb->Text) )
      {
        *a = txta->Text.ToDouble();
        *b = txtb->Text.ToDouble();
        if( *a >= *b )
          r = false;
      }
      else
        r = false;
    else
    {
      ia = cboIntervaloFx->ItemIndex;
      if( DosFunciones )
      {
        ib = cboIntervaloGx->ItemIndex;
        r = r && (ia != -1) && (ib != -1) && (cboFx->ItemIndex != cboGx->ItemIndex);
        if( (ia != -1)&&(ib != -1)&& (cboFx->ItemIndex != cboGx->ItemIndex) )
        {
          TInfoInt IntFx,IntGx;
          IntFx = Find(Funciones->Items[*Fx].Intervalo, ia)->Info;
          IntGx = Find(Funciones->Items[*Gx].Intervalo, ib)->Info;
          if( max(IntFx.Min,IntGx.Min) < min(IntFx.Max,IntGx.Max) )
          {
            *a = max(IntFx.Min,IntGx.Min);
            *b = min(IntFx.Max,IntGx.Max);
          }
          else
            r = false;
        }
        else
          r = false;
      }
      else
      {
        r = r && (ia != -1);
        if( ia != -1 )
        {
          TInfoInt IntFx;
          IntFx = Find(Funciones->Items[*Fx].Intervalo, ia)->Info;
          *a = IntFx.Min;
          *b = IntFx.Max;
        }
      }
    }
  if( DatoSimple )
    if( IsDouble(txtSimple->Text) )
      if( DatoSimplePositivo )
        if( txtSimple->Text.ToDouble() > 0)
          *e = txtSimple->Text.ToDouble();
        else
          r = false;
      else
        *e = txtSimple->Text.ToDouble();
    else
      r = false;
  return r;
}

//---------------------------------------------------------------------------

void TfrmIngresoDatos::SetFont(TLabel *Label, AnsiString Caption)
{
  Label->Font->Color = Caption == strError? clRed: clWindowText;
  Label->Caption = Caption;
}
