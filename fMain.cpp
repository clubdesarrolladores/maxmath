// ---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "fMain.h"
#include "fAbout.h"
#include "fConfiguracion.h"
#include "fTextEditor.h"
#include "fChild.h"
#include "fRectas.h"
#include "fNuevoProyecto.h"
#include "fMatrices.h"
#include "fVectores.h"
#include "fVectoresR3.h"
#include "uGlobals.h"
// ---------------------------------------------------------------------------

#pragma package(smart_init)
#pragma resource "*.dfm"

typedef void(*FRegExt)(char* ext, char* tfile, char* desc, char* exe,
	int idicon);
typedef int(*FIsRegExt)(char* ext, char* tfile, char* exe);

template<typename T>
class TShowModal {
private:
	T *p;

public:
	TShowModal(TForm*Owner) {
		p = new T(Owner);
		p->ShowModal();
	}

	~TShowModal() {
		delete p;
	}
};

TfrmMain *frmMain;

// ---------------------------------------------------------------------------
__fastcall TfrmMain::TfrmMain(TComponent* Owner) : TForm(Owner) {
	Globals::add("version", "1.1 RC1");
}

// ---------------------------------------------------------------------------

void __fastcall TfrmMain::FormCreate(TObject *Sender) {
	/* Asociamos la extensión pmm a la aplicación */
	if (Config.VerificarAsoc) {
		//TODO: Ahora necesita permisos especiales para realizar esto
		// Cuando lo programé, no hacía falta
		AsociarExtension();
	}
	/* Fijamos los directorios de los diálogos */
	OpenDialog->InitialDir = Config.DirectorioPmm;
	SaveDialog->InitialDir = Config.DirectorioPmm;
	/* Mostramos el icono en la barra de */
	if (!(icnTrayIcon->Visible && Config.TrayIcon)) {
		icnTrayIcon->Visible = Config.TrayIcon;
	}
	Caption = "MaxMath " + Globals::get("version");
	/* Cargamos los cursores */
	Screen->Cursors[1] = LoadCursor(HInstance, L"PUNTERO");
	Screen->Cursors[2] = LoadCursor(HInstance, L"SELECTHAND");
	Screen->Cursors[3] = LoadCursor(HInstance, L"LABEL");
	Screen->Cursors[4] = LoadCursor(HInstance, L"OPENHAND");
	Screen->Cursors[5] = LoadCursor(HInstance, L"CLOSEHAND");
	Screen->Cursors[6] = LoadCursor(HInstance, L"ZOOMMAS");
	Screen->Cursors[7] = LoadCursor(HInstance, L"ZOOMMENOS");
	Screen->Cursors[8] = LoadCursor(HInstance, L"MIRA");
	/* Inicializamos variables de control */
	Activated = false;
}

// ---------------------------------------------------------------------------
void __fastcall TfrmMain::FormActivate(TObject *Sender) {
	if (Activated) {
		return;
	}
	else {
		Activated = true;
	}
	/* Cargamos los archivos pasados por parámetro */
	for (int i = 1; i <= ParamCount(); i++) {
		if (FileExists(ParamStr(i))) {
			new TfrmChild(this, ParamStr(i));
		}
		else {
			Application->MessageBox(L"El archivo no se encuentra", L"Error",
				MB_OK + MB_ICONERROR);
		}
	}
}
// ---------------------------------------------------------------------------

void __fastcall TfrmMain::FormClose(TObject *Sender, TCloseAction &Action) {
	/* Cerramos todas las ventanas abiertas */
	actCerrarTodasExecute(Sender);
	/* Cerramos la aplicación si no quedan más ventanas */
	Application->ProcessMessages();
	Action = MDIChildCount > 0 ? caNone : caFree;
}

// ---------------------------------------------------------------------------
void __fastcall TfrmMain::ApplicationEventsHint(TObject *Sender) {
	sbrEstado->Panels->Items[1]->Text = GetLongHint(Application->Hint);
	if (strcmp(AnsiString(Sender->ClassName()).c_str(), "TDesigner2D")) {
		sbrEstado->Panels->Items[2]->Text = "";
		sbrEstado->Panels->Items[3]->Text = "";
	}
}

// ---------------------------------------------------------------------------
void __fastcall TfrmMain::actConfImpresExecute(TObject *Sender) {
	char msg[] =
		"Para poder imprimir necesita instalar una impresora.\n" "Para hacer esto, haga click en el botón Inicio, elija Configuración y luego Impresoras y\n"
		"después seleccione Agregar impresora.";
	try {
		PrinterSetupDialog->Execute();
	}
	catch (...) {
		Application->MessageBox(String(msg).c_str(), L"Error de impresión",
			MB_OK + MB_ICONWARNING);
	}
}

// ---------------------------------------------------------------------------
void __fastcall TfrmMain::actSalirExecute(TObject *Sender) {
	this->Close();
}

// ---------------------------------------------------------------------------
void __fastcall TfrmMain::actHerramientasExecute(TObject *Sender) {
	ControlBar->Visible = !ControlBar->Visible;
	actHerramientas->Checked = ControlBar->Visible;
}

// ---------------------------------------------------------------------------
void __fastcall TfrmMain::actEstadoExecute(TObject *Sender) {
	sbrEstado->Visible = !sbrEstado->Visible;
	actEstado->Checked = sbrEstado->Visible;
}

// ---------------------------------------------------------------------------
void __fastcall TfrmMain::actAcercaExecute(TObject *Sender) {
	delete new TShowModal<TfrmAbout>(this);
}

// ---------------------------------------------------------------------------
void __fastcall TfrmMain::actCerrarTodasExecute(TObject *Sender) {
	int k;
	for (int i = 0; i < MDIChildCount; i++) {
		k = MDIChildCount;
		MDIChildren[i]->Close();
		Application->ProcessMessages();
		if (k != MDIChildCount)
			i--;
		else
			break;
	}
}

// ---------------------------------------------------------------------------
void __fastcall TfrmMain::actAbrirExecute(TObject *Sender) {
	OpenDialog->Title = "Abrir proyecto";
	OpenDialog->Filter = "Archivo de MaxMath|*.pmm";
	if (OpenDialog->Execute()) {
		Config.DirectorioPmm = ExtractFilePath(OpenDialog->FileName);
		new TfrmChild(this, OpenDialog->FileName);
	}
}

// ---------------------------------------------------------------------------
void __fastcall TfrmMain::actMailExecute(TObject *Sender) {
	ShellExecute(NULL, L"open", L"mailto:contacto@devstudios.com.ar", NULL,
		NULL, SW_SHOWNORMAL);
}

// ---------------------------------------------------------------------------
void __fastcall TfrmMain::actRegistrarseExecute(TObject *Sender) {
	/*
	 char msg[] = "Esta versión es de uso interno.\n\n"
	 "Toda aquella persona que haga uso de éste software y no pertenezca a DevStudios Software "
	 "debe inmediatamente dar por finalizada dicha actividad o se verá incumpliendo la ley lo cual "
	 "llevará a acciones legales que DevStudios Software hará efectivas sin vacilación ante "
	 "cualquier tipo de piratería o uso indebido de este sistema de software.";
	 */
	char msg[] = "Esta versión no obliga a registrarse.";
	Application->MessageBox(String(msg).c_str(), L"Registro", MB_OK + MB_ICONINFORMATION);
}

// ---------------------------------------------------------------------------

void __fastcall TfrmMain::actConfiguracionExecute(TObject *Sender) {
	delete new TShowModal<TfrmConfiguracion>(this);
	if (!(icnTrayIcon->Visible && Config.TrayIcon))
		icnTrayIcon->Visible = Config.TrayIcon;
}

// ---------------------------------------------------------------------------

void __fastcall TfrmMain::actTextEditorExecute(TObject *Sender) {
	frmTextEditor->Visible = !frmTextEditor->Visible;
	actTextEditor->Checked = frmTextEditor->Visible;
}
// ---------------------------------------------------------------------------

void __fastcall TfrmMain::actFullScreenExecute(TObject *Sender) {
	if (!FullScreen) {
		FullScreen = true;
		oldRect = BoundsRect;
		int ALeft = Left - ClientOrigin.x;
		int ATop = Top - ClientOrigin.y;
		int AWidth = GetDeviceCaps(Canvas->Handle, HORZRES) +
			(Width - ClientWidth);
		int AHeight = GetDeviceCaps(Canvas->Handle, VERTRES) +
			(Height - ClientHeight);
		SetBounds(ALeft, ATop, AWidth, AHeight);
		if (MDIChildCount > 0)
			ActiveMDIChild->WindowState = wsMaximized;
	}
	else {
		FullScreen = false;
		BoundsRect = oldRect;
	}
	Invalidate();
}

// ---------------------------------------------------------------------------

void __fastcall TfrmMain::actManualExecute(TObject *Sender) {
	const AnsiString FileDoc = ExtractFilePath(Application->ExeName) +
		"doc\\Manual del usuario de MAXMATH.pdf";
	ShellExecute(Handle, L"open", String(FileDoc).c_str(), L"", NULL, 0);
}
// ---------------------------------------------------------------------------

void __fastcall TfrmMain::GetMinMaxInfo(TWMGetMinMaxInfo &Msg) {
	Msg.MinMaxInfo->ptMaxTrackSize.x = GetDeviceCaps(Canvas->Handle, HORZRES) +
		(Width - ClientWidth);
	Msg.MinMaxInfo->ptMaxTrackSize.y = GetDeviceCaps(Canvas->Handle, VERTRES) +
		(Height - ClientHeight);
}
// ---------------------------------------------------------------------------

void __fastcall TfrmMain::FormResize(TObject *Sender) {
	Repaint();
}
// ---------------------------------------------------------------------------

void TfrmMain::AsociarExtension() {
	try {
        HINSTANCE dllhandle = LoadLibrary(L"RegExt.dll");
        	if (dllhandle) {
        		FIsRegExt IsRegExt = (FIsRegExt)GetProcAddress(dllhandle, "_IsRegExt");
        		if (IsRegExt && !IsRegExt(".pmm", "MaxMath File",
        			AnsiString(Application->ExeName).c_str())) {
        			FRegExt RegExt = (FRegExt)GetProcAddress(dllhandle, "_RegExt");
        			if (RegExt) {
        				RegExt(".pmm", "MaxMath File", "Proyecto MaxMath",
        					AnsiString(Application->ExeName).c_str(), 0);
        			}
        		}
        		FreeLibrary(dllhandle);
        	}
        	else {
        		char msg[] =
        			"No se puedo asociar la extensión.\nLa librería 'RegExt.dll' no está disponible.";
        		Application->MessageBox(String(msg).c_str(), L"Error", MB_OK + MB_ICONERROR);
        	}
    } catch (...) {
	}
}

// ---------------------------------------------------------------------------
void TfrmMain::LiberarMemoria() {
	if (Win32Platform == VER_PLATFORM_WIN32_NT)
		SetProcessWorkingSetSize(GetCurrentProcess(), 0xFFFFFFFF, 0xFFFFFFFF);
}

// ---------------------------------------------------------------------------
void __fastcall TfrmMain::actNuevoExecute(TObject *Sender) {
	/*
	 TfrmNuevoProyecto *np = new TfrmNuevoProyecto(this);
	 if(np->ShowModal() == mrOk)
	 {
	 AnsiString project = np->lstProjets->Selected->SubItems->Strings[1];
	 if(project == "FR2")
	 {
	 new TfrmChild(this);
	 }
	 else if(project == "VR3")
	 {
	 new TfrmVectoresR3(this);
	 else
	 ShowMessage("Módulo en desarrollo");
	 }
	 delete np;
	 */
	new TfrmChild(this);
}
// ---------------------------------------------------------------------------
