//---------------------------------------------------------------------------

#ifndef fTraceH
#define fTraceH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <StdCtrls.hpp>

#include "uFuncion.h"
#include "Designer2D.h"
//---------------------------------------------------------------------------
class TfrmTrace : public TForm
{
__published:
        TGroupBox *GroupBox1;
        TComboBox *cboFuncion;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *lblx;
        TLabel *lbly;
  TScrollBar *PosX;
        TBevel *Bevel1;
        TBevel *Bevel2;
        TBevel *Bevel3;
        TButton *btnClose;
        void __fastcall PosXChange(TObject *Sender);
        void __fastcall cboFuncionChange(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:
        bool first;
public:
        __fastcall TfrmTrace(TComponent* Owner);
        TFunciones *F;
        TDesigner2D *Dsg;
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmTrace *frmTrace;
//---------------------------------------------------------------------------
#endif
