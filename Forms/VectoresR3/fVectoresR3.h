//---------------------------------------------------------------------------

#ifndef fVectoresR3H
#define fVectoresR3H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "MathGrapher.h"
//---------------------------------------------------------------------------
class TfrmVectoresR3 : public TForm
{
__published:	// IDE-managed Components
	TMathGrapher *MathGrapher1;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmVectoresR3(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmVectoresR3 *frmVectoresR3;
//---------------------------------------------------------------------------
#endif
