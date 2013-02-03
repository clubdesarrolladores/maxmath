//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fConfiguracion.h"
#include "fMain.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmConfiguracion *frmConfiguracion;
//---------------------------------------------------------------------------
__fastcall TfrmConfiguracion::TfrmConfiguracion(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TfrmConfiguracion::OnChange(TObject *Sender)
{
  btnApply->Enabled = true;
  btnCancel->Caption = "&Cancelar";
}
//---------------------------------------------------------------------------

void __fastcall TfrmConfiguracion::btnApplyClick(TObject *Sender)
{
  frmMain->Config.CheckWhiteColor = chkCheckWhiteColor->Checked;
  frmMain->Config.DeleteImport = chkDeleteImport->Checked;
  frmMain->Config.DeleteFunction = chkDeleteFunction->Checked;
  frmMain->Config.TrayIcon = chkTrayIcon->Checked;
  frmMain->Config.ErrorArchivos = chkErrorArchivos->Checked;
  frmMain->Config.VerificarAsoc = chkVerificarAsociaciones->Checked;
  btnApply->Enabled = false;
  btnCancel->Caption = "&Cerrar";
}
//---------------------------------------------------------------------------

void __fastcall TfrmConfiguracion::btnDefaultClick(TObject *Sender)
{
  chkCheckWhiteColor->Checked = true;
  chkDeleteImport->Checked = false;
  chkDeleteFunction->Checked = true;
  chkTrayIcon->Checked = true;
  chkErrorArchivos->Checked = false;
  chkVerificarAsociaciones->Checked = false;
  btnApply->Enabled = true;
  btnCancel->Caption = "&Cancelar";
}
//---------------------------------------------------------------------------

void __fastcall TfrmConfiguracion::FormActivate(TObject *Sender)
{
  chkCheckWhiteColor->Checked = frmMain->Config.CheckWhiteColor;
  chkDeleteImport->Checked = frmMain->Config.DeleteImport;
  chkDeleteFunction->Checked = frmMain->Config.DeleteFunction;
  chkTrayIcon->Checked = frmMain->Config.TrayIcon;
  chkErrorArchivos->Checked = frmMain->Config.ErrorArchivos;
  chkVerificarAsociaciones->Checked = frmMain->Config.VerificarAsoc;
  btnApply->Enabled = false;
  btnCancel->Caption = "&Cerrar";
}
//---------------------------------------------------------------------------

void __fastcall TfrmConfiguracion::btnCancelClick(TObject *Sender)
{
  if( btnCancel->Caption == "&Cancelar" ){
    chkCheckWhiteColor->Checked = frmMain->Config.CheckWhiteColor;
    chkDeleteImport->Checked = frmMain->Config.DeleteImport;
    chkDeleteFunction->Checked = frmMain->Config.DeleteFunction;
    chkTrayIcon->Checked = frmMain->Config.TrayIcon;
    chkErrorArchivos->Checked = frmMain->Config.ErrorArchivos;
    chkVerificarAsociaciones->Checked = frmMain->Config.VerificarAsoc;
    btnApply->Enabled = false;
    btnCancel->Caption = "&Cerrar";
  }else{
    Close();
  }
}
//---------------------------------------------------------------------------

