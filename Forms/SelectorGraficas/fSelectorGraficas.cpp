//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fSelectorGraficas.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmSelectorGraficas *frmSelectorGraficas;
//---------------------------------------------------------------------------
__fastcall TfrmSelectorGraficas::TfrmSelectorGraficas(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TfrmSelectorGraficas::lstFuncionesClickCheck(
      TObject *Sender)
{
  btnAceptar->Enabled = true;
}
//---------------------------------------------------------------------------

