//---------------------------------------------------------------------------

#ifndef fPropVisorH
#define fPropVisorH
//---------------------------------------------------------------------------
#include <Buttons.hpp>
#include <Classes.hpp>
#include <ComCtrls.hpp>
#include <Controls.hpp>
#include <Dialogs.hpp>
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include <StdCtrls.hpp>

#include "CSPIN.h"
#include "Designer2D.h"
#include <Graphics.hpp>

//---------------------------------------------------------------------------
class TfrmPropVisor : public TForm
{
__published:	// IDE-managed Components
        TPanel *pnlCaracteristicas;
        TPageControl *pgcCaracteristicas;
        TTabSheet *shtEjes;
        TTabSheet *shtMarcas;
        TTabSheet *shtCuadricula;
        TImageList *imgLista;
        TGroupBox *grpEjeX;
        TGroupBox *grpEjey;
        TCheckBox *chkEjey;
        TCheckBox *chkEjex;
        TLabel *lblDirEjeX;
        TLabel *lblDirEjeY;
        TComboBox *cboDirEjeX;
        TComboBox *cboDirEjeY;
        TLabel *lblEstiloX;
        TLabel *lblGrosorX;
        TLabel *lblColorX;
        TColorBox *cbxColorEjeX;
        TLabel *lblNameX;
        TEdit *txtEjeXNombre;
        TComboBox *cboEstiloX;
        TSpeedButton *btnFontNameAxeX;
        TBevel *bvl2;
        TLabel *lblEstiloY;
        TLabel *lblGrosorY;
        TLabel *lblColorY;
        TColorBox *cbxColorEjeY;
        TLabel *lblNameY;
        TEdit *txtEjeYNombre;
        TComboBox *cboEstiloY;
        TSpeedButton *btnFontNameAxeY;
        TBevel *bvl3;
        TGroupBox *grpMarksX;
        TLabel *lblPasoMarksX;
        TCheckBox *chkMarksX;
        TGroupBox *grpGridX;
        TLabel *lblStyleGridX;
        TLabel *lblWidthGridX;
        TLabel *lblColorGridX;
        TLabel *lblPasoGridX;
        TColorBox *cboColorGridX;
        TComboBox *cboStyleGridX;
        TGroupBox *grpGridY;
        TLabel *lblStyleGridY;
        TLabel *lblWidthGridY;
        TLabel *lblColorGridY;
        TLabel *lblPasoGridY;
        TColorBox *cboColorGridY;
        TComboBox *cboStyleGridY;
        TCheckBox *chkGridX;
        TCheckBox *chkGridY;
        TLabel *lblLongMarksX;
        TGroupBox *grpLabelsX;
        TCheckBox *chkNumX;
        TLabel *lblPasoNumX;
        TLabel *lblTextNumX;
        TEdit *edtAddTextX;
        TSpeedButton *btnFontNumX;
        TCheckBox *chkSobreX;
        TBevel *bvl1;
        TFontDialog *fntFuente;
        TCheckBox *chkMostrarPuntero;
        TBevel *bvl4;
        TBevel *bvl5;
        TGroupBox *grpLabelsY;
        TLabel *lblPasoNumY;
        TLabel *lblTextNumY;
        TSpeedButton *btnFontNumY;
        TEdit *edtAddTextY;
        TCheckBox *chkDerY;
        TGroupBox *grpMarksY;
        TLabel *lblPasoMarksY;
        TLabel *lblLongMarksY;
        TCheckBox *chkMarksY;
        TCheckBox *chkNumY;
        TTabSheet *TabSheet1;
        TDesigner2D *dsgPrevia;
        TStaticText *lblVistaPrevia;
        TLabel *lblColorFondo;
        TColorBox *cbxFondo;
        TLabel *lblZoomX;
        TLabel *lblZoomY;
        TCSpinEdit *edtGrosorX;
        TCSpinEdit *edtGrosorY;
        TEdit *edtZoomX;
        TEdit *edtMarksLongX;
        TEdit *edtMarksStepY;
        TEdit *edtMarksLongY;
        TEdit *edtZoomY;
        TEdit *edtPasoGridX;
        TEdit *edtPasoGridY;
        TEdit *edtWidthGridX;
        TEdit *edtWidthGridY;
        TEdit *edtLabelStepX;
        TEdit *edtLabelStepY;
        TCSpinButton *CSpinButton2;
        TCSpinButton *CSpinButton3;
        TCSpinButton *CSpinButton4;
        TCSpinButton *CSpinButton5;
        TCSpinButton *CSpinButton6;
        TCSpinButton *CSpinButton7;
        TCSpinButton *CSpinButton8;
        TCSpinButton *CSpinButton9;
        TCSpinButton *CSpinButton1;
        TCSpinButton *CSpinButton10;
        TCSpinButton *CSpinButton11;
        TCSpinButton *CSpinButton12;
        TButton *btnAceptar;
        TButton *btnCancelar;
        TBevel *Bevel1;
        TOpenDialog *dlgOpenDSG;
        TSaveDialog *dlgSaveDSG;
        TGroupBox *GroupBox1;
        TButton *btnSave;
        TLabel *lblAutoOpciones;
        TComboBox *cboAutoOpciones;
        TEdit *edtMarksStepX;
        void __fastcall cbxFondoChange(TObject *Sender);
        void __fastcall chkEjexClick(TObject *Sender);
        void __fastcall cboDirEjeXChange(TObject *Sender);
        void __fastcall cboDirEjeYChange(TObject *Sender);
        void __fastcall chkEjeyClick(TObject *Sender);
        void __fastcall cbxColorEjeXChange(TObject *Sender);
        void __fastcall cbxColorEjeYChange(TObject *Sender);
        void __fastcall txtEjeXNombreChange(TObject *Sender);
        void __fastcall txtEjeYNombreChange(TObject *Sender);
        void __fastcall btnFontNameAxeXClick(TObject *Sender);
        void __fastcall edtGrosorXChange(TObject *Sender);
        void __fastcall chkMostrarPunteroClick(TObject *Sender);
        void __fastcall btnFontNameAxeYClick(TObject *Sender);
        void __fastcall edtGrosorYChange(TObject *Sender);
        void __fastcall chkSobreXClick(TObject *Sender);
        void __fastcall chkDerYClick(TObject *Sender);
        void __fastcall chkNumXClick(TObject *Sender);
        void __fastcall chkNumYClick(TObject *Sender);
        void __fastcall edtLabelStepXChange(TObject *Sender);
        void __fastcall edtLabelStepYChange(TObject *Sender);
        void __fastcall edtAddTextXChange(TObject *Sender);
        void __fastcall edtAddTextYChange(TObject *Sender);
        void __fastcall edtMarksStepXChange(TObject *Sender);
        void __fastcall edtMarksStepYChange(TObject *Sender);
        void __fastcall edtMarksLongXChange(TObject *Sender);
        void __fastcall edtMarksLongYChange(TObject *Sender);
        void __fastcall chkMarksXClick(TObject *Sender);
        void __fastcall chkMarksYClick(TObject *Sender);
        void __fastcall FormActivate(TObject *Sender);
        void __fastcall btnFontNumXClick(TObject *Sender);
        void __fastcall btnFontNumYClick(TObject *Sender);
        void __fastcall chkGridXClick(TObject *Sender);
        void __fastcall chkGridYClick(TObject *Sender);
        void __fastcall edtPasoGridXChange(TObject *Sender);
        void __fastcall edtPasoGridYChange(TObject *Sender);
        void __fastcall edtWidthGridXChange(TObject *Sender);
        void __fastcall edtWidthGridYChange(TObject *Sender);
        void __fastcall cboColorGridXChange(TObject *Sender);
        void __fastcall cboColorGridYChange(TObject *Sender);
        void __fastcall edtZoomXChange(TObject *Sender);
        void __fastcall edtZoomYChange(TObject *Sender);
        void __fastcall cboAutoOpcionesChange(TObject *Sender);
        void __fastcall UpClickDbl(TObject *Sender);
        void __fastcall DownClickDbl(TObject *Sender);
        void __fastcall KeyPressDbl(TObject *Sender, char &Key);
        void __fastcall DownClickInt(TObject *Sender);
        void __fastcall UpClickInt(TObject *Sender);
        void __fastcall KeyPressInt(TObject *Sender, char &Key);
        void __fastcall cboEstiloDrawItems(TWinControl *Control, int Index,
          TRect &Rect, TOwnerDrawState State);
        void __fastcall cboEstiloXChange(TObject *Sender);
        void __fastcall cboEstiloYChange(TObject *Sender);
        void __fastcall cboStyleGridXChange(TObject *Sender);
        void __fastcall cboStyleGridYChange(TObject *Sender);
        void __fastcall btnSaveClick(TObject *Sender);
        void __fastcall FormCreate(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TfrmPropVisor(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmPropVisor *frmPropVisor;
//---------------------------------------------------------------------------
#endif
