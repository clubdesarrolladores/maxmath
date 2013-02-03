//---------------------------------------------------------------------------
// M�dulo: Intervalo
// Autor: Gast�n Furini
// Fecha: 14/07/2004
// Versi�n: 1.0
// Descripci�n:
//      Contiene la definici�n de intervalos de funciones matem�ticas como
// lista enlazada y m�todos para manipularlos.
//---------------------------------------------------------------------------

#ifndef uIntervaloH
#define uIntervaloH

#include <String.h>

  // Longitud maxima de cadena
  const int MaxExpr = 1001;

  // Define el modo como se graficar� el intervalo
  enum TTipoGrafico {tgContinuo, tgDiscreto};

  // Define la informaci�n del intervalo y su operador de comparaci�n
  struct TInfoInt{
    long double Min, Max;
    char Expresion[MaxExpr];
    TTipoGrafico TipoGrafico;
    int Color;
    int Grosor;
    bool operator ==(const TInfoInt& Int) const
    {
       return (Min ==  Int.Min) && (Max == Int.Max) &&
              (strcmp(Expresion,Int.Expresion) == 0) &&
              (TipoGrafico == Int.TipoGrafico) && (Color == Int.Color) &&
              (Grosor == Int.Grosor);
    }
  };

  // Define la estructura para lista enlazada de intervalos 
  struct TIntervalo{
    TInfoInt Info;
    TIntervalo*Next;
  };

  // Define el error al tratar de insertar un nuevo intervalo en la lista
  enum TError {erNoError, erIntervaloAbsurdo, erSuperposicion};

  // Permite insertar un nuevo intervalo en forma ordenada
  void Add(TIntervalo*&Intervalos,TInfoInt Info);
  // Permite eliminar un intervalo a partir de Info. true = aplicado
  bool Delete(TIntervalo*&Intervalos,TInfoInt Info);
  // Permite eliminar todos los intervalos de la lista --> Lista vacia
  void DeleteAll(TIntervalo*&Intervalos);
  // Cuenta la cantidad de intervalos
  int Count(TIntervalo*&Intervalos);
  // Busca un intervalo a partir de su orden en la lista. Primero = 0
  TIntervalo* Find(TIntervalo*&Intervalos,int n);
  // Busca su posici�n en la lista a partir de Info. Lista vac�a = -1
  int Find(TIntervalo*&Intervalos,TInfoInt Info);
  // Busca un intervalo tomando en cuenta que Min <= x < Max
  TIntervalo* Find(TIntervalo*&Intervalos,long double x);
  // Retorna en [a,b) el soporte de la lista de intervalos
  void Soporte(TIntervalo*&Intervalos,long double *a, long double *b);
  // Chequea si el nuevo intervalo es admitido por la lista. Ver TError
  TError CheckNewInterval(TIntervalo*&Intervalos,TInfoInt Info);
  // Realiza una copia por valor de la lista de intervalos
  void Copy(TIntervalo*&Intervalos,TIntervalo*&Copia);

//---------------------------------------------------------------------------
#endif
