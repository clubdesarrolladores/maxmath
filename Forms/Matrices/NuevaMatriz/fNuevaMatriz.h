//---------------------------------------------------------------------------

#ifndef fNuevaMatrizH
#define fNuevaMatrizH
//---------------------------------------------------------------------------
#include <Forms.hpp>
#include <Classes.hpp>
#include <ComCtrls.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <Grids.hpp>
#include <StdCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmNuevaMatriz : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *grpMatrix;
	TGroupBox *grpValues;
	TButton *btnOk;
	TButton *btnCancel;
	TLabeledEdit *edtName;
	TLabel *lblFilas;
	TUpDown *updFilas;
	TEdit *edtFilas;
	TEdit *edtCols;
	TUpDown *updCols;
	TStringGrid *grdValues;
	TLabel *lblCols;
	void __fastcall updColsClick(TObject *Sender, TUDBtnType Button);
	void __fastcall updFilasClick(TObject *Sender, TUDBtnType Button);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmNuevaMatriz(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmNuevaMatriz *frmNuevaMatriz;
//---------------------------------------------------------------------------
#endif
