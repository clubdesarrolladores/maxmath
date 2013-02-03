//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fRectas.h"
#include "fMain.h"
#include "nuevaRecta.h"
#include "uRecta.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"

const AnsiString DefaultFileName = "Nuevo proyecto de rectas en R2";
TfrmRectas *frmRectas;
//---------------------------------------------------------------------------
__fastcall TfrmRectas::TfrmRectas(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmRectas::FormClose(TObject *Sender,
      TCloseAction &Action)
{
	Action = caFree;	
}

//---------------------------------------------------------------------------
void __fastcall TfrmRectas::actNuevaExecute(TObject *Sender)
{
	TfrmNuevaRecta *nr = new TfrmNuevaRecta(this);
    if(nr->ShowModal() == mrOk)
    {
    	TRecta::TPunto p;
        TRecta::TVectorDirector a;
    	TRecta::TPunto p1, p2;
        TRecta::TVectorNormal n;
        double A, B, C;
        double sa, sb;
    	TRecta *r;
    	switch(nr->cboEcuacion->ItemIndex)
        {
        	case 0: //canonica
                p.x = nr->edtP0x->Text.ToDouble();
                p.y = nr->edtP0y->Text.ToDouble();
                a.x = nr->edtax->Text.ToDouble();
                a.y = nr->edtay->Text.ToDouble();
            	r = new TRecta(p,a);
            break;
            case 1: //Ecuación dos puntos
                p1.x = nr->edtP0x->Text.ToDouble();
                p1.y = nr->edtP0y->Text.ToDouble();
                p2.x = nr->edtP1x->Text.ToDouble();
                p2.y = nr->edtP1y->Text.ToDouble();
            	r = new TRecta(p1,p2);
            break;
            case 2: //Ecuación general de la recta
                A = nr->edtA->Text.ToDouble();
                B = nr->edtB->Text.ToDouble();
                C = nr->edtC->Text.ToDouble();
            	r = new TRecta(A, B, C);
            break;
            case 3: //Ecuación normalizada de la recta
            break;
            case 4: //Ecuación paramétrica
                p.x = nr->edtP0x->Text.ToDouble();
                p.y = nr->edtP0y->Text.ToDouble();
                a.x = nr->edtax->Text.ToDouble();
                a.y = nr->edtay->Text.ToDouble();
            	r = new TRecta(p,a);
            break;
            case 5: //Ecuación punto y pendiente
                p.x = nr->edtP0x->Text.ToDouble();
                p.y = nr->edtP0y->Text.ToDouble();
            	r = new TRecta(p,nr->edtm->Text.ToDouble());
            break;
            case 6: //Ecuación punto y vector normal
                p.x = nr->edtP0x->Text.ToDouble();
                p.y = nr->edtP0y->Text.ToDouble();
                n.x = nr->edtA->Text.ToDouble();
                n.y = nr->edtB->Text.ToDouble();
            	r = new TRecta(p,n);
            break;
            case 7: //Ecuación segmentaria
                sa = nr->edtsa->Text.ToDouble();
                sb = nr->edtsb->Text.ToDouble();
                r = new TRecta(sa,sb);
            break;
            case 8: //Ecuación vectorial paramétrica
                p.x = nr->edtP0x->Text.ToDouble();
                p.y = nr->edtP0y->Text.ToDouble();
                a.x = nr->edtax->Text.ToDouble();
                a.y = nr->edtay->Text.ToDouble();
            	r = new TRecta(p,a);
            break;
        }
		strcpy(r->name, AnsiString(nr->edtName->Text).c_str());
        r->paint = nr->chkshow->Checked;
        r->vnormal = nr->chkvnormal->Checked;
        r->vdirector = nr->chkvdirector->Checked;
        r->style->Color = nr->cboColor->Selected;
        r->style->Width = nr->cboGrosor->ItemIndex + 1;
        r->style->Style = (TPenStyle)(nr->cboTrazo->ItemIndex);
    	rectas->Add(r);
        graficar();
    }
    delete nr;
}
//---------------------------------------------------------------------------
void __fastcall TfrmRectas::graficar()
{
	imgRectas->Picture->Bitmap->Height = imgRectas->Height;
	imgRectas->Picture->Bitmap->Width = imgRectas->Width;
    imgRectas->Canvas->FillRect(imgRectas->Canvas->ClipRect);

    int cx, cy, z;
	cx = imgRectas->Picture->Bitmap->Width/2;
	cy = imgRectas->Picture->Bitmap->Height/2;
	z = 10;

    imgRectas->Canvas->Pen->Color=clBlack;
    imgRectas->Canvas->Pen->Style = psSolid;
    imgRectas->Canvas->MoveTo(0,cy);
    imgRectas->Canvas->LineTo(imgRectas->Width,cy);
    imgRectas->Canvas->MoveTo(cx,0);
    imgRectas->Canvas->LineTo(cx,imgRectas->Height);
    for(int i = cx; i < imgRectas->Width; i+=z)
    {
        imgRectas->Canvas->MoveTo(i,cy-4);
        imgRectas->Canvas->LineTo(i,cy+4);
        imgRectas->Canvas->MoveTo(2*cx-i,cy-4);
        imgRectas->Canvas->LineTo(2*cx-i,cy+4);
    }
    for(int i = cy; i > 0; i-=z)
    {
        imgRectas->Canvas->MoveTo(cx-4, i);
        imgRectas->Canvas->LineTo(cx+4, i);
    }

    for(int i = 0; i < rectas->Count; ++i)
    	((TRecta*)rectas->Items[i])->graphic(imgRectas, cx, cy, z);
}
//---------------------------------------------------------------------------
void __fastcall TfrmRectas::FormResize(TObject *Sender)
{
  graficar();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRectas::FormCreate(TObject *Sender)
{
	rectas = new TList();
    Caption = DefaultFileName;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRectas::FormDestroy(TObject *Sender)
{
	for(int i = 0; i < rectas->Count; ++i)
    	delete rectas->Items[i];
	delete rectas;
}
//---------------------------------------------------------------------------


void __fastcall TfrmRectas::FormShow(TObject *Sender)
{
	graficar();
}
//---------------------------------------------------------------------------

