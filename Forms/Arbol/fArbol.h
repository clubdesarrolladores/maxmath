//---------------------------------------------------------------------------

#ifndef fArbolH
#define fArbolH
//---------------------------------------------------------------------------

#include "uFuncion.h"
#include <Classes.hpp>
#include <ComCtrls.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include <StdCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmArbol : public TForm
{
__published:	// IDE-managed Components
        TPanel *Panel1;
        TTreeView *treeFunciones;
        TStaticText *lblArbol;
        TPanel *Panel2;
        TGroupBox *GroupBox2;
        TLabel *lblTitle1;
        TLabel *lblTitle2;
        TLabel *lblTitle3;
        TLabel *lblInfo2;
        TLabel *lblInfo3;
        TImageList *imgArbol;
        TBevel *Bevel2;
        TBevel *Bevel3;
        TBevel *Bevel4;
        TEdit *txtInfo1;
        TButton *btnClose;
        TLabel *lblTitle4;
        TBevel *Bevel1;
        TBevel *Bevel5;
        TLabel *lblTitle5;
        TPaintBox *pbxMuestra;
        TLabel *lblInfo4;
        void __fastcall treeFuncionesClick(TObject *Sender);
        void __fastcall FormActivate(TObject *Sender);
        void __fastcall treeFuncionesKeyUp(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall pbxMuestraPaint(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TfrmArbol(TComponent* Owner);
        TFunciones *Funciones;
        void __fastcall CrearArbol(void);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmArbol *frmArbol;
//---------------------------------------------------------------------------
#endif
