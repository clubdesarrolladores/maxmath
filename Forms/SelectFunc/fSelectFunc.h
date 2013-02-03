//---------------------------------------------------------------------------

#ifndef fSelectFuncH
#define fSelectFuncH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <StdCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmSelectFunc : public TForm
{
__published:	// IDE-managed Components
        TPanel *pnlFuncion;
        TComboBox *cboFunciones;
        TLabel *Label1;
        TButton *btnCancelar;
        TButton *btnAceptar;
        void __fastcall cboFuncionesChange(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TfrmSelectFunc(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmSelectFunc *frmSelectFunc;
//---------------------------------------------------------------------------
#endif
