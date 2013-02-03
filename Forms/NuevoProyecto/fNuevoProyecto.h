//---------------------------------------------------------------------------

#ifndef fNuevoProyectoH
#define fNuevoProyectoH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <ComCtrls.hpp>
#include <ImgList.hpp>
//---------------------------------------------------------------------------
class TfrmNuevoProyecto : public TForm
{
__published:	// IDE-managed Components
	TButton *btnCancel;
	TGroupBox *GroupBox1;
	TListView *lstProjets;
	TPanel *pnlInfo;
	TLabel *lblInfo;
	TImageList *imgProjectsSmall;
	TImageList *imgProjectsStates;
	TImageList *imgProjectsLarge;
	void __fastcall lstProjetsDblClick(TObject *Sender);
	void __fastcall lstProjetsSelectItem(TObject *Sender, TListItem *Item,
          bool Selected);
	void __fastcall FormCreate(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmNuevoProyecto(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmNuevoProyecto *frmNuevoProyecto;
//---------------------------------------------------------------------------
#endif
