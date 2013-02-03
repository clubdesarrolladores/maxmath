//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fLimite.h"
#include "fExpresion.h"
#include "uLimite.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmLimite *frmLimite;
//---------------------------------------------------------------------------
__fastcall TfrmLimite::TfrmLimite(TComponent* Owner):TForm(Owner)
{
}
//---------------------------------------------------------------------------
__fastcall TfrmLimite::TfrmLimite(TComponent* Owner, TFunciones *Funciones):TForm(Owner)
{
  this->Funciones = Funciones;
}
//---------------------------------------------------------------------------

bool is_double(AnsiString s)
{
  // 0-9.-E
  try{
    s.ToDouble();
    return true;
  }catch(...){
  }
  return false;
}

bool GetVariable(AnsiString s, long double &a){
  if(Trim(s).UpperCase() == "INFINITO")
    a = 1000000;//Infinity;
  else
    if(Trim(s).UpperCase() == "INFINITO NEGATIVO")
      a = -1000000;//NegInfinity;
    else
      if(is_double(s))
        a = s.ToDouble();
      else
        return false;
  return true;
}

void __fastcall TfrmLimite::btnCalcularClick(TObject *Sender)
{
  btnCalcular->Enabled = false;
  const long double M = 1000000;
  long double a, l, li, ld;

  //IsInfinite();
  //Sign()
  //IsNan();
  //IsZero()

  /*
  var x = getVar(x);
  var e = getExp(e);
  var l, ll, rl;
  var r = Limit(e, x, l, ll, lr);
  (r = limit) --> "Limite = $l"
  (r = lr_limit) --> "Limite izquierdo = $ll", "Limite derecho = $rl"
  (r = l_limit) --> "Limite izquierdo = $ll"
  (r = l_limit) --> "Limite derecho = $rl"

  */

  TLimite Limite;

  if(!GetVariable(edta->Text, a)){
	Application->MessageBox(L"Debe ingresar un número real válido o algunas de las opciones predefinidas", L"Error de definición", MB_OK + MB_ICONERROR);
    btnCalcular->Enabled = true;
    return;
  }
  /*
  try{
    a = edta->Text.ToDouble();
  }catch(...){
    if(Trim(edta->Text).UpperCase() == "INFINITO")
      a = Infinity; //a = M;
    else
      if( Trim(edta->Text).UpperCase() == "INFINITO NEGATIVO" )
        a = NegInfinity; //a = - M;
      else{
        Application->MessageBox("Debe ingresar un número real válido o algunas de las opciones predefinidas", "Error de definición", MB_OK + MB_ICONERROR);
        btnCalcular->Enabled = true;
        return;}
  }
  */


  lstResultados->Items->Clear();
  if(Limite.Limite(edtExpresion->Text, a, l)){
    if(IsInfinite(l)){
      AnsiString infinito = Sign((double)l)>0?"":"negativo";
      lstResultados->Items->Add("Limite = Infinito " + infinito);
    }else
      lstResultados->Items->Add("Limite = " + FloatToStr(l));
  }else
    if(Limite.Limite(edtExpresion->Text, a, l, li, ld))
      lstResultados->Items->Add("Limite = " + FloatToStr(l));
    else{
      lstResultados->Items->Add("Limite = No Existe");
      if(li > M)
        lstResultados->Items->Add("Limite Izquierdo = Infinito");
      else
        if(li < -M)
          lstResultados->Items->Add("Limite Izquierdo = Infinito negativo");
        else
          lstResultados->Items->Add("Limite Izquierdo = " + FloatToStr(li));
      if(ld > M)
        lstResultados->Items->Add("Limite Derecho = Infinito");
      else
        if(ld < -M)
          lstResultados->Items->Add("Limite Derecho = Infinito negativo");
        else
          lstResultados->Items->Add("Limite Derecho = " + FloatToStr(ld));
    }
  btnCalcular->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLimite::btnExpresionesClick(TObject *Sender)
{
  TfrmExpresion *E = new TfrmExpresion(this, Funciones);
  if(E->ShowModal() == mrOk)
    edtExpresion->Text = E->cboExpresion->Text;
  delete E;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLimite::btnCloseClick(TObject *Sender)
{
  Close();  
}
//---------------------------------------------------------------------------

