//---------------------------------------------------------------------------

#ifndef fSplashH
#define fSplashH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <StdCtrls.hpp>
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmSplash : public TForm
{
__published:
  TImage *Image;
  TLabel *lblCargando;
  TLabel *lblModulo;
  TProgressBar *pgbProgreso;
private:
public:
        __fastcall TfrmSplash(TComponent* Owner);
        void __fastcall UpdateProgress(AnsiString Modulo, int Progreso);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmSplash *frmSplash;
//---------------------------------------------------------------------------
#endif
