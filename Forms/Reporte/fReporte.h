//---------------------------------------------------------------------------

#ifndef fReporteH
#define fReporteH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <StdCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmReporte : public TForm
{
__published:	// IDE-managed Components
        TShape *shpHoja;
        TBevel *Bevel1;
        TButton *btnCerrar;
        TLabel *lblConfFx;
        TLabel *lblConfIntervaloFx;
        TLabel *lblConfGx;
        TLabel *lblConfIntervaloGx;
        TLabel *lblIngresoDirecto;
        TLabel *lblConfa;
        TLabel *lblConfb;
        TLabel *lblNombreFx;
        TLabel *lblNombreGx;
        TLabel *lblIntFx;
        TLabel *lblIntGx;
        TLabel *lblVala;
        TLabel *lblValb;
        TShape *Shape2;
        TLabel *lblLimSup;
        TLabel *lblLimInf;
        TLabel *lblLimIzq;
        TLabel *lblLimDer;
        TLabel *lblSimple;
        TLabel *lblValLimSup;
        TLabel *lblValLimInf;
        TLabel *lblValLimIzq;
        TLabel *lblValLimDer;
        TLabel *lblValSimple;
        TLabel *lblError;
private:	// User declarations
public:		// User declarations
        __fastcall TfrmReporte(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmReporte *frmReporte;
//---------------------------------------------------------------------------
#endif
