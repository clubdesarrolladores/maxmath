//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fSplash.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmSplash *frmSplash;
//---------------------------------------------------------------------------
__fastcall TfrmSplash::TfrmSplash(TComponent* Owner)
        : TForm(Owner)
{
  ControlStyle << csOpaque;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSplash::UpdateProgress(AnsiString Modulo, int Progreso)
{
  lblModulo->Caption = Modulo;
  pgbProgreso->StepBy(Progreso);
  Refresh();
  Sleep(Progreso*10);
}
