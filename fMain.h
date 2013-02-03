//---------------------------------------------------------------------------

#ifndef fMainH
#define fMainH
//---------------------------------------------------------------------------
#include <ActnList.hpp>
#include <AppEvnts.hpp>
#include <Classes.hpp>
#include <ComCtrls.hpp>
#include <Controls.hpp>
#include <Dialogs.hpp>
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include <Menus.hpp>
#include <MPlayer.hpp>
#include <StdActns.hpp>
#include <ToolWin.hpp>
#include <Graphics.hpp>
#include <StdCtrls.hpp>
#include <Buttons.hpp>
#include "uConfig.h"
#include "trayicon.h"

//---------------------------------------------------------------------------
class TfrmMain : public TForm
{
__published:
        TMainMenu *mnuMain;
        TMenuItem *mitArchivo;
        TStatusBar *sbrEstado;
        TApplicationEvents *ApplicationEvents;
        TMenuItem *mitAbrir;
        TMenuItem *N1;
        TMenuItem *mitConfImpresora;
        TMenuItem *N2;
        TMenuItem *mitSalir;
        TMenuItem *mitVer;
        TMenuItem *mitVentana;
        TMenuItem *mitAyuda;
        TActionList *alsMain;
        TAction *actNuevo;
        TAction *actAbrir;
        TAction *actConfImpres;
        TAction *actSalir;
        TPrinterSetupDialog *PrinterSetupDialog;
        TControlBar *ControlBar;
        TToolBar *tbrArchivo;
        TToolBar *tbrFunciones;
        TToolBar *tbrOperaciones;
        TToolBar *tbrVer;
        TMenuItem *mitBHerramientas;
        TMenuItem *mitBEstado;
        TAction *actHerramientas;
        TAction *actEstado;
        TToolButton *btnNuevo;
        TToolButton *btnAbrir;
        TToolButton *btnGuardar;
        TToolButton *ToolButton4;
        TToolButton *btnImprimir;
        TWindowClose *actCerrar;
        TWindowCascade *actCascada;
        TWindowTileHorizontal *actTileHoriz;
        TWindowTileVertical *actTileVert;
        TWindowMinimizeAll *actMinimizeAll;
        TWindowArrange *actArrange;
        TMenuItem *mitCascada;
        TMenuItem *mitMosaico;
        TMenuItem *mitAgrupar;
        TMenuItem *mitMinimizar;
        TMenuItem *mitHorizontal;
        TMenuItem *mitVertical;
        TAction *actRegistrarse;
        TAction *actAcerca;
        TMenuItem *mitContenido;
        TMenuItem *mitRegistrarse;
        TMenuItem *N3;
        TMenuItem *mitAcerca;
        TImageList *imlMain;
        TToolButton *btnAdd;
        TToolButton *btnModify;
        TToolButton *btnDelete;
        TToolButton *ToolButton5;
        TToolButton *btnTree;
        TToolButton *btnTrace;
        TOpenDialog *OpenDialog;
        TToolButton *btnLimite;
        TToolButton *btnDerivada;
        TToolButton *btnTaylor;
        TToolButton *btnAreaBajoCurva;
        TToolButton *btnLongArco;
        TToolButton *btnEstCompleto;
        TToolButton *btnIntEjes;
        TToolButton *btnMaxMin;
        TToolButton *ToolButton1;
        TAction *actCalculadora;
        TToolButton *ToolButton2;
        TToolButton *ToolButton3;
        TToolButton *btnPtsInflexion;
        TToolButton *ToolButton6;
        TToolButton *btnIntCurvas;
        TAction *actComplejos;
        TAction *actConicas;
        TAction *actRegresion;
        TAction *actConfiguracion;
        TToolButton *btnVisor;
        TToolButton *btnSelectorGraficas;
        TToolButton *btnZoomMenos;
        TToolButton *btnZoomMas;
        TToolButton *btnIzquierda;
        TToolButton *btnArriba;
        TToolButton *btnAbajo;
        TToolButton *btnDerecha;
        TToolButton *ToolButton21;
        TToolButton *ToolButton22;
        TToolButton *btnTangente;
        TToolButton *btnNormal;
        TToolButton *btnSecante;
        TToolButton *btnAreaEntre2Curvas;
        TToolButton *btnCentroGravedad;
        TToolButton *btnMetodoDiscos;
        TToolButton *btnMetodoArandelas;
        TToolButton *btnMetodoCapas;
        TToolButton *btnParidad;
        TToolButton *btnAsintotas;
        TAction *actCerrarTodas;
        TMenuItem *mitCerrarTodas;
        TAction *actMail;
        TMenuItem *mitMail;
        TSaveDialog *SaveDialog;
        TToolBar *tbrEntretenimiento;
        TMenuItem *N5;
        TTrayIcon *icnTrayIcon;
        TMenuItem *N6;
        TMenuItem *mitTextEditor;
        TAction *actTextEditor;
        TPrintDialog *pdgPrint;
        TImageList *imlHot;
        TImageList *imlDisabled;
        TToolButton *ToolButton8;
        TSaveDialog *sdgImage;
        TToolButton *btnMove;
        TToolButton *btnMira;
        TMenuItem *btnConfiguracion;
        TAction *actFullScreen;
        TToolButton *ToolButton9;
        TToolButton *ToolButton10;
        TMenuItem *Pantallacompleta1;
        TMenuItem *N7;
        TAction *actManual;
        TPopupMenu *mnuTray;
        TMenuItem *Abrir1;
        TMenuItem *Configuracindelaaplicacin1;
        TMenuItem *Comunicarseconelautor1;
        TMenuItem *Acercade1;
        TMenuItem *Salir1;
        TMenuItem *VentanadelEditordetexto1;
        TMenuItem *N8;
        TMenuItem *N9;
        TMenuItem *N10;
	TMenuItem *Nuevo1;
        void __fastcall ApplicationEventsHint(TObject *Sender);
        void __fastcall actConfImpresExecute(TObject *Sender);
        void __fastcall actSalirExecute(TObject *Sender);
        void __fastcall actHerramientasExecute(TObject *Sender);
        void __fastcall actEstadoExecute(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall actAcercaExecute(TObject *Sender);
        void __fastcall actCerrarTodasExecute(TObject *Sender);
        void __fastcall actAbrirExecute(TObject *Sender);
        void __fastcall actMailExecute(TObject *Sender);
        void __fastcall actRegistrarseExecute(TObject *Sender);
        void __fastcall actConfiguracionExecute(TObject *Sender);
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall actTextEditorExecute(TObject *Sender);
        void __fastcall FormActivate(TObject *Sender);
        void __fastcall actFullScreenExecute(TObject *Sender);
        void __fastcall actManualExecute(TObject *Sender);
		void __fastcall FormResize(TObject *Sender);
	void __fastcall actNuevoExecute(TObject *Sender);
private:
        bool Activated;
        TRect oldRect;
        bool FullScreen;
        void AsociarExtension();
        void __fastcall GetMinMaxInfo(TWMGetMinMaxInfo &);
        BEGIN_MESSAGE_MAP
           MESSAGE_HANDLER(WM_GETMINMAXINFO, TWMGetMinMaxInfo, GetMinMaxInfo);
        END_MESSAGE_MAP(TForm);
public:
        __fastcall TfrmMain(TComponent* Owner);
        TConfig Config;
        static void LiberarMemoria();
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmMain *frmMain;
//---------------------------------------------------------------------------
#endif
