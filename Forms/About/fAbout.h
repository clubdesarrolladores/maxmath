//---------------------------------------------------------------------------

#ifndef fAboutH
#define fAboutH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <StdCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmAbout : public TForm
{
__published:	// IDE-managed Components
        TLabel *lblVersion;
        TLabel *lblComentario;
        TLabel *lblCopyrigth;
        TButton *btnClose;
        TBevel *Bevel1;
        TLabel *lblUser;
  TLabel *lblMemoria;
        TImage *Image2;
        void __fastcall FormCreate(TObject *Sender);
  void __fastcall lblComentarioClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TfrmAbout(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmAbout *frmAbout;
//---------------------------------------------------------------------------
#endif
