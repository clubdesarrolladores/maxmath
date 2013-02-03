//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fNuevaMatriz.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmNuevaMatriz *frmNuevaMatriz;
//---------------------------------------------------------------------------
__fastcall TfrmNuevaMatriz::TfrmNuevaMatriz(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmNuevaMatriz::updColsClick(TObject *Sender,
      TUDBtnType Button)
{
	grdValues->ColCount = updCols->Position;
}
//---------------------------------------------------------------------------
void __fastcall TfrmNuevaMatriz::updFilasClick(TObject *Sender,
      TUDBtnType Button)
{
	grdValues->RowCount = updFilas->Position;
}
//---------------------------------------------------------------------------

