//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fVectores.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmVectores *frmVectores;
//---------------------------------------------------------------------------
__fastcall TfrmVectores::TfrmVectores(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmVectores::FormCreate(TObject *Sender)
{
//	
}
//---------------------------------------------------------------------------
void __fastcall TfrmVectores::FormDestroy(TObject *Sender)
{
//
}
//---------------------------------------------------------------------------
void __fastcall TfrmVectores::FormClose(TObject *Sender,
      TCloseAction &Action)
{
	Action = caFree;
}
//---------------------------------------------------------------------------
