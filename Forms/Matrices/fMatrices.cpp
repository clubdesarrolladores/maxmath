//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fMatrices.h"
#include "fMain.h"
#include "uMatrix.h"
#include "fNuevaMatriz.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmMatrices *frmMatrices;
//---------------------------------------------------------------------------
__fastcall TfrmMatrices::TfrmMatrices(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmMatrices::FormCreate(TObject *Sender)
{
	matrices = new TList();
//
	maxmath::TMatrix<double> n;
	maxmath::TMatrix<double> n2(3);
	maxmath::TMatrix<double> n3(n2);
	maxmath::TMatrix<double> m(2, 2);
	m.Items[0][0] = 1;
	m.Items[0][1] = 2;
	m.Items[1][0] = 3;
	m.Items[1][1] = 4;
	m = -m;
	AnsiString s;
	for(maxmath::TIndex i = 0; i < m.Rows; ++i)
	{
		for(maxmath::TIndex j = 0; j < m.Cols; ++j)
			s += FloatToStr(m.Items[i][j]) + " ";
		s += "\n";
	}
	ShowMessage(s);
}
//---------------------------------------------------------------------------
void __fastcall TfrmMatrices::FormDestroy(TObject *Sender)
{
	for(int i = 0; i < matrices->Count; ++i)
    	delete matrices->Items[i];
	delete matrices;
}
//---------------------------------------------------------------------------
void __fastcall TfrmMatrices::FormClose(TObject *Sender,
      TCloseAction &Action)
{
	Action = caFree;
}
//---------------------------------------------------------------------------
void __fastcall TfrmMatrices::Nueva1Click(TObject *Sender)
{
	TfrmNuevaMatriz *f = new TfrmNuevaMatriz(this);
    if(f->ShowModal() == mrOk)
	{
		maxmath::TMatrix<double> *m = new maxmath::TMatrix<double>(f->updFilas->Position, f->updCols->Position);
        m->setName(AnsiString(f->edtName->Text).c_str());
		for(maxmath::TIndex i = 0; i < m->Rows; ++i)
        	for(maxmath::TIndex j = 0; j < m->Cols; ++j)
            	m->Items[i][j] = f->grdValues->Cells[j][i].ToDouble();
		matrices->Add(m);
    }
    delete f;
    lstMatrices->Clear();
    for(int i = 0; i < matrices->Count; ++i)
    {
    	maxmath::TMatrix<double> *m = ((maxmath::TMatrix<double>*)matrices->Items[i]);
    	lstMatrices->Items->Add(AnsiString(m->getName()) + " [" + IntToStr((int)m->Rows) + ", " + IntToStr((int)m->Cols) + "]");
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmMatrices::lstMatricesClick(TObject *Sender)
{
	if(lstMatrices->ItemIndex != -1)
    {
		maxmath::TMatrix<double> *m = ((maxmath::TMatrix<double>*)matrices->Items[lstMatrices->ItemIndex]);
        grdM1->RowCount = m->Rows;
        grdM1->ColCount = m->Cols;
		for(maxmath::TIndex i = 0; i < m->Rows; ++i)
        	for(maxmath::TIndex j = 0; j < m->Cols; ++j)
            	grdM1->Cells[j][i] = FloatToStr(m->Items[i][j]);
    }
}
//---------------------------------------------------------------------------

