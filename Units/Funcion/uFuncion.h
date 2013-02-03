//---------------------------------------------------------------------------
// Módulo: Funcion
// Autor: Gastón Furini
// Fecha: 17/07/2004
// Versión: 1.0
// Descripción:
//      Contiene la definición de funciones matemáticas como
// lista enlazada y una clase para manipularlas.
//---------------------------------------------------------------------------

#ifndef uFuncionH
#define uFuncionH

#include "uIntervalo.h"
#include <Classes.hpp>

  struct TInfoFuncion{ //Información de la función
    char Nombre[116];
    bool Graficar;
    TIntervalo *Intervalo;
  };

  struct TFuncion{    //Lista enlazada de funciones
    TInfoFuncion Info;
    TFuncion*Next;
  };

  //Clase TFunciones
  class TFunciones{
  private:
    TFuncion *Funciones; //Lista enlazada de funciones
    int FCount; //Cantidad de funciones
    //Funciones auxiliares de manipulacion de funciones
    TInfoFuncion GetFuncion(int Index);
    void SetFuncion(int Index, TInfoFuncion Value);
    bool FModificado; // True = Modificada la lista
  public:
    //Constructor
    TFunciones(void);
    //Destructor
    ~TFunciones(void);
    //Agrega una nueva función a la lista
    void Add(TInfoFuncion F);
    //Elimina una funcion de la lista según su orden en ella
    void Delete(int n);
    //Permite manipular funciones ya definidas
    __property TInfoFuncion Items[int Index] = {read = GetFuncion , write = SetFuncion};
    //Permite leer la cantidad de funciones de la lista
    __property int Count = {read = FCount};
    //Permite verificar si se modifico la lista
    __property bool Modificado = {read = FModificado};
    //Traduce la lista de funciones en una coleccion TStrings
    void GetListaFunciones(TStrings*L);
    //Carga una lista de funciones desde archivo
    bool LoadFromFile(AnsiString FileName);
    //Guarda la lista de funciones a archivo
    bool SaveToFile(AnsiString FileName);
    //Agrega una nueva funcion contenida en archivo
    bool ImportFunction(AnsiString FileName);
    //Exporta una funcion definida a archivo
    bool ExportFunction(int Index, AnsiString FileName);
    //Exporta una funcion en forma de muestras a archivo
    bool ExportFunction(int Index, long double a, long double b, long double e, AnsiString FileName);
  };

//---------------------------------------------------------------------------
#endif
