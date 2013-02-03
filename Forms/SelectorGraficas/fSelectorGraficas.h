//---------------------------------------------------------------------------

#ifndef fSelectorGraficasH
#define fSelectorGraficasH
//---------------------------------------------------------------------------
#include <Buttons.hpp>
#include <CheckLst.hpp>
#include <Classes.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <StdCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmSelectorGraficas : public TForm
{
__published:	// IDE-managed Components
        TPanel *pnlBody;
        TPanel *pnlFooter;
        TBitBtn *btnAceptar;
        TBitBtn *btnCancelar;
        TCheckListBox *lstFunciones;
        TStaticText *lblFunciones;
        void __fastcall lstFuncionesClickCheck(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TfrmSelectorGraficas(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmSelectorGraficas *frmSelectorGraficas;
//---------------------------------------------------------------------------
#endif
