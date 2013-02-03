//---------------------------------------------------------------------------

#ifndef fConfiguracionH
#define fConfiguracionH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <ComCtrls.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <StdCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmConfiguracion : public TForm
{
__published:	// IDE-managed Components
        TPageControl *pagPaginas;
        TTabSheet *tabGeneral;
        TBevel *Bevel1;
        TBevel *Bevel2;
        TGroupBox *grpArchivo;
        TCheckBox *chkDeleteImport;
        TCheckBox *chkCheckWhiteColor;
        TGroupBox *GroupBox1;
        TCheckBox *chkTrayIcon;
        TButton *btnDefault;
        TButton *btnCancel;
        TButton *btnApply;
        TCheckBox *chkErrorArchivos;
        TCheckBox *chkVerificarAsociaciones;
        TCheckBox *chkDeleteFunction;
        void __fastcall OnChange(TObject *Sender);
        void __fastcall btnApplyClick(TObject *Sender);
        void __fastcall btnDefaultClick(TObject *Sender);
        void __fastcall FormActivate(TObject *Sender);
        void __fastcall btnCancelClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TfrmConfiguracion(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmConfiguracion *frmConfiguracion;
//---------------------------------------------------------------------------
#endif
