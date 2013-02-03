//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fExpresion.h"
#include "fChild.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmExpresion *frmExpresion;
//---------------------------------------------------------------------------
__fastcall TfrmExpresion::TfrmExpresion(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
__fastcall TfrmExpresion::TfrmExpresion(TComponent* Owner, TFunciones *F):TForm(Owner)
{
  Funciones = F;
  Funciones->GetListaFunciones(cboFuncion->Items);
}
//---------------------------------------------------------------------------
void __fastcall TfrmExpresion::cboFuncionChange(TObject *Sender)
{
  int c, i;
  TInfoFuncion InfoFuncion = Funciones->Items[cboFuncion->ItemIndex];
  c = Count(InfoFuncion.Intervalo);
  cboExpresion->Items->Clear();
  for(i = 0; i < c; i++)
    cboExpresion->Items->Add(Find(InfoFuncion.Intervalo, i)->Info.Expresion);
  btnOk->Enabled = false;
}
//---------------------------------------------------------------------------
void __fastcall TfrmExpresion::cboExpresionChange(TObject *Sender)
{
  btnOk->Enabled = true;
}
//---------------------------------------------------------------------------
