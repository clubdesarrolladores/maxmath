//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "nuevaRecta.h"
#include "uRecta.h"
#include <typeinfo.h>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmNuevaRecta *frmNuevaRecta;
//---------------------------------------------------------------------------
__fastcall TfrmNuevaRecta::TfrmNuevaRecta(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TfrmNuevaRecta::cboEcuacionChange(TObject *Sender)
{
	edtP0x->Enabled = false;
    edtP0y->Enabled = false;
    edtP1x->Enabled = false;
    edtP1y->Enabled = false;
    edtax->Enabled = false;
	edtay->Enabled = false;
    edtA->Enabled = false;
    edtB->Enabled = false;
    edtC->Enabled = false;
    edtm->Enabled = false;
    edtsa->Enabled = false;
    edtsb->Enabled = false;

	switch(cboEcuacion->ItemIndex)
    {
    	case 0: //Ecuación canónica
           edtP0x->Enabled = true;
           edtP0y->Enabled = true;
           edtax->Enabled = true;
           edtay->Enabled = true;
        break;
        case 1: //Ecuación dos puntos
           edtP0x->Enabled = true;
           edtP0y->Enabled = true;
           edtP1x->Enabled = true;
           edtP1y->Enabled = true;
        break;
        case 2: //Ecuación general de la recta
           edtA->Enabled = true;
           edtB->Enabled = true;
           edtC->Enabled = true;
        break;
        case 3: //Ecuación normalizada de la recta
        break;
        case 4: //Ecuación paramétrica
           edtP0x->Enabled = true;
           edtP0y->Enabled = true;
           edtax->Enabled = true;
           edtay->Enabled = true;
        break;
        case 5: //Ecuación punto y pendiente
           edtP0x->Enabled = true;
           edtP0y->Enabled = true;
           edtm->Enabled = true;
        break;
        case 6: //Ecuación punto y vector normal
           edtP0x->Enabled = true;
           edtP0y->Enabled = true;
           edtA->Enabled = true;
           edtB->Enabled = true;
        break;
        case 7: //Ecuación segmentaria
           edtsa->Enabled = true;
           edtsb->Enabled = true;
        break;
        case 8: //Ecuación vectorial paramétrica
           edtP0x->Enabled = true;
           edtP0y->Enabled = true;
           edtax->Enabled = true;
           edtay->Enabled = true;
        break;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmNuevaRecta::inFocus(TObject *Sender)
{
  ((TLabeledEdit*)Sender)->Color = clHighlight;
  ((TLabeledEdit*)Sender)->Font->Color = clHighlightText;
}
//---------------------------------------------------------------------------

void __fastcall TfrmNuevaRecta::outFocus(TObject *Sender)
{
  ((TLabeledEdit*)Sender)->Color = clWindow;
  ((TLabeledEdit*)Sender)->Font->Color = clWindowText;
}
//---------------------------------------------------------------------------

void __fastcall TfrmNuevaRecta::Button1Click(TObject *Sender)
{
    ModalResult = mrOk;
    for(int i = 0; i < grpData->ControlCount; ++i)
    {
        if(grpData->Controls[i]->ClassNameIs("TLabeledEdit"))
        {
            TLabeledEdit* le = dynamic_cast<TLabeledEdit*>(grpData->Controls[i]);
            if(le->Enabled)
                try
                {
                    le->Text.ToDouble();
                }
                catch(...)
				{
					Application->MessageBox(
						L"Debe ingresar todos los datos solitados",
						L"Error",
						MB_OK+MB_ICONERROR
					);
                    ModalResult = mrNone;
                    le->SetFocus();
                    return;
                }
        }
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmNuevaRecta::FormCreate(TObject *Sender)
{
	cboGrosor->ItemIndex = 0;
	cboTrazo->ItemIndex = 0;
}
//---------------------------------------------------------------------------

