//---------------------------------------------------------------------------

#ifndef nuevaRectaH
#define nuevaRectaH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmNuevaRecta : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *GroupBox1;
	TButton *Button1;
	TButton *Button2;
	TGroupBox *grpData;
	TComboBox *cboEcuacion;
	TLabeledEdit *edtP0x;
	TLabeledEdit *edtP0y;
	TLabeledEdit *edtP1x;
	TLabeledEdit *edtP1y;
	TLabeledEdit *edtax;
	TLabeledEdit *edtay;
	TLabeledEdit *edtA;
	TLabeledEdit *edtB;
	TLabeledEdit *edtm;
	TLabeledEdit *edtsa;
	TLabeledEdit *edtsb;
	TLabeledEdit *edtC;
	TLabeledEdit *edtName;
	TLabel *Label1;
	TGroupBox *GroupBox2;
	TColorBox *cboColor;
	TImageList *ilsGrosor;
	TComboBoxEx *cboGrosor;
	TComboBoxEx *cboTrazo;
	TImageList *ilsTrazo;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TGroupBox *GroupBox3;
	TCheckBox *chkvnormal;
	TCheckBox *chkvdirector;
	TCheckBox *chkshow;
	TBevel *Bevel1;
	void __fastcall cboEcuacionChange(TObject *Sender);
	void __fastcall inFocus(TObject *Sender);
	void __fastcall outFocus(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmNuevaRecta(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmNuevaRecta *frmNuevaRecta;
//---------------------------------------------------------------------------
#endif
