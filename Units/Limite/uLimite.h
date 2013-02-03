/**
 * M�dulo: Limite
 * Contiene la definici�n de la clase TLimite que calcula l�mites de
 * funciones matem�ticas
 *
 * @author      Gast�n Furini
 * @version     1.0
 * @since       14/02/2005
 * @revision    22/01/2007
 *				26/10/2007
 */

#ifndef uLimiteH
#define uLimiteH

#include "uEval_Ex.h"
//---------------------------------------------------------------------------
class TLimite
{
  private:
    TEval Eval; // Objeto para evaluar expresiones
//---------------------------------------------------------------------------
// LimiteIzq (Limite lateral izquierdo de una funci�n)
    bool LimiteIzq(AnsiString Funcion, long double a, long double &L);
// Entrada:
//      Funcion (AnsiString): Expresi�n matem�tica en notaci�n infija
//      a (long double): Valor al que tiende x
// Salida:
//      L (long double&): Valor al que tiende f(x) cuando x -> a-
//      LimiteIzq (bool): Exito = true
//---------------------------------------------------------------------------
// LimiteDer (Limite lateral derecho de una funci�n)
    bool LimiteDer(AnsiString Funcion, long double a, long double &L);
// Entrada:
//      Funcion (AnsiString): Expresi�n matem�tica en notaci�n infija
//      a (long double): Valor al que tiende x
// Salida:
//      L (long double&): Valor al que tiende f(x) cuando x -> a+
//      LimiteDer (bool): Exito = true
//---------------------------------------------------------------------------
  public:
//---------------------------------------------------------------------------
// Limite (Limite de una funci�n)
    bool Limite(AnsiString Funcion, long double a, long double &L);
// Entrada:
//      Funcion (AnsiString): Expresi�n matem�tica en notaci�n infija
//      a (long double): Valor al que tiende x
// Salida:
//      L (long double&): Valor al que tiende f(x) cuando x -> a
//      Limite (bool): Exito = true
//---------------------------------------------------------------------------
// Limite (Limite de una funci�n, incluye los limites laterales)
    bool Limite(AnsiString Funcion, long double a, long double &L,
        long double &Li, long double &Ld);
// Entrada:
//      Funcion (AnsiString): Expresi�n matem�tica en notaci�n infija
//      a (long double): Valor al que tiende x
// Salida:
//      L (long double&): Limite
//      Li (long double&): Limite izquierdo
//      Ld (long double&): Limite derecho
//      Limite (bool): Exito = true
//---------------------------------------------------------------------------
};

//---------------------------------------------------------------------------

/*
 * Clase TLimit
*/

enum TLimitResult {LimitOk, noLimit};

struct LimitValue
{
	long double value;
    bool infinity;
    bool negative;
};

class TLimit
{
  private:
    TEval eval;
    AnsiString expr;
    LimitValue value, limit, leftLimit, rightLimit;
    bool hasLimit, hasLeftLimit, hasRightLimit;
  public:
    TLimit(AnsiString expr);
	bool getLimit(LimitValue value);
    bool getLeftLimit(LimitValue value);
    bool getRightLimit(LimitValue value);
    __property bool HasLimit = {read = hasLimit};
    __property bool HasLeftLimit = {read = hasLeftLimit};
    __property bool HasRightLimit = {read = hasRightLimit};
    __property LimitValue Limit = {read = Limit};
    __property LimitValue LeftLimit = {read = LeftLimit};
    __property LimitValue RightLimit = {read = RightLimit};
};



#endif
