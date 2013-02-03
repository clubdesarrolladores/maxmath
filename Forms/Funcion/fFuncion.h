//---------------------------------------------------------------------------

#ifndef fFuncionH
#define fFuncionH
//---------------------------------------------------------------------------

#include "uIntervalo.h"
#include <Classes.hpp>
#include <ComCtrls.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include <Menus.hpp>
#include <StdCtrls.hpp>


const nFunciones = 17;
const AnsiString aFunciones[nFunciones] = {
                               "sin","cos","tg",
                               "arcsin","arccos","arctan",
                               "sinh","cosh","tanh",
                               "exp","abs","sqrt",
                               "ln"};
//---------------------------------------------------------------------------
class TfrmFuncion : public TForm
{
__published:	// IDE-managed Components
        TImageList *ilsGrosor;
        TPopupMenu *mnuFunciones;
        TMenuItem *Trigonomtricas1;
        TMenuItem *Trigonomtricasinversas1;
        TMenuItem *Trigonomtricashiperblicas1;
        TMenuItem *Logartmicas1;
        TMenuItem *Exponenciales1;
        TMenuItem *Otras1;
        TMenuItem *Seno1;
        TMenuItem *Coseno1;
        TMenuItem *Tangente1;
        TMenuItem *Arcoseno1;
        TMenuItem *Arcocoseno1;
        TMenuItem *Arcotangente1;
        TMenuItem *Senohiperblico1;
        TMenuItem *Cosenohiperblico1;
        TMenuItem *Tangentehiperblica1;
        TMenuItem *Logartmonatural1;
        TMenuItem *Exponencialbasee1;
        TMenuItem *Raizcuadrada1;
        TMenuItem *Valorabsoluto1;
  TComboBoxEx *ComboBoxEx1;
  TGroupBox *GroupBox1;
  TButton *btnAceptar;
  TEdit *edtValue;
  TButton *btnEvaluar;
  TButton *btnCancelar;
  TLabeledEdit *txtNombre;
  TListBox *lstIntervalos;
  TGroupBox *GroupBox2;
  TLabeledEdit *txtExpresion;
  TLabeledEdit *txtMin;
  TLabeledEdit *txtMax;
  TLabel *Label2;
  TComboBox *cboTipoGrafico;
  TLabel *Label3;
  TColorBox *clrColor;
  TLabel *Label4;
  TComboBox *cboGrosor;
  TBevel *Bevel2;
  TPaintBox *pntIntervalos;
  TLabel *Label5;
  TLabel *Label1;
  TButton *btnAplicar;
  TButton *btnEliminar;
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall pntIntervalosPaint(TObject *Sender);
        void __fastcall btnAplicarClick(TObject *Sender);
        void __fastcall btnEliminarClick(TObject *Sender);
        void __fastcall lstIntervalosClick(TObject *Sender);
        void __fastcall InFocus(TObject *Sender);
        void __fastcall OutFocus(TObject *Sender);
        void __fastcall cboGrosorDrawItem(TWinControl *Control, int Index,
          TRect &Rect, TOwnerDrawState State);
        void __fastcall btnAceptarClick(TObject *Sender);
        void __fastcall btnEvaluarClick(TObject *Sender);
        void __fastcall InsertarFuncion(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TfrmFuncion(TComponent* Owner);
        TIntervalo*Intervalos;
        void Actualizar(void);
};

bool IsDouble(AnsiString s)
{
  try{
    s.ToDouble();
    return true;
  }catch(...){
    return false;}
}
//---------------------------------------------------------------------------
extern PACKAGE TfrmFuncion *frmFuncion;
//---------------------------------------------------------------------------
#endif
