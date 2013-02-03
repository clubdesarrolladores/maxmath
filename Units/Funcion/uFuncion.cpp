//---------------------------------------------------------------------------


#pragma hdrstop

#include <iomanip.h>
#include <fstream.h>

#include "uFuncion.h"
#include "uEval_Ex.h"

//Versión del tipo de archivo de funciones
const float Version = 1.0;
const char ID[32] = "Archivo MaxMath - Tipo PMM";
//---------------------------------------------------------------------------
//La cabecera del archivo
struct TFCabecera
{
  char ID[32];
  float Version;
  int NFunciones; //Numero de funciones en el archivo
};

//Definicion de funciones en el archivo
struct TFFuncion
{
  char Nombre[116];
  bool Graficar;
  int NIntervalos; // Numero de intervalos por funcion
};

//Definicion de intervalos en el archivo
struct TFIntervalo
{
  long double Min, Max;
  char Expresion[MaxExpr];
  TTipoGrafico TipoGrafico;
  int Color;
  int Grosor;
};

//-----------------------------------------------------------------------------
//Permite obtener una función específica
TInfoFuncion TFunciones::GetFuncion(int Index)
{
  TFuncion *w;
  int i = 0;
  w = Funciones;
  while( (w != NULL) && (i<Index) ){
    w = w->Next;
    i++;}
  return w->Info;
}

//---------------------------------------------------------------------------
//Permite modificar una función específica
void TFunciones::SetFuncion(int Index, TInfoFuncion Value)
{
  TFuncion *w;
  int i = 0;
  w = Funciones;
  while( (w != NULL) && (i<Index) ){
    w = w->Next;
    i++;}
  w->Info = Value;
  FModificado = true;
}

//---------------------------------------------------------------------------
//Constructor
TFunciones::TFunciones(void)
{
  Funciones = NULL;
  FCount = 0;
  FModificado = false;
}

//---------------------------------------------------------------------------
//Destructor
TFunciones::~TFunciones(void)
{
  while( Count > 0 )
    Delete(0);
}

//---------------------------------------------------------------------------
//Agrega una nueva función a la lista
void TFunciones::Add(TInfoFuncion F)
{
  TFuncion *w,*z;
  w = new TFuncion;
  w->Info = F;
  w->Next = NULL;
  if( Funciones == NULL )
    Funciones = w;
  else{
    z = Funciones;
    while( z->Next != NULL )
      z = z->Next;
    z->Next = w;}
  FCount++;
  FModificado = true;
}

//---------------------------------------------------------------------------
//Elimina una funcion de la lista según su orden en ella
void TFunciones::Delete(int n)
{
  TFuncion *w,*z;
  int i = 1;
  w = Funciones;
  if( w != NULL ){
    if( n == 0 ){
      Funciones = w->Next;
      DeleteAll(w->Info.Intervalo);
      delete w;}
    else{
      while( (w->Next != NULL) && (i<n) ){
        w = w->Next;
        i++;}
      z = w->Next;
      w->Next = z->Next;
      DeleteAll(z->Info.Intervalo);
      delete z;
    }
    FCount--;
    FModificado = true;
  }
}

//---------------------------------------------------------------------------
//Traduce la lista de funciones en una coleccion TStrings
void TFunciones::GetListaFunciones(TStrings*L)
{
  L->Clear();
  for( int i = 0; i < Count; i++) {
	AnsiString s(GetFuncion(i).Nombre);
	L->Add(s);
  }
}

//---------------------------------------------------------------------------
//Carga una lista de funciones desde archivo
bool TFunciones::LoadFromFile(AnsiString FileName)
{
  int InfoSize;
  TInfoFuncion F;
  TInfoInt I;
  TFCabecera FCabecera;
  TFFuncion FFuncion;
  TFIntervalo FIntervalo;
  TFileStream *Archivo;
  try{
    if( !FileExists(FileName) )
      return false;
    else{
      Archivo = new TFileStream(FileName, fmOpenRead|fmShareExclusive);
      Archivo->Seek(0, soFromBeginning);
      InfoSize = sizeof(TFCabecera);
      Archivo->Read(&FCabecera, InfoSize);
      if(strcmp(FCabecera.ID, ID) != 0)
        throw Exception("Archivo desconocido");
      //FCabecera.Version; Contiene la versión del archivo
      for( int i = 0; i < FCabecera.NFunciones; i++){
        InfoSize = sizeof(TFFuncion);
        Archivo->Read(&FFuncion, InfoSize);
        strcpy(F.Nombre, FFuncion.Nombre);
        F.Graficar = FFuncion.Graficar;
        F.Intervalo = NULL;
        InfoSize = sizeof(TFIntervalo);
        for( int j = 0; j < FFuncion.NIntervalos; j++){
          Archivo->Read(&FIntervalo, InfoSize);
          I.Min = FIntervalo.Min;
          I.Max = FIntervalo.Max;
          strcpy(I.Expresion, FIntervalo.Expresion);
          I.TipoGrafico = FIntervalo.TipoGrafico;
          I.Color = FIntervalo.Color;
          I.Grosor = FIntervalo.Grosor;
          uIntervaloH::Add(F.Intervalo, I);}
        Add(F);
      }
      FModificado = false;
      delete Archivo;
      return true;}
    }
  catch(...){
    return false;}
}

//---------------------------------------------------------------------------
//Guarda la lista de funciones a archivo
bool TFunciones::SaveToFile(AnsiString FileName)
{
  int InfoSize;
  TInfoFuncion F;
  TInfoInt I;
  TFCabecera FCabecera;
  TFFuncion FFuncion;
  TFIntervalo FIntervalo;
  TFileStream *Archivo;
  try{
    if( FileExists(FileName) )
      Archivo = new TFileStream(FileName, fmOpenWrite|fmShareExclusive);
    else
      Archivo = new TFileStream(FileName, fmOpenWrite|fmShareExclusive|fmCreate);
    Archivo->Seek(0, soFromBeginning);
    InfoSize = sizeof(TFCabecera);
    strcpy(FCabecera.ID, ID);
    FCabecera.Version = Version;
    FCabecera.NFunciones = FCount;
    Archivo->Write(&FCabecera,InfoSize);
    for( int i = 0; i < FCabecera.NFunciones; i++){
      F = GetFuncion(i);
      strcpy(FFuncion.Nombre, F.Nombre);
      FFuncion.Graficar = F.Graficar;
      FFuncion.NIntervalos = uIntervaloH::Count(F.Intervalo);
      InfoSize = sizeof(TFFuncion);
      Archivo->Write(&FFuncion,InfoSize);
      InfoSize = sizeof(TFIntervalo);
      for( int j = 0; j < FFuncion.NIntervalos; j++){
        I = Find(F.Intervalo, j)->Info;
        FIntervalo.Min = I.Min;
        FIntervalo.Max = I.Max;
        strcpy(FIntervalo.Expresion, I.Expresion);
        FIntervalo.TipoGrafico = I.TipoGrafico;
        FIntervalo.Color = I.Color;
        FIntervalo.Grosor = I.Grosor;
        Archivo->Write(&FIntervalo,InfoSize);}
      }
    delete Archivo;
    FModificado = false;
    return true;
  }
  catch(...){
    return false;}
}

//---------------------------------------------------------------------------
//Agrega una nueva funcion contenida en archivo
bool TFunciones::ImportFunction(AnsiString FileName)
{
  int InfoSize;
  TInfoFuncion F;
  TInfoInt I;
  TFFuncion FFuncion;
  TFIntervalo FIntervalo;
  TFileStream *Archivo;
  try{
    if( !FileExists(FileName) )
      return false;
    else{
      Archivo = new TFileStream(FileName, fmOpenRead|fmShareExclusive);
      Archivo->Seek(0, soFromBeginning);
      InfoSize = sizeof(TFFuncion);
      Archivo->Read(&FFuncion, InfoSize);
      strcpy(F.Nombre, FFuncion.Nombre);
      F.Graficar = FFuncion.Graficar;
      F.Intervalo = NULL;
      InfoSize = sizeof(TFIntervalo);
      for( int i = 0; i < FFuncion.NIntervalos; i++){
        Archivo->Read(&FIntervalo, InfoSize);
        I.Min = FIntervalo.Min;
        I.Max = FIntervalo.Max;
        strcpy(I.Expresion, FIntervalo.Expresion);
        I.TipoGrafico = FIntervalo.TipoGrafico;
        I.Color = FIntervalo.Color;
        I.Grosor = FIntervalo.Grosor;
        uIntervaloH::Add(F.Intervalo, I);}
      Add(F);
      delete Archivo;
      return true;}
    }
  catch(...){
    return false;}
}

//---------------------------------------------------------------------------
//Exporta una funcion definida a archivo
bool TFunciones::ExportFunction(int Index, AnsiString FileName)
{
  int InfoSize;
  TInfoFuncion F;
  TInfoInt I;
  TFFuncion FFuncion;
  TFIntervalo FIntervalo;
  TFileStream *Archivo;
  try{
    if( FileExists(FileName) )
      Archivo = new TFileStream(FileName, fmOpenWrite|fmShareExclusive);
    else
      Archivo = new TFileStream(FileName, fmOpenWrite|fmShareExclusive|fmCreate);
    Archivo->Seek(0, soFromBeginning);
    InfoSize = sizeof(TFFuncion);
    F = GetFuncion(Index);
    strcpy(FFuncion.Nombre, F.Nombre);
    FFuncion.Graficar = F.Graficar;
    FFuncion.NIntervalos = uIntervaloH::Count(F.Intervalo);
    Archivo->Write(&FFuncion,InfoSize);
    InfoSize = sizeof(TFIntervalo);
    for( int i = 0; i < FFuncion.NIntervalos; i++){
      I = Find(F.Intervalo, i)->Info;
      FIntervalo.Min = I.Min;
      FIntervalo.Max = I.Max;
      strcpy(FIntervalo.Expresion, I.Expresion);
      FIntervalo.TipoGrafico = I.TipoGrafico;
      FIntervalo.Color = I.Color;
      FIntervalo.Grosor = I.Grosor;
      Archivo->Write(&FIntervalo,InfoSize);}
    delete Archivo;
    return true;
  }
  catch(...){
    return false;}
}

//---------------------------------------------------------------------------
//Exporta una funcion en forma de muestras a archivo
bool TFunciones::ExportFunction(int Index, long double a, long double b, long double e, AnsiString FileName)
{
  TInfoFuncion F;
  TIntervalo *I;
  TEval Eval;
  ofstream out;
  out.open(FileName.c_str(), ios::out);
  if( out.fail() )
    return false;
  F = GetFuncion(Index);
  out << "// (" << FileName.c_str() << ")" << endl;
  out << "// Muestreo de " << F.Nombre  << " producido con MaxMath 1.0"<< endl << endl;
  for( long double x = a; x < b; x+=e)
  {
    I = Find(F.Intervalo, x);
    if( I != NULL )
    {
      Eval.Evaluate(I->Info.Expresion);
      out << setw(14) << setprecision(10) << x << "\t" << Eval.Value(x) << endl;
    }
    else
      out << setw(14) << setprecision(10) << x << "\t" << 0 << endl;
  }
  out.close();
  return true;
}

//---------------------------------------------------------------------------

#pragma package(smart_init)
