//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fVectoresR3.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "MathGrapher"
#pragma resource "*.dfm"
TfrmVectoresR3 *frmVectoresR3;
//---------------------------------------------------------------------------
__fastcall TfrmVectoresR3::TfrmVectoresR3(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmVectoresR3::FormClose(TObject *Sender,
      TCloseAction &Action)
{
	Action = caFree;	
}
//---------------------------------------------------------------------------
