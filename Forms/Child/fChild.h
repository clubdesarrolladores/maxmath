//---------------------------------------------------------------------------

#ifndef fChildH
#define fChildH
//---------------------------------------------------------------------------

#include <ActnList.hpp>
#include <Classes.hpp>
#include <Controls.hpp>
#include <Dialogs.hpp>
#include <Menus.hpp>
#include "Designer2D.h"

//---------------------------------------------------------------------------
class TfrmChild : public TForm
{
__published:	// IDE-managed Components
        TMainMenu *mnuChild;
        TActionList *alsChild;
        TMenuItem *mitArchivo;
        TMenuItem *mitFunciones;
        TMenuItem *Operaciones1;
        TMenuItem *Ver1;
        TMenuItem *mitNuevo;
        TMenuItem *mitAbrir;
        TMenuItem *mitGuardar;
        TMenuItem *mitGuardarComo;
        TMenuItem *mitCerrar;
        TMenuItem *N1;
        TMenuItem *mitImportar;
        TMenuItem *mitExportar;
        TMenuItem *N2;
        TMenuItem *mitConfImpres;
        TMenuItem *mitImprimir;
        TMenuItem *N3;
        TMenuItem *mitSalir;
        TMenuItem *mitImpFuncion;
        TMenuItem *mitExpFuncion;
        TMenuItem *mitExpImagen;
        TAction *actGuardar;
        TAction *actGuardarComo;
        TAction *actImpFuncion;
        TAction *actExpFuncion;
        TAction *actExpImagen;
        TAction *actNuevaFuncion;
        TAction *actModificarFuncion;
        TAction *actEliminarFuncion;
        TAction *actEliminarTodas;
        TAction *actArbolFunciones;
        TAction *actTrace;
        TMenuItem *mitAgregar;
        TMenuItem *mitModificar;
        TMenuItem *mitEliminar;
        TMenuItem *mitEliminartodas;
        TMenuItem *N4;
        TMenuItem *mitArbolFunciones;
        TMenuItem *mitTrace;
        TAction *actImprimir;
        TAction *actLimite;
        TAction *actDerivada;
        TAction *act2daDerivada;
        TAction *actTangente;
        TAction *actNormal;
        TAction *actSecante;
        TAction *actTaylor;
        TAction *actAreaBajoCurva;
        TAction *actAreaEntre2Curvas;
        TAction *actAreaLateralSupRevolucion;
        TAction *actVolDiscos;
        TMenuItem *mitLimite;
        TMenuItem *N5;
        TMenuItem *mitDerivada;
        TMenuItem *mit2daDerivada;
        TMenuItem *mitRectas;
        TMenuItem *mitTangente;
        TMenuItem *mitNormal;
        TMenuItem *mitSecante;
        TMenuItem *mitTaylor;
        TMenuItem *N6;
        TMenuItem *mitArea;
        TMenuItem *mitAreaBajoCurva;
        TMenuItem *mitAreaEntre2Curvas;
        TMenuItem *mitAreaLateralSupRevolucion;
        TMenuItem *mitVolumen;
        TMenuItem *mitVolDiscos;
        TMenuItem *mitVolArandelas;
        TMenuItem *mitCapas;
        TAction *actVolArandelas;
        TAction *actVolCapas;
        TMenuItem *mitLongArco;
        TMenuItem *mitCentroGravedad;
        TMenuItem *N7;
        TAction *actLongArco;
        TAction *actCentroGravedad;
        TAction *actEstudioCompleto;
        TMenuItem *mitEstudioCompleto;
        TAction *actInterseccionesEjes;
        TAction *actParidad;
        TAction *actPtsCriticos1eraDerivada;
        TAction *actIntCrecimiento;
        TAction *actMaximos;
        TAction *actPtsCriticos2daDerivada;
        TAction *actIntConcavidad;
        TAction *actPtsInflexion;
        TAction *actAsintotas;
        TAction *actInterseccion2Curvas;
        TMenuItem *mitEstudiode;
        TMenuItem *mitInterseccionesEjes;
        TMenuItem *N8;
        TMenuItem *mitIntersecciones2Curvas;
        TMenuItem *mitParidad;
        TMenuItem *mit1eraDerivada;
        TMenuItem *mit2Derivada;
        TMenuItem *mitAsintotas;
        TMenuItem *mitPtsCriticos1eraDerivada;
        TMenuItem *mitIntCrec;
        TMenuItem *mitMaximosMinimos;
        TMenuItem *mitPtscriticos2derivada;
        TMenuItem *mitIntConcavidadConvexidad;
        TMenuItem *mitPtsInflexion;
        TMenuItem *mitFullScreen;
        TMenuItem *N9;
        TMenuItem *mitBHerramientas;
        TMenuItem *mitBEstado;
        TMenuItem *N10;
        TMenuItem *mitVisor;
        TMenuItem *mitSelectorGraficas;
        TMenuItem *mitZoom;
        TMenuItem *mitZoomMenos;
        TMenuItem *mitZoomDefault;
        TMenuItem *mitZoomMas;
        TAction *actVisor;
        TAction *actSelectorGraficas;
        TAction *actZoomMenos;
        TAction *actZoomDefault;
        TAction *actZoomMas;
        TAction *actCentrar;
        TAction *actIzq;
        TAction *actDer;
        TAction *actArr;
        TAction *actAba;
        TMenuItem *N11;
        TPopupMenu *pmuVisor;
        TMenuItem *mitCopiarImagen;
        TAction *actCopiar;
        TMenuItem *mitTextEditor;
        TDesigner2D *dsgVisor;
        TMenuItem *N12;
        TMenuItem *Centrargrfica1;
        TAction *actSetZoomMas;
        TAction *actSetZoomMenos;
        TAction *actMove;
        TAction *actMira;
        TAction *actExpMuestras;
        TMenuItem *Exportarmuestras1;
        TMenuItem *Configuracindelaaplicacin1;
	TMenuItem *N13;
	TMenuItem *Nuevafuncin1;
	TMenuItem *Eliminarfuncin1;
	TMenuItem *Acercamiento1;
	TMenuItem *Alejamiento1;
	TMenuItem *Modificarfuncin1;
	TMenuItem *N14;
	TMenuItem *Arboldefunciones1;
	TMenuItem *Imprimir1;
	TMenuItem *Caractersticasdelvisor1;
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall actNuevaFuncionExecute(TObject *Sender);
        void __fastcall actModificarFuncionExecute(TObject *Sender);
        void __fastcall actEliminarFuncionExecute(TObject *Sender);
        void __fastcall actEliminarTodasExecute(TObject *Sender);
        void __fastcall FormActivate(TObject *Sender);
        void __fastcall actTraceExecute(TObject *Sender);
        void __fastcall actArbolFuncionesExecute(TObject *Sender);
        void __fastcall actSelectorGraficasExecute(TObject *Sender);
        void __fastcall actGuardarComoExecute(TObject *Sender);
        void __fastcall actGuardarExecute(TObject *Sender);
        void __fastcall actExpFuncionExecute(TObject *Sender);
        void __fastcall actImpFuncionExecute(TObject *Sender);
        void __fastcall actAreaBajoCurvaExecute(TObject *Sender);
        void __fastcall actVisorExecute(TObject *Sender);
        void __fastcall actExpImagenExecute(TObject *Sender);
        void __fastcall actCopiarExecute(TObject *Sender);
        void __fastcall actCentrarExecute(TObject *Sender);
        void __fastcall actIzqExecute(TObject *Sender);
        void __fastcall actDerExecute(TObject *Sender);
        void __fastcall actArrExecute(TObject *Sender);
        void __fastcall actAbaExecute(TObject *Sender);
        void __fastcall actZoomDefaultExecute(TObject *Sender);
        void __fastcall actZoomMasExecute(TObject *Sender);
        void __fastcall actZoomMenosExecute(TObject *Sender);
        void __fastcall actImprimirExecute(TObject *Sender);
        void __fastcall actLimiteExecute(TObject *Sender);
        void __fastcall actDerivadaExecute(TObject *Sender);
        void __fastcall act2daDerivadaExecute(TObject *Sender);
        void __fastcall actTangenteExecute(TObject *Sender);
        void __fastcall actNormalExecute(TObject *Sender);
        void __fastcall actSecanteExecute(TObject *Sender);
        void __fastcall FormKeyUp(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall dsgVisorMouseMove(TObject *Sender,
          TShiftState Shift, int X, int Y);
        void __fastcall dsgVisorMouseDown(TObject *Sender,
          TMouseButton Button, TShiftState Shift, int X, int Y);
        void __fastcall actLongArcoExecute(TObject *Sender);
        void __fastcall actAreaLateralSupRevolucionExecute(
          TObject *Sender);
        void __fastcall actVolDiscosExecute(TObject *Sender);
        void __fastcall actVolCapasExecute(TObject *Sender);
        void __fastcall actVolArandelasExecute(TObject *Sender);
        void __fastcall actCentroGravedadExecute(TObject *Sender);
        void __fastcall actTaylorExecute(TObject *Sender);
        void __fastcall actAreaEntre2CurvasExecute(TObject *Sender);
        void __fastcall actSetZoomMasExecute(TObject *Sender);
        void __fastcall actSetZoomMenosExecute(TObject *Sender);
        void __fastcall actMoveExecute(TObject *Sender);
        void __fastcall dsgVisorMouseUp(TObject *Sender,
          TMouseButton Button, TShiftState Shift, int X, int Y);
        void __fastcall actMiraExecute(TObject *Sender);
        void __fastcall actInterseccionesEjesExecute(TObject *Sender);
        void __fastcall actEstudioCompletoExecute(TObject *Sender);
        void __fastcall actMaximosExecute(TObject *Sender);
        void __fastcall actParidadExecute(TObject *Sender);
        void __fastcall actPtsCriticos1eraDerivadaExecute(TObject *Sender);
        void __fastcall actPtsCriticos2daDerivadaExecute(TObject *Sender);
        void __fastcall actIntCrecimientoExecute(TObject *Sender);
        void __fastcall actIntConcavidadExecute(TObject *Sender);
        void __fastcall actPtsInflexionExecute(TObject *Sender);
        void __fastcall actExpMuestrasExecute(TObject *Sender);
        void __fastcall actAsintotasExecute(TObject *Sender);
        void __fastcall actInterseccion2CurvasExecute(TObject *Sender);
private:	// User declarations
        int px, py;
        AnsiString PathName;
        AnsiString AutoName(void);
        void EstadoControles(void);
public:		// User declarations
        __fastcall TfrmChild(TComponent* Owner);
        __fastcall TfrmChild(TComponent* Owner, AnsiString Archivo);
        TFunciones Funciones;
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmChild *frmChild;
//---------------------------------------------------------------------------
#endif
