//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fPropVisor.h"
#include "fMain.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "CSPIN"
#pragma link "Designer2D"
#pragma resource "*.dfm"
TfrmPropVisor *frmPropVisor;
//---------------------------------------------------------------------------
__fastcall TfrmPropVisor::TfrmPropVisor(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmPropVisor::cbxFondoChange(TObject *Sender)
{
  dsgPrevia->BackGround->Color = cbxFondo->Selected;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::chkEjexClick(TObject *Sender)
{
  dsgPrevia->ShowAxeX = chkEjex->Checked;
  lblDirEjeX->Enabled = chkEjex->Checked;
  cboDirEjeX->Enabled = chkEjex->Checked;
  lblEstiloX->Enabled = chkEjex->Checked;
  cboEstiloX->Enabled = chkEjex->Checked;
  lblGrosorX->Enabled = chkEjex->Checked;
  edtGrosorX->Enabled = chkEjex->Checked;
  lblColorX->Enabled = chkEjex->Checked;
  cbxColorEjeX->Enabled = chkEjex->Checked;
  lblNameX->Enabled = chkEjex->Checked;
  txtEjeXNombre->Enabled = chkEjex->Checked;
  btnFontNameAxeX->Enabled = chkEjex->Checked;
  chkMostrarPuntero->Enabled = chkEjex->Checked || chkEjey->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::cboDirEjeXChange(TObject *Sender)
{
  if( cboDirEjeX->ItemIndex == 0 )
    dsgPrevia->DirectionAxeX = drLeftToRight;
  else
    dsgPrevia->DirectionAxeX = drRightToLeft;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::cboDirEjeYChange(TObject *Sender)
{
  if( cboDirEjeY->ItemIndex == 0 )
    dsgPrevia->DirectionAxeY = drBottomToTop;
  else
    dsgPrevia->DirectionAxeY = drTopToBottom;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::chkEjeyClick(TObject *Sender)
{
  dsgPrevia->ShowAxeY = chkEjey->Checked;
  lblDirEjeY->Enabled = chkEjey->Checked;
  cboDirEjeY->Enabled = chkEjey->Checked;
  lblEstiloY->Enabled = chkEjey->Checked;
  cboEstiloY->Enabled = chkEjey->Checked;
  lblGrosorY->Enabled = chkEjey->Checked;
  edtGrosorY->Enabled = chkEjey->Checked;
  lblColorY->Enabled = chkEjey->Checked;
  cbxColorEjeY->Enabled = chkEjey->Checked;
  lblNameY->Enabled = chkEjey->Checked;
  txtEjeYNombre->Enabled = chkEjey->Checked;
  btnFontNameAxeY->Enabled = chkEjey->Checked;
  chkMostrarPuntero->Enabled = chkEjex->Checked || chkEjey->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::cbxColorEjeXChange(TObject *Sender)
{
  dsgPrevia->AxeX->Color = cbxColorEjeX->Selected;
  dsgPrevia->Refresh();
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::cbxColorEjeYChange(TObject *Sender)
{
  dsgPrevia->AxeY->Color = cbxColorEjeY->Selected;
  dsgPrevia->Refresh();
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::txtEjeXNombreChange(TObject *Sender)
{
  dsgPrevia->NameAxeX = txtEjeXNombre->Text;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::txtEjeYNombreChange(TObject *Sender)
{
  dsgPrevia->NameAxeY = txtEjeYNombre->Text;      
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::btnFontNameAxeXClick(TObject *Sender)
{
  fntFuente->Font->Assign(dsgPrevia->FontAxeX);
  if( fntFuente->Execute() )
    dsgPrevia->FontAxeX->Assign(fntFuente->Font);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::edtGrosorXChange(TObject *Sender)
{
  dsgPrevia->AxeX->Width = edtGrosorX->Value;
}
//---------------------------------------------------------------------------


void __fastcall TfrmPropVisor::chkMostrarPunteroClick(TObject *Sender)
{
  dsgPrevia->ShowPointer = chkMostrarPuntero->Checked;        
}
//---------------------------------------------------------------------------


void __fastcall TfrmPropVisor::btnFontNameAxeYClick(TObject *Sender)
{
  fntFuente->Font->Assign(dsgPrevia->FontAxeY);
  if( fntFuente->Execute() )
    dsgPrevia->FontAxeY->Assign(fntFuente->Font);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::edtGrosorYChange(TObject *Sender)
{
  dsgPrevia->AxeY->Width = edtGrosorY->Value;        
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::chkSobreXClick(TObject *Sender)
{
  dsgPrevia->LabelsToTheTopOfAxeX = chkSobreX->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::chkDerYClick(TObject *Sender)
{
  dsgPrevia->LabelsToTheRigthOfAxeY = chkDerY->Checked;      
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::chkNumXClick(TObject *Sender)
{
  dsgPrevia->ShowLabelsAxeX = chkNumX->Checked;
  lblPasoNumX->Enabled = chkNumX->Checked;
  edtLabelStepX->Enabled = chkNumX->Checked;
  lblTextNumX->Enabled = chkNumX->Checked;
  edtAddTextX->Enabled = chkNumX->Checked;
  chkSobreX->Enabled = chkNumX->Checked;
  btnFontNumX->Enabled = chkNumX->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::chkNumYClick(TObject *Sender)
{
  dsgPrevia->ShowLabelsAxeY = chkNumY->Checked;
  lblPasoNumY->Enabled = chkNumY->Checked;
  edtLabelStepY->Enabled = chkNumY->Checked;
  lblTextNumY->Enabled = chkNumY->Checked;
  edtAddTextY->Enabled = chkNumY->Checked;
  chkDerY->Enabled = chkNumY->Checked;
  btnFontNumY->Enabled = chkNumY->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::edtLabelStepXChange(TObject *Sender)
{
  if( StrToFloatDef(edtLabelStepX->Text, 1) > 0 )
    dsgPrevia->LabelsStepX = StrToFloatDef(edtLabelStepX->Text, 1);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::edtLabelStepYChange(TObject *Sender)
{
  if( StrToFloatDef(edtLabelStepY->Text, 1) > 0 )
    dsgPrevia->LabelsStepY = StrToFloatDef(edtLabelStepY->Text, 1);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::edtAddTextXChange(TObject *Sender)
{
  dsgPrevia->AdditionalStringAxeX = edtAddTextX->Text;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::edtAddTextYChange(TObject *Sender)
{
  dsgPrevia->AdditionalStringAxeY = edtAddTextY->Text;      
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::edtMarksStepXChange(TObject *Sender)
{
  if( StrToFloatDef(edtMarksStepX->Text,1) > 0)
    dsgPrevia->MarksStepX = StrToFloatDef(edtMarksStepX->Text,1);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::edtMarksStepYChange(TObject *Sender)
{
  if( StrToFloatDef(edtMarksStepY->Text,1) > 0)
    dsgPrevia->MarksStepY = StrToFloatDef(edtMarksStepY->Text,1);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::edtMarksLongXChange(TObject *Sender)
{
  dsgPrevia->MarksLengthAxeX = StrToFloatDef(edtMarksLongX->Text,1);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::edtMarksLongYChange(TObject *Sender)
{
  dsgPrevia->MarksLengthAxeY = StrToFloatDef(edtMarksLongY->Text,1);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::chkMarksXClick(TObject *Sender)
{
  dsgPrevia->ShowMarksAxeX = chkMarksX->Checked;
  lblPasoMarksX->Enabled = chkMarksX->Checked;
  edtMarksStepX->Enabled = chkMarksX->Checked;
  lblLongMarksX->Enabled = chkMarksX->Checked;
  edtMarksLongX->Enabled = chkMarksX->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::chkMarksYClick(TObject *Sender)
{
  dsgPrevia->ShowMarksAxeY = chkMarksY->Checked;
  lblPasoMarksY->Enabled = chkMarksY->Checked;
  edtMarksStepY->Enabled = chkMarksY->Checked;
  lblLongMarksY->Enabled = chkMarksY->Checked;
  edtMarksLongY->Enabled = chkMarksY->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::FormActivate(TObject *Sender)
{
  chkEjex->Checked = dsgPrevia->ShowAxeX;
  chkEjey->Checked = dsgPrevia->ShowAxeY;
  txtEjeXNombre->Text = dsgPrevia->NameAxeX;
  txtEjeYNombre->Text = dsgPrevia->NameAxeY;
  cboDirEjeX->ItemIndex = (dsgPrevia->DirectionAxeX == drLeftToRight)? 0 : 1;
  cboDirEjeY->ItemIndex = (dsgPrevia->DirectionAxeY == drBottomToTop)? 0 : 1;
  cbxColorEjeX->Selected = dsgPrevia->AxeX->Color;
  cbxColorEjeY->Selected = dsgPrevia->AxeY->Color;
  cboEstiloX->ItemIndex = int(dsgPrevia->AxeX->Style);
  cboEstiloY->ItemIndex = int(dsgPrevia->AxeY->Style);
  edtGrosorX->Value = dsgPrevia->AxeX->Width;
  edtGrosorY->Value = dsgPrevia->AxeY->Width;
  chkMostrarPuntero->Checked = dsgPrevia->ShowPointer;
  cbxFondo->Selected = dsgPrevia->BackGround->Color;
  chkEjexClick(Sender);
  chkEjeyClick(Sender);
  chkNumX->Checked = dsgPrevia->ShowLabelsAxeX;
  chkNumY->Checked = dsgPrevia->ShowLabelsAxeY;
  edtLabelStepX->Text = FloatToStr(dsgPrevia->LabelsStepX);
  edtLabelStepY->Text = FloatToStr(dsgPrevia->LabelsStepY);
  edtAddTextX->Text = dsgPrevia->AdditionalStringAxeX;
  edtAddTextY->Text = dsgPrevia->AdditionalStringAxeY;
  chkSobreX->Checked = dsgPrevia->LabelsToTheTopOfAxeX;
  chkDerY->Checked = dsgPrevia->LabelsToTheRigthOfAxeY;
  chkNumYClick(Sender);
  chkNumYClick(Sender);
  chkMarksX->Checked = dsgPrevia->ShowMarksAxeX;
  chkMarksY->Checked = dsgPrevia->ShowMarksAxeY;
  edtMarksStepX->Text = FloatToStr(dsgPrevia->MarksStepX);
  edtMarksStepY->Text = FloatToStr(dsgPrevia->MarksStepY);
  edtMarksLongX->Text = IntToStr(dsgPrevia->MarksLengthAxeX);
  edtMarksLongY->Text = IntToStr(dsgPrevia->MarksLengthAxeY);
  chkMarksXClick(Sender);
  chkMarksYClick(Sender);
  chkGridX->Checked = dsgPrevia->ShowGridX;
  chkGridY->Checked = dsgPrevia->ShowGridY;
  edtPasoGridX->Text = FloatToStr(dsgPrevia->GridStepX);
  edtPasoGridY->Text = FloatToStr(dsgPrevia->GridStepY);
  cboStyleGridX->ItemIndex = int(dsgPrevia->GridX->Style);
  cboStyleGridY->ItemIndex = int(dsgPrevia->GridY->Style);
  edtWidthGridX->Text = IntToStr(dsgPrevia->GridX->Width);
  edtWidthGridY->Text = IntToStr(dsgPrevia->GridY->Width);
  cboColorGridX->Selected = dsgPrevia->GridX->Color;
  cboColorGridY->Selected = dsgPrevia->GridY->Color;
  chkGridXClick(Sender);
  chkGridYClick(Sender);
  edtZoomX->Text = IntToStr(dsgPrevia->ZoomAxeX);
  edtZoomY->Text = IntToStr(dsgPrevia->ZoomAxeY);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::btnFontNumXClick(TObject *Sender)
{
  fntFuente->Font->Assign(dsgPrevia->FontLabelX);
  if( fntFuente->Execute() )
    dsgPrevia->FontLabelX->Assign(fntFuente->Font);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::btnFontNumYClick(TObject *Sender)
{
  fntFuente->Font->Assign(dsgPrevia->FontLabelY);
  if( fntFuente->Execute() )
    dsgPrevia->FontLabelY->Assign(fntFuente->Font);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::chkGridXClick(TObject *Sender)
{
  dsgPrevia->ShowGridX = chkGridX->Checked;
  lblPasoGridX->Enabled = chkGridX->Checked;
  edtPasoGridX->Enabled = chkGridX->Checked;
  lblStyleGridX->Enabled = chkGridX->Checked;
  cboStyleGridX->Enabled = chkGridX->Checked;
  lblWidthGridX->Enabled = chkGridX->Checked;
  edtWidthGridX->Enabled = chkGridX->Checked;
  lblColorGridX->Enabled = chkGridX->Checked;
  cboColorGridX->Enabled = chkGridX->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::chkGridYClick(TObject *Sender)
{
  dsgPrevia->ShowGridY = chkGridY->Checked;
  lblPasoGridY->Enabled = chkGridY->Checked;
  edtPasoGridY->Enabled = chkGridY->Checked;
  lblStyleGridY->Enabled = chkGridY->Checked;
  cboStyleGridY->Enabled = chkGridY->Checked;
  lblWidthGridY->Enabled = chkGridY->Checked;
  edtWidthGridY->Enabled = chkGridY->Checked;
  lblColorGridY->Enabled = chkGridY->Checked;
  cboColorGridY->Enabled = chkGridY->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::edtPasoGridXChange(TObject *Sender)
{
  if( StrToFloatDef(edtPasoGridX->Text,1) > 0)
    dsgPrevia->GridStepX = StrToFloatDef(edtPasoGridX->Text,1);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::edtPasoGridYChange(TObject *Sender)
{
  if( StrToFloatDef(edtPasoGridY->Text,1) > 0)
    dsgPrevia->GridStepY = StrToFloatDef(edtPasoGridY->Text,1);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::edtWidthGridXChange(TObject *Sender)
{
  if( StrToIntDef(edtWidthGridX->Text,1) > 0)
    dsgPrevia->GridX->Width = StrToIntDef(edtWidthGridX->Text,1);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::edtWidthGridYChange(TObject *Sender)
{
  if( StrToIntDef(edtWidthGridY->Text,1) > 0)
    dsgPrevia->GridY->Width = StrToIntDef(edtWidthGridY->Text,1);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::cboColorGridXChange(TObject *Sender)
{
  dsgPrevia->GridX->Color = cboColorGridX->Selected;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::cboColorGridYChange(TObject *Sender)
{
  dsgPrevia->GridY->Color = cboColorGridY->Selected;
}
//---------------------------------------------------------------------------
void __fastcall TfrmPropVisor::edtZoomXChange(TObject *Sender)
{
  if( StrToIntDef(edtZoomX->Text, 100) > 0 )
    dsgPrevia->ZoomAxeX = StrToIntDef(edtZoomX->Text, 100);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::edtZoomYChange(TObject *Sender)
{
  if( StrToIntDef(edtZoomY->Text, 100) > 0 )
    dsgPrevia->ZoomAxeY = StrToIntDef(edtZoomY->Text, 100);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::cboAutoOpcionesChange(TObject *Sender)
{
  switch( cboAutoOpciones->ItemIndex )
  {
    case 0: //Trigonometrica
    dsgPrevia->ShowAxeX = true;
    dsgPrevia->ShowAxeY = true;
    dsgPrevia->DirectionAxeX = drLeftToRight;
    dsgPrevia->DirectionAxeY = drBottomToTop;
    dsgPrevia->AxeX->Color = clBlack;
    dsgPrevia->AxeY->Color = clBlack;
    dsgPrevia->FontAxeX->Color = clBlack;
    dsgPrevia->FontAxeY->Color = clBlack;
    //cboEstiloX
    dsgPrevia->AxeX->Width = 1;
    dsgPrevia->AxeY->Width = 1;
    dsgPrevia->ShowPointer = true;
    dsgPrevia->BackGround->Color = clWhite;
    dsgPrevia->ShowLabelsAxeX = true;
    dsgPrevia->ShowLabelsAxeY = true;
    dsgPrevia->LabelsStepX = 3.14159;
    dsgPrevia->LabelsStepY = 1;
    dsgPrevia->AdditionalStringAxeX = " [rad]";
    dsgPrevia->LabelsToTheTopOfAxeX = true;
    dsgPrevia->LabelsToTheRigthOfAxeY = true;
    dsgPrevia->FontLabelX->Color = clBlack;
    dsgPrevia->FontLabelY->Color = clBlack;
    dsgPrevia->ShowMarksAxeX = true;
    dsgPrevia->ShowMarksAxeY = true;
    dsgPrevia->MarksStepX = 3.14159/2;
    dsgPrevia->MarksStepY = 0.5;
    dsgPrevia->MarksLengthAxeX = 8;
    dsgPrevia->MarksLengthAxeY = 8;
    dsgPrevia->ShowGridX = true;
    dsgPrevia->ShowGridY = true;
    dsgPrevia->GridStepX = 3.14159;
    dsgPrevia->GridStepY = 1;
    //cboStyleGridX
    dsgPrevia->GridX->Width = 1;
    dsgPrevia->GridY->Width = 1;
    dsgPrevia->GridX->Color = clSilver;
    dsgPrevia->GridY->Color = clSilver;
    FormActivate(Sender);
    break;
    case 1: //Discreta
    dsgPrevia->ShowAxeX = true;
    dsgPrevia->ShowAxeY = true;
    dsgPrevia->DirectionAxeX = drLeftToRight;
    dsgPrevia->DirectionAxeY = drBottomToTop;
    dsgPrevia->AxeX->Color = clBlack;
    dsgPrevia->AxeY->Color = clBlack;
    dsgPrevia->FontAxeX->Color = clBlack;
    dsgPrevia->FontAxeY->Color = clBlack;
    //cboEstiloX
    dsgPrevia->AxeX->Width = 1;
    dsgPrevia->AxeY->Width = 1;
    dsgPrevia->ShowPointer = true;
    dsgPrevia->BackGround->Color = clSilver;
    dsgPrevia->ShowLabelsAxeX = true;
    dsgPrevia->ShowLabelsAxeY = true;
    dsgPrevia->AdditionalStringAxeX = "";
    dsgPrevia->LabelsStepX = 1;
    dsgPrevia->LabelsStepY = 1;
    dsgPrevia->LabelsToTheTopOfAxeX = true;
    dsgPrevia->LabelsToTheRigthOfAxeY = true;
    dsgPrevia->FontLabelX->Color = clBlack;
    dsgPrevia->FontLabelY->Color = clBlack;
    dsgPrevia->ShowMarksAxeX = true;
    dsgPrevia->ShowMarksAxeY = true;
    dsgPrevia->MarksStepX = 1;
    dsgPrevia->MarksStepY = 1;
    dsgPrevia->MarksLengthAxeX = 8;
    dsgPrevia->MarksLengthAxeY = 8;
    dsgPrevia->ShowGridX = false;
    dsgPrevia->ShowGridY = false;
    dsgPrevia->GridStepX = 1;
    dsgPrevia->GridStepY = 1;
    //cboStyleGridX
    dsgPrevia->GridX->Width = 1;
    dsgPrevia->GridY->Width = 1;
    dsgPrevia->GridX->Color = clSilver;
    dsgPrevia->GridY->Color = clSilver;
    FormActivate(Sender);
    break;
  case 2: //Profesional
    dsgPrevia->ShowAxeX = true;
    dsgPrevia->ShowAxeY = true;
    dsgPrevia->DirectionAxeX = drLeftToRight;
    dsgPrevia->DirectionAxeY = drBottomToTop;
    dsgPrevia->AxeX->Color = clLime;
    dsgPrevia->AxeY->Color = clLime;
    dsgPrevia->FontAxeX->Color = clLime;
    dsgPrevia->FontAxeY->Color = clLime;
    //cboEstiloX
    dsgPrevia->AxeX->Width = 1;
    dsgPrevia->AxeY->Width = 1;
    dsgPrevia->ShowPointer = true;
    dsgPrevia->BackGround->Color = clBlack;
    dsgPrevia->ShowLabelsAxeX = true;
    dsgPrevia->ShowLabelsAxeY = true;
    dsgPrevia->LabelsStepX = 1;
    dsgPrevia->LabelsStepY = 1;
    dsgPrevia->AdditionalStringAxeX = "";
    dsgPrevia->LabelsToTheTopOfAxeX = false;
    dsgPrevia->LabelsToTheRigthOfAxeY = false;
    dsgPrevia->FontLabelX->Color = clSilver;
    dsgPrevia->FontLabelY->Color = clSilver;
    dsgPrevia->ShowMarksAxeX = true;
    dsgPrevia->ShowMarksAxeY = true;
    dsgPrevia->MarksStepX = 0.5;
    dsgPrevia->MarksStepY = 0.5;
    dsgPrevia->MarksLengthAxeX = 5;
    dsgPrevia->MarksLengthAxeY = 5;
    dsgPrevia->ShowGridX = true;
    dsgPrevia->ShowGridY = true;
    dsgPrevia->GridStepX = 2;
    dsgPrevia->GridStepY = 2;
    //cboStyleGridX
    dsgPrevia->GridX->Width = 1;
    dsgPrevia->GridY->Width = 1;
    dsgPrevia->GridX->Color = clSilver;
    dsgPrevia->GridY->Color = clSilver;
    FormActivate(Sender);
    break;
  case 3: //Moderna
    dsgPrevia->ShowAxeX = true;
    dsgPrevia->ShowAxeY = true;
    dsgPrevia->DirectionAxeX = drLeftToRight;
    dsgPrevia->DirectionAxeY = drBottomToTop;
    dsgPrevia->AxeX->Color = clNavy;
    dsgPrevia->AxeY->Color = clNavy;
    dsgPrevia->FontAxeX->Color = clNavy;
    dsgPrevia->FontAxeY->Color = clNavy;
    //cboEstiloX
    dsgPrevia->AxeX->Width = 1;
    dsgPrevia->AxeY->Width = 1;
    dsgPrevia->ShowPointer = true;
    dsgPrevia->BackGround->Color = TColor(0xCB8B64);
    dsgPrevia->ShowLabelsAxeX = true;
    dsgPrevia->ShowLabelsAxeY = true;
    dsgPrevia->LabelsStepX = 0.5;
    dsgPrevia->LabelsStepY = 0.5;
    dsgPrevia->AdditionalStringAxeX = "";
    dsgPrevia->LabelsToTheTopOfAxeX = false;
    dsgPrevia->LabelsToTheRigthOfAxeY = false;
    dsgPrevia->FontLabelX->Color = clBlack;
    dsgPrevia->FontLabelY->Color = clBlack;
    dsgPrevia->ShowMarksAxeX = true;
    dsgPrevia->ShowMarksAxeY = true;
    dsgPrevia->MarksStepX = 1.0/3.0;
    dsgPrevia->MarksStepY = 1.0/3.0;
    dsgPrevia->MarksLengthAxeX = 8;
    dsgPrevia->MarksLengthAxeY = 8;
    dsgPrevia->ShowGridX = true;
    dsgPrevia->ShowGridY = true;
    dsgPrevia->GridStepX = 0.25;
    dsgPrevia->GridStepY = 0.25;
    //cboStyleGridX
    dsgPrevia->GridX->Width = 1;
    dsgPrevia->GridY->Width = 1;
    dsgPrevia->GridX->Color = TColor(0xD9AC91);
    dsgPrevia->GridY->Color = TColor(0xD9AC91);
    FormActivate(Sender);
    break;
  case 4: //Impactante
    dsgPrevia->ShowAxeX = true;
    dsgPrevia->ShowAxeY = true;
    dsgPrevia->DirectionAxeX = drLeftToRight;
    dsgPrevia->DirectionAxeY = drBottomToTop;
    dsgPrevia->AxeX->Color = clRed;
    dsgPrevia->AxeY->Color = clBlue;
    dsgPrevia->FontAxeX->Color = clRed;
    dsgPrevia->FontAxeY->Color = clBlue;
    //cboEstiloX
    dsgPrevia->AxeX->Width = 1;
    dsgPrevia->AxeY->Width = 1;
    dsgPrevia->ShowPointer = true;
    dsgPrevia->BackGround->Color = clBlack;
    dsgPrevia->ShowLabelsAxeX = true;
    dsgPrevia->ShowLabelsAxeY = true;
    dsgPrevia->LabelsStepX = 0.5;
    dsgPrevia->LabelsStepY = 0.5;
    dsgPrevia->AdditionalStringAxeX = "";
    dsgPrevia->LabelsToTheTopOfAxeX = false;
    dsgPrevia->LabelsToTheRigthOfAxeY = false;
    dsgPrevia->FontLabelX->Color = clRed;
    dsgPrevia->FontLabelY->Color = clBlue;
    dsgPrevia->ShowMarksAxeX = true;
    dsgPrevia->ShowMarksAxeY = true;
    dsgPrevia->MarksStepX = 0.25;
    dsgPrevia->MarksStepY = 0.25;
    dsgPrevia->MarksLengthAxeX = 8;
    dsgPrevia->MarksLengthAxeY = 8;
    dsgPrevia->ShowGridX = true;
    dsgPrevia->ShowGridY = true;
    dsgPrevia->GridStepX = 0.5;
    dsgPrevia->GridStepY = 0.5;
    //cboStyleGridX
    dsgPrevia->GridX->Width = 1;
    dsgPrevia->GridY->Width = 1;
    dsgPrevia->GridX->Color = clYellow;
    dsgPrevia->GridY->Color = clYellow;
    FormActivate(Sender);
    break;
  case 5: //Impresión
    dsgPrevia->ShowAxeX = true;
    dsgPrevia->ShowAxeY = true;
    dsgPrevia->DirectionAxeX = drLeftToRight;
    dsgPrevia->DirectionAxeY = drBottomToTop;
    dsgPrevia->AxeX->Color = clBlack;
    dsgPrevia->AxeY->Color = clBlack;
    dsgPrevia->FontAxeX->Color = clBlack;
    dsgPrevia->FontAxeY->Color = clBlack;
    //cboEstiloX
    dsgPrevia->AxeX->Width = 1;
    dsgPrevia->AxeY->Width = 1;
    dsgPrevia->ShowPointer = true;
    dsgPrevia->BackGround->Color = clWhite;
    dsgPrevia->ShowLabelsAxeX = true;
    dsgPrevia->ShowLabelsAxeY = true;
    dsgPrevia->LabelsStepX = 1;
    dsgPrevia->LabelsStepY = 1;
    dsgPrevia->AdditionalStringAxeX = "";
    dsgPrevia->LabelsToTheTopOfAxeX = false;
    dsgPrevia->LabelsToTheRigthOfAxeY = false;
    dsgPrevia->FontLabelX->Color = clBlack;
    dsgPrevia->FontLabelY->Color = clBlack;
    dsgPrevia->ShowMarksAxeX = true;
    dsgPrevia->ShowMarksAxeY = true;
    dsgPrevia->MarksStepX = 0.5;
    dsgPrevia->MarksStepY = 0.5;
    dsgPrevia->MarksLengthAxeX = 8;
    dsgPrevia->MarksLengthAxeY = 8;
    dsgPrevia->ShowGridX = false;
    dsgPrevia->ShowGridY = false;
    dsgPrevia->GridStepX = 1;
    dsgPrevia->GridStepY = 1;
    //cboStyleGridX
    dsgPrevia->GridX->Width = 1;
    dsgPrevia->GridY->Width = 1;
    dsgPrevia->GridX->Color = clSilver;
    dsgPrevia->GridY->Color = clSilver;
    FormActivate(Sender);
    break;
  case 6: //cargar
    if( dlgOpenDSG->Execute() ){
      dsgPrevia->LoadFromFile(dlgOpenDSG->FileName);
      frmMain->Config.DirectorioDsg = ExtractFilePath(dlgOpenDSG->FileName);
      FormActivate(Sender);
    }
    break;
  }
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::UpClickDbl(TObject *Sender)
{
  const long double inc = 0.01;
  long double value;
  try{
    value = StrToFloatDef(((TEdit*)((TCSpinButton*)Sender)->FocusControl)->Text, 1);
  }catch(...){
    return;}
  if( (value + inc) < 100.0 )
    value += inc;
  else
   value = 100.0;
  ((TEdit*)((TCSpinButton*)Sender)->FocusControl)->Text = FloatToStr(value);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::DownClickDbl(TObject *Sender)
{
  const long double inc = 0.01;
  long double value;
  try{
    value = StrToFloatDef(((TEdit*)((TCSpinButton*)Sender)->FocusControl)->Text, 1);
  }catch(...){
    return;}
  if( (value - inc) > 0.0 )
    value -= inc;
  else
    value = 1;
  ((TEdit*)((TCSpinButton*)Sender)->FocusControl)->Text = FloatToStr(value);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::KeyPressDbl(TObject *Sender, char &Key)
{
  AnsiString s;
  s = ((TEdit*)Sender)->Text;
  bool Num = ((Key >= '0') && (Key <= '9'));
  bool Dec = ((Key == DecimalSeparator) && (s.Pos(DecimalSeparator) == 0));
  //bool Neg = ((Key == '-') && (((TEdit*)Sender)->SelStart == 0) && (s.Pos('-') == 0));
  if( !Num && !Dec /*&& !Neg*/ )
    Key = 0;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::DownClickInt(TObject *Sender)
{
  const int inc = 1;
  int value;
  try{
    value = StrToIntDef(((TEdit*)((TCSpinButton*)Sender)->FocusControl)->Text, 1);
  }catch(...){
    return;}
  if( (value - inc) >= 1 )
    value -= inc;
  else
    value = 1;
  ((TEdit*)((TCSpinButton*)Sender)->FocusControl)->Text = FloatToStr(value);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::UpClickInt(TObject *Sender)
{
  const int inc = 1;
  int value;
  try{
    value = StrToIntDef(((TEdit*)((TCSpinButton*)Sender)->FocusControl)->Text, 1);
  }catch(...){
    return;}
  if( (value + inc) <= ((TEdit*)((TCSpinButton*)Sender)->FocusControl)->Tag )
    value += inc;
  else
    value = ((TEdit*)((TCSpinButton*)Sender)->FocusControl)->Tag;
  ((TEdit*)((TCSpinButton*)Sender)->FocusControl)->Text = FloatToStr(value);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::KeyPressInt(TObject *Sender, char &Key)
{
  AnsiString s;
  s = ((TEdit*)Sender)->Text;
  bool Num = ((Key >= '0') && (Key <= '9')) || ((Key == '0')&& (((TEdit*)Sender)->SelStart != 0));
  //bool Dec = ((Key == DecimalSeparator) && (s.Pos(DecimalSeparator) == 0));
  //bool Neg = ((Key == '-') && (((TEdit*)Sender)->SelStart == 0) && (s.Pos('-') == 0));
  if( !Num /*&& !Dec /*&& !Neg*/ )
    Key = 0;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::cboEstiloDrawItems(TWinControl *Control,
      int Index, TRect &Rect, TOwnerDrawState State)
{
  TComboBox* Cbo;
  Cbo = (TComboBox*)Control;
  Cbo->Canvas->FillRect(Rect);
  Cbo->Canvas->Pen->Style = TPenStyle(Index);
  Cbo->Canvas->MoveTo(Rect.Left+2, Rect.Height()/2);
  Cbo->Canvas->LineTo(Rect.Right-2, Rect.Height()/2);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::cboEstiloXChange(TObject *Sender)
{
  dsgPrevia->AxeX->Style = TPenStyle(cboEstiloX->ItemIndex);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::cboEstiloYChange(TObject *Sender)
{
  dsgPrevia->AxeY->Style = TPenStyle(cboEstiloY->ItemIndex);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::cboStyleGridXChange(TObject *Sender)
{
  dsgPrevia->GridX->Style = TPenStyle(cboStyleGridX->ItemIndex);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::cboStyleGridYChange(TObject *Sender)
{
  dsgPrevia->GridY->Style = TPenStyle(cboStyleGridY->ItemIndex);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::btnSaveClick(TObject *Sender)
{
  if( dlgSaveDSG->Execute() ){
    dsgPrevia->SaveToFile(dlgSaveDSG->FileName);
    frmMain->Config.DirectorioDsg = ExtractFilePath(dlgSaveDSG->FileName);
  }
}
//---------------------------------------------------------------------------

void __fastcall TfrmPropVisor::FormCreate(TObject *Sender)
{
  dlgOpenDSG->InitialDir = frmMain->Config.DirectorioDsg;
  dlgSaveDSG->InitialDir = frmMain->Config.DirectorioDsg;
}
//---------------------------------------------------------------------------

