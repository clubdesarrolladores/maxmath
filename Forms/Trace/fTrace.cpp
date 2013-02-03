//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fTrace.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmTrace *frmTrace;
//---------------------------------------------------------------------------
__fastcall TfrmTrace::TfrmTrace(TComponent* Owner)
        : TForm(Owner)
{
  lblx->ControlStyle = lblx->ControlStyle << csOpaque;
  lbly->ControlStyle = lbly->ControlStyle << csOpaque;  
}
//---------------------------------------------------------------------------
void __fastcall TfrmTrace::PosXChange(TObject *Sender)
{
  const Offset = 1;
  TEval Eval;
  TIntervalo *Info;
  long double value, y;
  int px;
  if(cboFuncion->ItemIndex != -1){
    px = (long double)(PosX->Position*(Dsg->Width-2*Offset))/((long double) PosX->Max);
    value = Dsg->ScreenXToRealX(px);
    lblx->Caption = FloatToStr(value);
    Info = Find(F->Items[cboFuncion->ItemIndex].Intervalo, value);
    if( Info != NULL ){
      PosX->Hint = Info->Info.Expresion;
      Eval.Evaluate(Info->Info.Expresion);
      y = Eval.Value(value);
      switch(Eval.LastError()){
        case eNoError:  lbly->Caption = FloatToStr(y);         break;
        case eDivCero:  lbly->Caption = "División sobre cero"; break;
        case eDominio:  lbly->Caption = "Fuera del dominio";   break;
        case eSintaxis: lbly->Caption = "Error de sintaxis";   break;
      }
      Dsg->Trace(px, Dsg->RealYToScreenY(y), first);
    }else{
      PosX->Hint    = "0";
      lbly->Caption = "0";
      Dsg->Trace(px, Dsg->RealYToScreenY(0), first);
    }
    first = false;
  }else{
    lblx->Caption = "Función no definida";
    lbly->Caption = "Función no definida";
  }
}
//---------------------------------------------------------------------------

void __fastcall TfrmTrace::cboFuncionChange(TObject *Sender)
{
  first = true;
  Dsg->ModificadoPlano = true; 
}
//---------------------------------------------------------------------------
                                     
void __fastcall TfrmTrace::FormClose(TObject *Sender, TCloseAction &Action)
{
  Dsg->ModificadoPlano = true;
}
//---------------------------------------------------------------------------

