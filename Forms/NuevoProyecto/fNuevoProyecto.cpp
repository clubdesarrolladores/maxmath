//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fNuevoProyecto.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmNuevoProyecto *frmNuevoProyecto;
//---------------------------------------------------------------------------
__fastcall TfrmNuevoProyecto::TfrmNuevoProyecto(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmNuevoProyecto::FormCreate(TObject *Sender)
{
  TListItem *item;
  //---- R2
  item = lstProjets->Items->Add();
  item->Caption = "Funciones en R²";
  item->SubItems->Add("Grupo de funciones definidas por intervalos en el plano. Permite operaciones del cálculo matemático.");
  item->SubItems->Add("FR2");

  item = lstProjets->Items->Add();
  item->Caption = "Cónicas en R²";
  item->SubItems->Add("Grupo de cónicas en el plano.");
  item->SubItems->Add("CR2");

  item = lstProjets->Items->Add();
  item->Caption = "Rectas en R²";
  item->SubItems->Add("Grupo de rectas en el plano.");
  item->SubItems->Add("RR2");

  item = lstProjets->Items->Add();
  item->Caption = "Vectores en R²";
  item->SubItems->Add("Grupo de vectores en el plano.");
  item->SubItems->Add("VR2");

  //---- R3
  item = lstProjets->Items->Add();
  item->Caption = "Funciones en R³";
  item->SubItems->Add("Grupo de funciones en el espacio.");
  item->SubItems->Add("FR3");

  item = lstProjets->Items->Add();
  item->Caption = "Rectas y planos en R³";
  item->SubItems->Add("Grupo de rectas y planos en el espacio.");
  item->SubItems->Add("RR3");
  
  item = lstProjets->Items->Add();
  item->Caption = "Superficies en R³";
  item->SubItems->Add("Grupo de superficies en el espacio.");
  item->SubItems->Add("SR3");

  item = lstProjets->Items->Add();
  item->Caption = "Vectores en R³";
  item->SubItems->Add("Grupo de vectores en el espacio.");
  item->SubItems->Add("VR3");

  //---- Otros
  item = lstProjets->Items->Add();
  item->Caption = "Matrices";
  item->SubItems->Add("Grupo de Matrices.");
  item->SubItems->Add("MAT");

}
//---------------------------------------------------------------------------

void __fastcall TfrmNuevoProyecto::lstProjetsDblClick(TObject *Sender)
{
	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

void __fastcall TfrmNuevoProyecto::lstProjetsSelectItem(TObject *Sender,
      TListItem *Item, bool Selected)
{
	lblInfo->Caption = Item->SubItems->Strings[0];
}
//---------------------------------------------------------------------------
