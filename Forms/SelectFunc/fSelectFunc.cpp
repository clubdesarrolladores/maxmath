//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fSelectFunc.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmSelectFunc *frmSelectFunc;
//---------------------------------------------------------------------------
__fastcall TfrmSelectFunc::TfrmSelectFunc(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmSelectFunc::cboFuncionesChange(TObject *Sender)
{
  btnAceptar->Enabled = cboFunciones->ItemIndex != -1;
}
//---------------------------------------------------------------------------

