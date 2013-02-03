//---------------------------------------------------------------------------
// Módulo: Metodos
// Autor: Gastón Furini
// Fecha: 11/01/2005
// Versión: 1.0
// Descripción:
//      Contiene la definición de métodos para los cálculos diferenciales,
// integrales, y estudio completo.
//---------------------------------------------------------------------------

#ifndef uMetodosH
#define uMetodosH

#include "uFuncion.h"
#include "uColas.h"


bool __fastcall Continua(TInfoFuncion Funcion, long double a, long double b);
bool __fastcall Continua(TInfoFuncion Funcion, long double c);
//---------------------------------------------------------------------------
// Derivada (Derivada de una función)
TInfoFuncion __fastcall Derivada(TInfoFuncion Funcion);
// Entrada:
//      Funcion (TInfoFuncion): Función a derivar
// Salida:
//      Derivada (TInfoFuncion): Función derivada
//---------------------------------------------------------------------------
// SegDerivada (Derivada segunda de una función)
TInfoFuncion __fastcall SegDerivada(TInfoFuncion Funcion);
// Entrada:
//      Funcion (TInfoFuncion): Función a derivar
// Salida:
//      SegDerivada (TInfoFuncion): Función derivada dos veces
//---------------------------------------------------------------------------
// Recta_Tangente (Recta tangente a una función)
TInfoFuncion __fastcall Recta_Tangente(TInfoFuncion Funcion, long double c);
// Entrada:
//      Funcion (TInfoFuncion): Función objetivo
//      c (long double): Coordenada x del punto tangencial
// Salida:
//      Recta_Tangente (TInfoFuncion): Recta tangente a Funcion en x = c
//---------------------------------------------------------------------------
// Recta_Normal (Recta normal a una función)
TInfoFuncion __fastcall Recta_Normal(TInfoFuncion Funcion, long double c);
// Entrada:
//      Funcion (TInfoFuncion): Función objetivo
//      c (long double): Coordenada x del punto normal
// Salida:
//      Recta_Normal (TInfoFuncion): Recta normal a Funcion en x = c
//---------------------------------------------------------------------------
// Recta_Secante (Recta secante a una función)
TInfoFuncion __fastcall Recta_Secante(TInfoFuncion Funcion, long double a,
        long double b);
// Entrada:
//      Funcion (TInfoFuncion): Función objetivo
//      a (long double): Coordenada x del primer punto de intersección
//      b (long double): Coordenada x del segundo punto de intersección
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
// Descripción:
//      Calcula la integral definida de una función, también conocida como área
//      de una región cerrada limitada superiormente por la propia función,
//      inferiormente por el eje y = 0, a la izquierda por la recta x = a y a la
//      derecha la recta x = b.
//      El calculo se realiza mediante un metodo de aproximación que regresa el
//      resultado con un error menor a ErrorCalc.
// Entrada:
//      Funcion (TInfoFuncion): Función objetivo
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
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
//      F (TInfoFuncion): Función "Techo"
//      G (TInfoFuncion): Función "Piso"
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
//      ErrorCalc (long double): Margen de error aceptado
// Salida:
//      Area2Curvas (long double): Valor del área de la región encerrada entre
//              dichos limites
//---------------------------------------------------------------------------
// AreaLatSupRev
long double __fastcall AreaLatSupRev(TInfoFuncion Funcion, long double a,
        long double b, long double eje);
// Entrada:
//      Funcion (TInfoFuncion): Función objetivo
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
//      eje (long double): Eje de rotación horizontal
// Salida:
//      AreaLatSupRev (long double): Valor del área encerrada entre dichos
//              limites
//---------------------------------------------------------------------------
// VolumenDiscos
long double __fastcall VolumenDiscos(TInfoFuncion Funcion, long double a,
        long double b, long double eje);
// Entrada:
//      Funcion (TInfoFuncion): Función objetivo
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
//      eje (long double): Eje de rotación horizontal
// Salida:
//      VolumenDiscos (long double): Valor del volúmen encerrado entre dichos
//              limites al crear dicha superficie de revolución entorno al eje
//---------------------------------------------------------------------------
// VolumenArandelas
long double __fastcall VolumenArandelas(TInfoFuncion F, TInfoFuncion G,
        long double a, long double b, long double eje);
// Entrada:
//      F (TInfoFuncion): Función "Techo"
//      G (TInfoFuncion): Función "Piso"
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
//      eje (long double): Eje de rotación horizontal
// Salida:
//      VolumenArandelas (long double): Valor del volúmen encerrado entre dichos
//              limites al crear dicha superficie de revolución entorno al eje
//---------------------------------------------------------------------------
// VolumenTubos
long double __fastcall VolumenTubos(TInfoFuncion F, TInfoFuncion G,
        long double a, long double b, long double eje);
// Entrada:
//      F (TInfoFuncion): Función "Techo"
//      G (TInfoFuncion): Función "Piso"
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
//      eje (long double): Eje de rotación vertical
// Salida:
//      VolumenTubos (long double): Valor del volúmen encerrado entre dichos
//              limites al crear dicha superficie de revolución entorno al eje
//---------------------------------------------------------------------------
// LongitudDeArco
long double __fastcall LongitudDeArco(TInfoFuncion Funcion,
        long double a, long double b);
// Entrada:
//      Funcion (TInfoFuncion): Función objetivo
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
// Salida:
//      LongitudDeArco (long double): Valor de la longitud de arco
//---------------------------------------------------------------------------
// Centro_Gravedad
void __fastcall Centro_Gravedad(TInfoFuncion F, TInfoFuncion G, long double a,
        long double b, long double &x, long double &y);
// Entrada:
//      F (TInfoFuncion): Función "Techo"
//      G (TInfoFuncion): Función "Piso"
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
// Salida:
//      x (long double&): Coordenada x del centro de gravedad de la región
//      y (long double&): Coordenada y del centro de gravedad de la región
//---------------------------------------------------------------------------
// InterseccionEjes
int __fastcall InterseccionEjes(TInfoFuncion Funcion, long double a,
        long double b, TCLongDouble &LD, long double &y, TCLongDouble &Discont);
// Entrada:
//      F (TInfoFuncion): Función objetivo
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
// Salida:
//      LD (TCLongDouble&): Coordenadas x de los ceros de la función
//      y (long double&): Ordenada al origen
//      InterseccionEjes (int): Cantidad de ceros hallados (no discontinuidades)
//---------------------------------------------------------------------------
// Paridad
int __fastcall Paridad(TInfoFuncion Funcion, long double a, long double b);
// Entrada:
//      F (TInfoFuncion): Función objetivo
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
// Salida:
//      Paridad (int): Asimétrica = 0
//                     Impar = 1
//                     Par = 2
//---------------------------------------------------------------------------
// PtsCrit1erDer
void __fastcall PtsCrit1erDer(TInfoFuncion Funcion, long double a,
        long double b, TCLongDouble &PtsCrit);
// Entrada:
//      Funcion (TInfoFuncion): Función objetivo
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
// Salida:
//      PtsCrit (TCLongDouble&): Coordenadas x de los puntos criticos de la
//              primera derivada
//---------------------------------------------------------------------------
// Crec_Decr
void __fastcall Crec_Decr(TInfoFuncion Funcion, long double a, long double b,
        TCLongDouble &IntCrec, TCLongDouble &CrecDecr);
// Entrada:
//      Funcion (TInfoFuncion): Función objetivo
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
// Salida:
//      IntCrec (TCLongDouble&): Coordenadas x de los intervalos de cremimiento
//               y decrecimiento
//      CrecDecr (TCLongDouble&): Crece = 1, Decrece = 0
//---------------------------------------------------------------------------
// Maximos_y_Minimos
void __fastcall Maximos_y_Minimos(TInfoFuncion Funcion, long double a,
        long double b, TCLongDouble &PosMaxMinx, TCLongDouble &PosMaxMiny, TCLongDouble &MaxMin);
// Entrada:
//      Funcion (TInfoFuncion): Función objetivo
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
// Salida:
//      PosManMinx (TCLongDouble&): Coordenadas x de los extremos de la función
//      PosManMiny (TCLongDouble&): Coordenadas y de los extremos de la función
//      MaxMin (TCLongDouble&): Minimo = 0, Maximo = 1
//---------------------------------------------------------------------------
// PtsCrit2daDer
void __fastcall PtsCrit2daDer(TInfoFuncion Funcion, long double a,
        long double b, TCLongDouble &PtsCrit);
// Entrada:
//      Funcion (TInfoFuncion): Función objetivo
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
// Salida:
//      PtsCrit (TCLongDouble&): Coordenadas x de los puntos criticos de la
//              segunda derivada
//---------------------------------------------------------------------------
// Conc_Conv
void __fastcall Conc_Conv(TInfoFuncion Funcion, long double a, long double b,
        TCLongDouble &IntConc, TCLongDouble &ConcConv);
// Entrada:
//      Funcion (TInfoFuncion): Función objetivo
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
// Salida:
//      IntConc (TCLongDouble&): Coordenadas x de los intervalos de concavidad y
//              convexidad
//      ConcConv (TCLongDouble&): Concava = 1, Convexa = 0
//---------------------------------------------------------------------------
// Puntos_de_Inflexion
void __fastcall Puntos_de_Inflexion(TInfoFuncion Funcion, long double a,
        long double b, TCLongDouble &Posx, TCLongDouble &Posy);
// Entrada:
//      Funcion (TInfoFuncion): Función objetivo
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
// Salida:
//      Posx (TCLongDouble&): Coordenadas x de los puntos de inflexión
//      Posy (TCLongDouble&): Coordenadas y de los puntos de inflexión
//---------------------------------------------------------------------------
// Asintotas
TInfoFuncion __fastcall Asintotas(AnsiString Expresion);
// Entrada:
//      Expresion (AnsiString): Función objetivo
// Salida:
//      Asintota (TInfoFuncion &): Asintota
//---------------------------------------------------------------------------
// Interseccion2Curvas
int __fastcall Interseccion2Curvas(TInfoFuncion F, TInfoFuncion G, long double a,
        long double b, TCLongDouble &Posx, TCLongDouble &Posy);
// Entrada:
//      F (TInfoFuncion): Primera función objetivo
//      G (TInfoFuncion): Segunda función objetivo
//      a (long double): Coordenada x del primer límite vertical
//      b (long double): Coordenada x del segundo límite vertical
// Salida:
//      Posx (TCLongDouble&): Coordenadas x de los puntos de intersección
//      Posy (TCLongDouble&): Coordenadas y de los puntos de intersección
//      Interseccion2Curvas (int): Cantidad de intersecciones halladas
//---------------------------------------------------------------------------
#endif
