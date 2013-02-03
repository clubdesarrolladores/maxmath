//---------------------------------------------------------------------------
// M�dulo: Metodos
// Autor: Gast�n Furini
// Fecha: 11/01/2005
// Versi�n: 1.0
// Descripci�n:
//      Contiene la definici�n de m�todos para los c�lculos diferenciales,
// integrales, y estudio completo.
//---------------------------------------------------------------------------

#ifndef uMetodosH
#define uMetodosH

#include "uFuncion.h"
#include "uColas.h"


bool __fastcall Continua(TInfoFuncion Funcion, long double a, long double b);
bool __fastcall Continua(TInfoFuncion Funcion, long double c);
//---------------------------------------------------------------------------
// Derivada (Derivada de una funci�n)
TInfoFuncion __fastcall Derivada(TInfoFuncion Funcion);
// Entrada:
//      Funcion (TInfoFuncion): Funci�n a derivar
// Salida:
//      Derivada (TInfoFuncion): Funci�n derivada
//---------------------------------------------------------------------------
// SegDerivada (Derivada segunda de una funci�n)
TInfoFuncion __fastcall SegDerivada(TInfoFuncion Funcion);
// Entrada:
//      Funcion (TInfoFuncion): Funci�n a derivar
// Salida:
//      SegDerivada (TInfoFuncion): Funci�n derivada dos veces
//---------------------------------------------------------------------------
// Recta_Tangente (Recta tangente a una funci�n)
TInfoFuncion __fastcall Recta_Tangente(TInfoFuncion Funcion, long double c);
// Entrada:
//      Funcion (TInfoFuncion): Funci�n objetivo
//      c (long double): Coordenada x del punto tangencial
// Salida:
//      Recta_Tangente (TInfoFuncion): Recta tangente a Funcion en x = c
//---------------------------------------------------------------------------
// Recta_Normal (Recta normal a una funci�n)
TInfoFuncion __fastcall Recta_Normal(TInfoFuncion Funcion, long double c);
// Entrada:
//      Funcion (TInfoFuncion): Funci�n objetivo
//      c (long double): Coordenada x del punto normal
// Salida:
//      Recta_Normal (TInfoFuncion): Recta normal a Funcion en x = c
//---------------------------------------------------------------------------
// Recta_Secante (Recta secante a una funci�n)
TInfoFuncion __fastcall Recta_Secante(TInfoFuncion Funcion, long double a,
        long double b);
// Entrada:
//      Funcion (TInfoFuncion): Funci�n objetivo
//      a (long double): Coordenada x del primer punto de intersecci�n
//      b (long double): Coordenada x del segundo punto de intersecci�n
// Salida:
//      Recta_Secante (TInfoFuncion): Recta secante a Funcion en x1 = a y x2 = b
//---------------------------------------------------------------------------
// PolinomioTaylor
TInfoFuncion __fastcall PolinomioTaylor(TInfoFuncion Funcion, long double c,
        unsigned int &g);
//---------------------------------------------------------------------------
// IntegralDefinida
long double __fastcall IntegralDefinida(TInfoFuncion Funcion, long double a,
        long double b, long double ErrorCalc = 0.0001);
// Descripci�n:
//      Calcula la integral definida de una funci�n, tambi�n conocida como �rea
//      de una regi�n cerrada limitada superiormente por la propia funci�n,
//      inferiormente por el eje y = 0, a la izquierda por la recta x = a y a la
//      derecha la recta x = b.
//      El calculo se realiza mediante un metodo de aproximaci�n que regresa el
//      resultado con un error menor a ErrorCalc.
// Entrada:
//      Funcion (TInfoFuncion): Funci�n objetivo
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
//      ErrorCalc (long double): Margen de error aceptado
// Salida:
//      IntegralDefinida (long double): Valor de la integral definida
// Nota:
//      Si Funcion < 0 para todo x en [a, b] entonces IntegralDefinida < 0
//      Si Funcion = 0 para todo x en [a, b] entonces IntegralDefinida = 0
//---------------------------------------------------------------------------
// Area2Curvas
long double __fastcall Area2Curvas(TInfoFuncion F, TInfoFuncion G,
        long double a, long double b, long double ErrorCalc = 0.0001);
// Entrada:
//      F (TInfoFuncion): Funci�n "Techo"
//      G (TInfoFuncion): Funci�n "Piso"
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
//      ErrorCalc (long double): Margen de error aceptado
// Salida:
//      Area2Curvas (long double): Valor del �rea de la regi�n encerrada entre
//              dichos limites
//---------------------------------------------------------------------------
// AreaLatSupRev
long double __fastcall AreaLatSupRev(TInfoFuncion Funcion, long double a,
        long double b, long double eje);
// Entrada:
//      Funcion (TInfoFuncion): Funci�n objetivo
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
//      eje (long double): Eje de rotaci�n horizontal
// Salida:
//      AreaLatSupRev (long double): Valor del �rea encerrada entre dichos
//              limites
//---------------------------------------------------------------------------
// VolumenDiscos
long double __fastcall VolumenDiscos(TInfoFuncion Funcion, long double a,
        long double b, long double eje);
// Entrada:
//      Funcion (TInfoFuncion): Funci�n objetivo
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
//      eje (long double): Eje de rotaci�n horizontal
// Salida:
//      VolumenDiscos (long double): Valor del vol�men encerrado entre dichos
//              limites al crear dicha superficie de revoluci�n entorno al eje
//---------------------------------------------------------------------------
// VolumenArandelas
long double __fastcall VolumenArandelas(TInfoFuncion F, TInfoFuncion G,
        long double a, long double b, long double eje);
// Entrada:
//      F (TInfoFuncion): Funci�n "Techo"
//      G (TInfoFuncion): Funci�n "Piso"
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
//      eje (long double): Eje de rotaci�n horizontal
// Salida:
//      VolumenArandelas (long double): Valor del vol�men encerrado entre dichos
//              limites al crear dicha superficie de revoluci�n entorno al eje
//---------------------------------------------------------------------------
// VolumenTubos
long double __fastcall VolumenTubos(TInfoFuncion F, TInfoFuncion G,
        long double a, long double b, long double eje);
// Entrada:
//      F (TInfoFuncion): Funci�n "Techo"
//      G (TInfoFuncion): Funci�n "Piso"
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
//      eje (long double): Eje de rotaci�n vertical
// Salida:
//      VolumenTubos (long double): Valor del vol�men encerrado entre dichos
//              limites al crear dicha superficie de revoluci�n entorno al eje
//---------------------------------------------------------------------------
// LongitudDeArco
long double __fastcall LongitudDeArco(TInfoFuncion Funcion,
        long double a, long double b);
// Entrada:
//      Funcion (TInfoFuncion): Funci�n objetivo
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
// Salida:
//      LongitudDeArco (long double): Valor de la longitud de arco
//---------------------------------------------------------------------------
// Centro_Gravedad
void __fastcall Centro_Gravedad(TInfoFuncion F, TInfoFuncion G, long double a,
        long double b, long double &x, long double &y);
// Entrada:
//      F (TInfoFuncion): Funci�n "Techo"
//      G (TInfoFuncion): Funci�n "Piso"
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
// Salida:
//      x (long double&): Coordenada x del centro de gravedad de la regi�n
//      y (long double&): Coordenada y del centro de gravedad de la regi�n
//---------------------------------------------------------------------------
// InterseccionEjes
int __fastcall InterseccionEjes(TInfoFuncion Funcion, long double a,
        long double b, TCLongDouble &LD, long double &y, TCLongDouble &Discont);
// Entrada:
//      F (TInfoFuncion): Funci�n objetivo
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
// Salida:
//      LD (TCLongDouble&): Coordenadas x de los ceros de la funci�n
//      y (long double&): Ordenada al origen
//      InterseccionEjes (int): Cantidad de ceros hallados (no discontinuidades)
//---------------------------------------------------------------------------
// Paridad
int __fastcall Paridad(TInfoFuncion Funcion, long double a, long double b);
// Entrada:
//      F (TInfoFuncion): Funci�n objetivo
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
// Salida:
//      Paridad (int): Asim�trica = 0
//                     Impar = 1
//                     Par = 2
//---------------------------------------------------------------------------
// PtsCrit1erDer
void __fastcall PtsCrit1erDer(TInfoFuncion Funcion, long double a,
        long double b, TCLongDouble &PtsCrit);
// Entrada:
//      Funcion (TInfoFuncion): Funci�n objetivo
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
// Salida:
//      PtsCrit (TCLongDouble&): Coordenadas x de los puntos criticos de la
//              primera derivada
//---------------------------------------------------------------------------
// Crec_Decr
void __fastcall Crec_Decr(TInfoFuncion Funcion, long double a, long double b,
        TCLongDouble &IntCrec, TCLongDouble &CrecDecr);
// Entrada:
//      Funcion (TInfoFuncion): Funci�n objetivo
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
// Salida:
//      IntCrec (TCLongDouble&): Coordenadas x de los intervalos de cremimiento
//               y decrecimiento
//      CrecDecr (TCLongDouble&): Crece = 1, Decrece = 0
//---------------------------------------------------------------------------
// Maximos_y_Minimos
void __fastcall Maximos_y_Minimos(TInfoFuncion Funcion, long double a,
        long double b, TCLongDouble &PosMaxMinx, TCLongDouble &PosMaxMiny, TCLongDouble &MaxMin);
// Entrada:
//      Funcion (TInfoFuncion): Funci�n objetivo
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
// Salida:
//      PosManMinx (TCLongDouble&): Coordenadas x de los extremos de la funci�n
//      PosManMiny (TCLongDouble&): Coordenadas y de los extremos de la funci�n
//      MaxMin (TCLongDouble&): Minimo = 0, Maximo = 1
//---------------------------------------------------------------------------
// PtsCrit2daDer
void __fastcall PtsCrit2daDer(TInfoFuncion Funcion, long double a,
        long double b, TCLongDouble &PtsCrit);
// Entrada:
//      Funcion (TInfoFuncion): Funci�n objetivo
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
// Salida:
//      PtsCrit (TCLongDouble&): Coordenadas x de los puntos criticos de la
//              segunda derivada
//---------------------------------------------------------------------------
// Conc_Conv
void __fastcall Conc_Conv(TInfoFuncion Funcion, long double a, long double b,
        TCLongDouble &IntConc, TCLongDouble &ConcConv);
// Entrada:
//      Funcion (TInfoFuncion): Funci�n objetivo
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
// Salida:
//      IntConc (TCLongDouble&): Coordenadas x de los intervalos de concavidad y
//              convexidad
//      ConcConv (TCLongDouble&): Concava = 1, Convexa = 0
//---------------------------------------------------------------------------
// Puntos_de_Inflexion
void __fastcall Puntos_de_Inflexion(TInfoFuncion Funcion, long double a,
        long double b, TCLongDouble &Posx, TCLongDouble &Posy);
// Entrada:
//      Funcion (TInfoFuncion): Funci�n objetivo
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
// Salida:
//      Posx (TCLongDouble&): Coordenadas x de los puntos de inflexi�n
//      Posy (TCLongDouble&): Coordenadas y de los puntos de inflexi�n
//---------------------------------------------------------------------------
// Asintotas
TInfoFuncion __fastcall Asintotas(AnsiString Expresion);
// Entrada:
//      Expresion (AnsiString): Funci�n objetivo
// Salida:
//      Asintota (TInfoFuncion &): Asintota
//---------------------------------------------------------------------------
// Interseccion2Curvas
int __fastcall Interseccion2Curvas(TInfoFuncion F, TInfoFuncion G, long double a,
        long double b, TCLongDouble &Posx, TCLongDouble &Posy);
// Entrada:
//      F (TInfoFuncion): Primera funci�n objetivo
//      G (TInfoFuncion): Segunda funci�n objetivo
//      a (long double): Coordenada x del primer l�mite vertical
//      b (long double): Coordenada x del segundo l�mite vertical
// Salida:
//      Posx (TCLongDouble&): Coordenadas x de los puntos de intersecci�n
//      Posy (TCLongDouble&): Coordenadas y de los puntos de intersecci�n
//      Interseccion2Curvas (int): Cantidad de intersecciones halladas
//---------------------------------------------------------------------------
#endif
