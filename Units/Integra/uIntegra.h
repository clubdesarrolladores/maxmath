//---------------------------------------------------------------------------
// M�dulo: Integra
// Autor: Gast�n Furini
// Fecha: 11/01/2005
// Versi�n: 1.0
// Descripci�n:
//      Contiene la definici�n de una clase que permite integrar una expresi�n
//---------------------------------------------------------------------------

#ifndef uIntegraH
#define uIntegraH

#include <String.h>
#include "uEval_Ex.h"

//---------------------------------------------------------------------------
class TIntegrate
{
  private:
    TEval Eval;
    AnsiString Exp;
    int cont;
  public:
    void Expression(AnsiString exp);
    long double Integrate_Adap(long double izq, long double der, long double &err);
    long double Integrate_Simp(long double izq, long double der, int div);
};                                                                           
//---------------------------------------------------------------------------
#endif
