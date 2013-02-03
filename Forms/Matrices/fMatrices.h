//---------------------------------------------------------------------------

#ifndef fMatricesH
#define fMatricesH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ActnList.hpp>
#include <Menus.hpp>
#include <ExtCtrls.hpp>
#include <Grids.hpp>
//---------------------------------------------------------------------------
class TfrmMatrices : public TForm
{
__published:	// IDE-managed Components
	TMainMenu *mnuMatrices;
	TActionList *alsMatrices;
	TPanel *pnlInfo;
	TPanel *Panel2;
	TSplitter *splInfo;
	TStringGrid *grdM1;
	TStringGrid *StringGrid2;
	TStringGrid *StringGrid3;
	TSplitter *Splitter2;
	TSplitter *Splitter3;
	TMenuItem *Matrices1;
	TMenuItem *Nueva1;
	TGroupBox *GroupBox1;
	TListBox *lstMatrices;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall FormDestroy(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall Nueva1Click(TObject *Sender);
	void __fastcall lstMatricesClick(TObject *Sender);
private:	// User declarations
	TList *matrices;
public:		// User declarations
	__fastcall TfrmMatrices(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmMatrices *frmMatrices;
//---------------------------------------------------------------------------
#endif
