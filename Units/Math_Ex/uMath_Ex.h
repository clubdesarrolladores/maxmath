//---------------------------------------------------------------------------

#ifndef uMath_ExH
#define uMath_ExH

#include <classes.hpp>

AnsiString __fastcall Recta(long double m, long double x, long double y);
long double gcd(long double a, long double b);
void simplificar(long double &num,long double &den);
void fraccion(long double Number, long double &num,long double &den);
AnsiString FracToStr(long double num,long double den);
long double factorial(long double x);
AnsiString __fastcall monomio(long double C, long double F, int G);

//---------------------------------------------------------------------------
#endif
