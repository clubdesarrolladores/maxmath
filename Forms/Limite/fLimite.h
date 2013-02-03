//---------------------------------------------------------------------------

#ifndef fLimiteH
#define fLimiteH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <StdCtrls.hpp>

#include "uFuncion.h"

//---------------------------------------------------------------------------
class TfrmLimite : public TForm
{
__published:
        TButton *btnClose;
        TButton *btnCalcular;
        TListBox *lstResultados;
        TBevel *Bevel2;
        TLabel *Label2;
        TLabel *Label3;
        TLabel *Label4;
        TBevel *Bevel5;
        TEdit *edtExpresion;
        TButton *btnExpresiones;
  TComboBox *edta;
        void __fastcall btnCalcularClick(TObject *Sender);
        void __fastcall btnExpresionesClick(TObject *Sender);
  void __fastcall btnCloseClick(TObject *Sender);
private:
        TFunciones *Funciones;
public:
        __fastcall TfrmLimite(TComponent* Owner);
        __fastcall TfrmLimite(TComponent* Owner, TFunciones *Funciones);

};
//---------------------------------------------------------------------------
extern PACKAGE TfrmLimite *frmLimite;
//---------------------------------------------------------------------------
#endif
