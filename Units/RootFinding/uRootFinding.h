//---------------------------------------------------------------------------
// Módulo: RootFinding
// Autor: Gastón Furini
// Fecha: 11/01/2005
// Versión: 1.0
// Descripción:
//      Contiene la definición de métodos para encontrar ceros de expresiones.
//---------------------------------------------------------------------------

#ifndef uRootFindingH
#define uRootFindingH
#include <system.hpp>

int zbrac(AnsiString F, long double *x1, long double *x2);
void zbrak(AnsiString F, long double x1, long double  x2, int n,
        long double  xb1[], long double  xb2[], int *nb);
long double zbrent(AnsiString F, long double x1, long double x2,
        long double tol);
long double Biseccion(AnsiString F, long double a, long double b,
        long double error = 1E-6);
long double Falsa_Posicion(AnsiString F, long double a, long double b,
        long double error = 1E-6);
long double Secante(AnsiString F, long double x1, long double x2,
        long double error = 1E-6);

//---------------------------------------------------------------------------
#endif
