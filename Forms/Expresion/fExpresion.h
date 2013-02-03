//---------------------------------------------------------------------------

#ifndef fExpresionH
#define fExpresionH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>

#include "uFuncion.h"
//---------------------------------------------------------------------------
class TfrmExpresion : public TForm
{
__published:
        TGroupBox *GroupBox1;
        TGroupBox *GroupBox2;
        TButton *btnOk;
        TButton *Button2;
        TComboBox *cboFuncion;
        TComboBox *cboExpresion;
        void __fastcall cboFuncionChange(TObject *Sender);
        void __fastcall cboExpresionChange(TObject *Sender);
private:
        TFunciones* Funciones;
public:
        __fastcall TfrmExpresion(TComponent* Owner);
        __fastcall TfrmExpresion(TComponent* Owner, TFunciones *F);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmExpresion *frmExpresion;
//---------------------------------------------------------------------------
#endif
