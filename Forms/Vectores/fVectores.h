//---------------------------------------------------------------------------

#ifndef fVectoresH
#define fVectoresH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
//---------------------------------------------------------------------------
class TfrmVectores : public TForm
{
__published:	// IDE-managed Components
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall FormDestroy(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmVectores(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmVectores *frmVectores;
//---------------------------------------------------------------------------
#endif
