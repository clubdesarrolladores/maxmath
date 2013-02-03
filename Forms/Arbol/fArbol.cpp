//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fArbol.h"
#include "fChild.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"

TfrmArbol *frmArbol;
//---------------------------------------------------------------------------
__fastcall TfrmArbol::TfrmArbol(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmArbol::CrearArbol(void)
{
  TTreeNode *Nodo, *Nodo2;
  treeFunciones->Items->Clear();
  for( int i = 0; i < Funciones->Count; i++){
	String s(Funciones->Items[i].Nombre);
	Nodo = treeFunciones->Items->Add(NULL, s);
    for( int j = 0; j < Count(Funciones->Items[i].Intervalo); j++){
      Nodo2 = treeFunciones->Items->AddChild(Nodo,Find(Funciones->Items[i].
        Intervalo,j)->Info.Expresion);
      Nodo2->ImageIndex = 1;
      Nodo2->SelectedIndex = 1;
    }
  }
}

//---------------------------------------------------------------------------
void __fastcall TfrmArbol::treeFuncionesClick(TObject *Sender)
{
  TIntervalo*Intervalos;
  long double a, b;
  if( treeFunciones->Selected->Level == 0 ){
    lblTitle1->Caption = "Nombre:";
    lblTitle2->Caption = "Nº Intervalos:";
    lblTitle3->Caption = "Soporte:";
    lblTitle4->Caption = "Graficar:";
    lblTitle5->Caption = "";
    pbxMuestra->Visible = false;
	Intervalos = Funciones->Items[treeFunciones->Selected->Index].Intervalo;
	String text(Funciones->Items[treeFunciones->Selected->Index].Nombre);
	txtInfo1->Text = text;
    lblInfo2->Caption = IntToStr(Count(Intervalos));
    Soporte(Intervalos,&a,&b);
    lblInfo3->Caption = "( "+FormatFloat("0.##",a)+"; "+FormatFloat("0.##",b)+")";
    if( Funciones->Items[treeFunciones->Selected->Index].Graficar )
      lblInfo4->Caption = "Si";
    else
      lblInfo4->Caption = "No";
  }
  else{
    lblTitle1->Caption = "Expresión:";
    lblTitle2->Caption = "Mínimo:";
    lblTitle3->Caption = "Máximo:";
    lblTitle4->Caption = "Tipo gráfico:";
    lblTitle5->Caption = "Muestra:";
    pbxMuestra->Visible = true;
    Intervalos = Funciones->Items[treeFunciones->Selected->Parent->Index].Intervalo;
    txtInfo1->Text = Find(Intervalos,treeFunciones->Selected->Index)->Info.Expresion;
    lblInfo2->Caption = FloatToStr(Find(Intervalos,treeFunciones->Selected->Index)->Info.Min);
    lblInfo3->Caption = FloatToStr(Find(Intervalos,treeFunciones->Selected->Index)->Info.Max);
    if( Find(Intervalos,treeFunciones->Selected->Index)->Info.TipoGrafico == tgContinuo )
      lblInfo4->Caption = "Continuo";
    else
      lblInfo4->Caption = "Discreto";
    pbxMuestra->Canvas->Brush->Color = GroupBox2->Color;
    pbxMuestra->Canvas->FillRect(pbxMuestra->Canvas->ClipRect);
    pbxMuestra->Canvas->Pen->Color = TColor(Find(Intervalos,treeFunciones->Selected->Index)->Info.Color);
    pbxMuestra->Canvas->Pen->Width = Find(Intervalos,treeFunciones->Selected->Index)->Info.Grosor;
    pbxMuestra->Canvas->MoveTo(pbxMuestra->Canvas->ClipRect.Left,pbxMuestra->Canvas->ClipRect.Height()/2);
    pbxMuestra->Canvas->LineTo(pbxMuestra->Canvas->ClipRect.Width(),pbxMuestra->Canvas->ClipRect.Height()/2);
  }
}
//---------------------------------------------------------------------------

void __fastcall TfrmArbol::FormActivate(TObject *Sender)
{
  treeFuncionesClick(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TfrmArbol::treeFuncionesKeyUp(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
  treeFuncionesClick(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TfrmArbol::pbxMuestraPaint(TObject *Sender)
{
  treeFuncionesClick(Sender);
}
//---------------------------------------------------------------------------

