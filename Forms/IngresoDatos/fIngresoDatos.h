//---------------------------------------------------------------------------

#ifndef fIngresoDatosH
#define fIngresoDatosH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <ComCtrls.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include <StdCtrls.hpp>

#include "uFuncion.h"

const AnsiString strError = "Error!";

enum TOperacion {opDerivada,
                 op2Derivada,
                 opTangente,
                 opNormal,
                 opSecante,
                 opArea,
                 opLongArco,
                 opAreaLatSupRev,
                 opVolDisco,
                 opVolTubos,
                 opVolArandelas,
                 opCGravedad,
                 opTaylor,   
                 opArea2Curvas,
                 opEstCompleto,
                 opIntersEjes,
                 opParidad,
                 opPC1eraDer,
                 opIntCrecDecrec,
                 opMaxMin,
                 opPC2daDer,
                 opIntConcConv,
                 opPtosInflex,
                 opAsintotas,
                 opInters2Curvas,
                 opMuestreo
                 };

//---------------------------------------------------------------------------
class TfrmIngresoDatos : public TForm
{
__published:	// IDE-managed Components
        TPanel *pnlEntradaDatos;
        TPanel *pnlFooter;
        TPanel *pnlDatos;
        TGroupBox *grpFunciones;
        TLabel *lblFx;
        TLabel *lblGx;
        TComboBox *cboGx;
        TComboBox *cboFx;
        TGroupBox *grpIntervalos;
        TLabel *lblIntervaloFx;
        TLabel *lblIntervaloGx;
        TRadioButton *radDirecto;
        TLabeledEdit *txta;
        TLabeledEdit *txtb;
        TComboBox *cboIntervaloFx;
        TRadioButton *radIntervalo;
        TComboBox *cboIntervaloGx;
        TGroupBox *grpSimple;
        TPanel *pnlCalculos;
        TBevel *bvl2;
        TButton *btnReporte;
        TButton *btnCalcular;
        TProgressBar *prgProgreso;
        TButton *btnPorDefecto;
        TButton *btnCerrar;
        TImageList *ImageList;
        TLabel *lblSimple;
        TEdit *txtSimple;
        void __fastcall cboFxChange(TObject *Sender);
        void __fastcall cboGxChange(TObject *Sender);
        void __fastcall InFocusTxt(TObject *Sender);
        void __fastcall InFocusCbo(TObject *Sender);
        void __fastcall OutFocusCbo(TObject *Sender);
        void __fastcall OutFocusTxt(TObject *Sender);
        void __fastcall radDirectoClick(TObject *Sender);
        void __fastcall FormActivate(TObject *Sender);
        void __fastcall btnCalcularClick(TObject *Sender);
        void __fastcall btnReporteClick(TObject *Sender);
        void __fastcall btnPorDefectoClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        TFunciones *Funciones;
        bool DosFunciones;
        bool Intervalos;
        bool DatoSimple;
        bool DatoSimplePositivo;
        bool Interseccion;
        __fastcall TfrmIngresoDatos(TComponent* Owner);
        bool __fastcall GetDatos(int *Fx, int *Gx, long double *a, long double *b, long double *e);
        TInfoFuncion F, G;
        long double val;
        void SetFont(TLabel *Label, AnsiString Caption);
};

//---------------------------------------------------------------------------
extern PACKAGE TfrmIngresoDatos *frmIngresoDatos;
//---------------------------------------------------------------------------
#endif
