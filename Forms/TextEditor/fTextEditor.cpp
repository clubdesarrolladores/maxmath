//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fTextEditor.h"
#include "fMain.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmTextEditor *frmTextEditor;
//---------------------------------------------------------------------------
__fastcall TfrmTextEditor::TfrmTextEditor(TComponent* Owner)
        : TForm(Owner)
{
}

//---------------------------------------------------------------------------
void __fastcall TfrmTextEditor::CaptionText(AnsiString Text)
{
  SendMessage(rtxtTexto->Handle, EM_SCROLL, SB_LINEDOWN, 0);
  rtxtTexto->SelAttributes->Color = clBlack;
  rtxtTexto->SelAttributes->Name = "Courier New";
  rtxtTexto->SelAttributes->Size = 11;
  rtxtTexto->SelAttributes->Style = rtxtTexto->SelAttributes->Style << fsBold;
  rtxtTexto->Paragraph->Alignment = taLeftJustify;
  rtxtTexto->Paragraph->FirstIndent = 10;
  rtxtTexto->Paragraph->LeftIndent = 0;
  rtxtTexto->Paragraph->Numbering = nsBullet;
  rtxtTexto->Paragraph->RightIndent = 0;
  rtxtTexto->Lines->Append(Text);
  SendMessage(rtxtTexto->Handle, EM_SCROLL, SB_LINEDOWN, 0);
}

//---------------------------------------------------------------------------
void __fastcall TfrmTextEditor::CommonText(AnsiString Text)
{
  SendMessage(rtxtTexto->Handle, EM_SCROLL, SB_LINEDOWN, 0);
  rtxtTexto->SelAttributes->Color = clBlack;
  rtxtTexto->SelAttributes->Name = "Courier New";
  rtxtTexto->SelAttributes->Size = 10;
  rtxtTexto->SelAttributes->Style = rtxtTexto->SelAttributes->Style >> fsBold;
  rtxtTexto->Paragraph->Alignment = taLeftJustify;
  rtxtTexto->Paragraph->FirstIndent = 15;
  rtxtTexto->Paragraph->LeftIndent = 10;
  rtxtTexto->Paragraph->Numbering = nsNone;
  rtxtTexto->Paragraph->RightIndent = 0;
  rtxtTexto->Lines->Add(Text);
  SendMessage(rtxtTexto->Handle, EM_SCROLL, SB_LINEDOWN, 0);
}

//---------------------------------------------------------------------------
void __fastcall TfrmTextEditor::ParOrdenado(AnsiString Formato, long double x, long double y, AnsiString Additional)
{
  SendMessage(rtxtTexto->Handle, EM_SCROLL, SB_LINEDOWN, 0);
  rtxtTexto->SelAttributes->Color = clBlack;
  rtxtTexto->SelAttributes->Name = "Courier New";
  rtxtTexto->SelAttributes->Size = 10;
  rtxtTexto->SelAttributes->Style = rtxtTexto->SelAttributes->Style >> fsBold;
  rtxtTexto->Paragraph->Alignment = taLeftJustify;
  rtxtTexto->Paragraph->FirstIndent = 20;
  rtxtTexto->Paragraph->LeftIndent = 15;
  rtxtTexto->Paragraph->Numbering = nsNone;
  rtxtTexto->Paragraph->RightIndent = 0;
  rtxtTexto->Lines->Add(Format(Formato,ARRAYOFCONST((x,y,Additional))));
  SendMessage(rtxtTexto->Handle, EM_SCROLL, SB_LINEDOWN, 0);
}

//---------------------------------------------------------------------------

void __fastcall TfrmTextEditor::FormHide(TObject *Sender)
{
  frmMain->actTextEditor->Checked = false;
}
//---------------------------------------------------------------------------
void __fastcall TfrmTextEditor::actNewExecute(TObject *Sender)
{
  rtxtTexto->Clear();
}
//---------------------------------------------------------------------------

void __fastcall TfrmTextEditor::actFormatoExecute(TObject *Sender)
{
  FontDialog1->Font->Assign(rtxtTexto->SelAttributes);
  if( FontDialog1->Execute() )
    rtxtTexto->SelAttributes->Assign(FontDialog1->Font);
}
//---------------------------------------------------------------------------

void __fastcall TfrmTextEditor::rtxtTextoKeyDown(TObject *Sender,
      WORD &Key, TShiftState Shift)
{
  int Lpos, Cpos, LineLength;
  Lpos = SendMessage(rtxtTexto->Handle, EM_LINEFROMCHAR, rtxtTexto->SelStart, 0);
  Cpos = SendMessage(rtxtTexto->Handle, EM_LINEINDEX, Lpos, 0);
  LineLength = SendMessage(rtxtTexto->Handle, EM_LINELENGTH, Cpos, 0);
  Cpos = rtxtTexto->SelStart-Cpos;
  sbrStatus->Panels->Items[0]->Text = "Lin "+IntToStr(Lpos+1);     //{Linea / Line}
  sbrStatus->Panels->Items[1]->Text = "Col "+IntToStr(Cpos+1);  //{Columna / Column}
  sbrStatus->Panels->Items[2]->Text = "Len "+IntToStr(LineLength+1); //{Longitud de la linea / Long of line}        
}
//---------------------------------------------------------------------------

void __fastcall TfrmTextEditor::FileOpen1Accept(TObject *Sender)
{
  rtxtTexto->Lines->LoadFromFile(FileOpen1->Dialog->FileName);
}
//---------------------------------------------------------------------------

void __fastcall TfrmTextEditor::actSaveExecute(TObject *Sender)
{
  TStrings *Temp;
  if( dlgSaveText->Execute() )
    if( dlgSaveText->FilterIndex == 1){
      if( Application->MessageBox("Guardar en formato de solo texto implica perder las caracteristicas del formato de texto enriquecido.\n¿Desea continuar?",
        "Confirmar antes de continuar",MB_YESNO+MB_ICONQUESTION) == IDYES){
        Temp = new TStringList();
        try{
          Temp->Assign(rtxtTexto->Lines);
          Temp->SaveToFile(dlgSaveText->FileName);
        }__finally{
          delete Temp;
        }
      }
    }else
      rtxtTexto->Lines->SaveToFile(dlgSaveText->FileName);
}
//---------------------------------------------------------------------------


void __fastcall TfrmTextEditor::Acercade1Click(TObject *Sender)
{
  ShellAboutA(Application->Handle, "Editor de texto", "Parte de MaxMath",
        Application->Icon->Handle);
}
//---------------------------------------------------------------------------

void __fastcall TfrmTextEditor::rtxtTextoKeyPress(TObject *Sender,
      char &Key)
{
  WORD Key2;
  TShiftState Shift;
  rtxtTextoKeyDown(Sender, Key2, Shift);
}
//---------------------------------------------------------------------------

void __fastcall TfrmTextEditor::rtxtTextoKeyUp(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
  rtxtTextoKeyDown(Sender, Key, Shift);
}
//---------------------------------------------------------------------------

void __fastcall TfrmTextEditor::actHideExecute(TObject *Sender)
{
  Close();        
}
//---------------------------------------------------------------------------

void __fastcall TfrmTextEditor::actImprimirExecute(TObject *Sender)
{
  try{
    if( PrintDialog1->Execute() )
      for( int i = 0; i < PrintDialog1->Copies; i++ )
        rtxtTexto->Print("Impresión del Editor de texto de MaxMath");
  }catch(...){
    Application->MessageBox("Para poder imprimir necesita instalar una "
        "impresora.\nPara hacer esto, haga click en el botón Inicio, elija "
        "Configuración y luego Impresoras y\ndespués seleccione "
        "Agregar impresora.","Error de impresión",MB_OK+MB_ICONWARNING);
  }
}
//---------------------------------------------------------------------------

void __fastcall TfrmTextEditor::SearchFind1FindDialogFind(TObject *Sender)
{
  AnsiString sTemp;
  int iTemp;
  sTemp = rtxtTexto->Text.SubString(2+rtxtTexto->SelStart,
        rtxtTexto->Text.Length()-rtxtTexto->SelStart);
  iTemp = UpperCase(SearchFind1->Dialog->FindText).Pos(UpperCase(sTemp));
  if( iTemp != 0 ){
    rtxtTexto->SetFocus();
    rtxtTexto->SelStart = rtxtTexto->SelStart+iTemp;
    rtxtTexto->SelLength = SearchFind1->Dialog->FindText.Length();
  }else
    ShowMessage("No se encuentra \""+ SearchFind1->Dialog->FindText + "\"");
}
//---------------------------------------------------------------------------

