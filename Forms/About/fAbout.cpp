//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fAbout.h"
#include "uUtils.h"
#include "uGlobals.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmAbout *frmAbout;
//---------------------------------------------------------------------------
__fastcall TfrmAbout::TfrmAbout(TComponent* Owner)
        : TForm(Owner)
{
}

//---------------------------------------------------------------------------

void __fastcall TfrmAbout::FormCreate(TObject *Sender)
{
    lblComentario->Caption = "http://www.maxmath.com.ar/";
    lblVersion->Caption    = "v"+Globals::get("version");
    lblUser->Caption       = "Uso permitido para: " + GetUserName() + "@" + GetComputerName();
    lblMemoria->Caption    = Format("Recursos disponibles: %d%%", ARRAYOFCONST((GetAvailableMemory())));
    lblCopyrigth->Caption  = "copyright © 2005-" + IntToStr(CurrentYear()) + " DevStudios Software";
    lblComentario->Cursor  = TCursor(2);
}
//---------------------------------------------------------------------------

void __fastcall TfrmAbout::lblComentarioClick(TObject *Sender)
{
	ShellExecuteA(NULL, "open", AnsiString(lblComentario->Caption).c_str(), NULL, NULL, 0);
}
//---------------------------------------------------------------------------

