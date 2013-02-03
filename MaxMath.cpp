//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fSplash.h"

//---------------------------------------------------------------------------
USEFORM("fMain.cpp", frmMain);
USEFORM("Forms\About\fAbout.cpp", frmAbout);
USEFORM("Forms\Configuracion\fConfiguracion.cpp", frmConfiguracion);
USEFORM("Forms\TextEditor\fTextEditor.cpp", frmTextEditor);
USEFORM("Forms\Child\fChild.cpp", frmChild);
USEFORM("Forms\Funcion\fFuncion.cpp", frmFuncion);
USEFORM("Forms\SelectFunc\fSelectFunc.cpp", frmSelectFunc);
USEFORM("Forms\SelectorGraficas\fSelectorGraficas.cpp", frmSelectorGraficas);
USEFORM("Forms\Arbol\fArbol.cpp", frmArbol);
USEFORM("Forms\PropVisor\fPropVisor.cpp", frmPropVisor);
USEFORM("Forms\IngresoDatos\fIngresoDatos.cpp", frmIngresoDatos);
USEFORM("Forms\Limite\fLimite.cpp", frmLimite);
USEFORM("Forms\Trace\fTrace.cpp", frmTrace);
USEFORM("Forms\Reporte\fReporte.cpp", frmReporte);
USEFORM("Forms\Expresion\fExpresion.cpp", frmExpresion);
USEFORM("Forms\Splash\fSplash.cpp", frmSplash);
USEFORM("Forms\Rectas\fRectas.cpp", frmRectas);
USEFORM("Forms\NuevoProyecto\fNuevoProyecto.cpp", frmNuevoProyecto);
USEFORM("Forms\Rectas\nuevaRecta\nuevaRecta.cpp", frmNuevaRecta);
USEFORM("Forms\Vectores\fVectores.cpp", frmVectores);
USEFORM("Forms\Matrices\fMatrices.cpp", frmMatrices);
USEFORM("Forms\Matrices\NuevaMatriz\fNuevaMatriz.cpp", frmNuevaMatriz);
USEFORM("Forms\VectoresR3\fVectoresR3.cpp", frmVectoresR3);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
  try{
    TfrmSplash *frmSplash = new TfrmSplash(NULL);
    frmSplash->Show();
    frmSplash->UpdateProgress("MaxMath Core", 25);
    Application->Initialize();
    Application->Title = "MaxMath";
    Application->HelpFile = "";
    frmSplash->UpdateProgress("Creando procesos", 25);
    CreateMutex( NULL, true, Application->Title.c_str());
    if(ERROR_ALREADY_EXISTS == GetLastError())
      throw Exception("Ya existen instancias de Maxmath,\nno se cargará esta nueva instancia.");
    frmSplash->UpdateProgress("Creando formulario principal", 25);
    Application->CreateForm(__classid(TfrmMain), &frmMain);
         Application->CreateForm(__classid(TfrmTextEditor), &frmTextEditor);
         delete frmSplash;
    Application->Run();
  }catch (Exception &exception){
    Application->ShowException(&exception);
  }catch (...){
    try{
      throw Exception("");
    }catch (Exception &exception){
      Application->ShowException(&exception);
    }
  }
  return 0;
}
//---------------------------------------------------------------------------
