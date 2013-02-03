//---------------------------------------------------------------------------


#pragma hdrstop

#include <math.h>

#include "uMetodos.h"

#include "uDeriva_Ex.h"
#include "uIntegra.h"
#include "uMath_Ex.h"
#include "uRootFinding.h"

#define Entre(x, a, b) ( (a <= x) && (x <= b) )
#define Entre_(x, a, b) ( (a <= x) && (x < b) )

//---------------------------------------------------------------------------
const AnsiString sPi = "3.1415926535898";
const AnsiString s2Pi= "6.2831853071796";

//---------------------------------------------------------------------------
TInfoFuncion __fastcall Derivada (TInfoFuncion Funcion)
{
  TDeriva Deriva;
  TInfoFuncion F;
  AnsiString s;
  s = Format("1er Der. de %s", ARRAYOFCONST((Funcion.Nombre)));
  strcpy(F.Nombre, s.c_str());
  F.Graficar = true;
  Copy(Funcion.Intervalo,F.Intervalo);
  int c, i;
  c = Count(F.Intervalo);
  for( i = 0; i < c; i++)
  {
    Deriva.Derivar(Find(F.Intervalo,i)->Info.Expresion, &s);
    strcpy(Find(F.Intervalo,i)->Info.Expresion, s.c_str());
  }
  return F;
}

//---------------------------------------------------------------------------
TInfoFuncion __fastcall SegDerivada(TInfoFuncion Funcion)
{
  TDeriva Deriva;
  TInfoFuncion F;
  AnsiString s;
  s = Format("2da Der. de %s", ARRAYOFCONST((Funcion.Nombre)));
  strcpy(F.Nombre, s.c_str());
  F.Graficar = true;
  Copy(Funcion.Intervalo,F.Intervalo);
  int c, i;
  c = Count(F.Intervalo);
  for( i = 0; i < c; i++)
  {
    Deriva.Derivar(Find(F.Intervalo,i)->Info.Expresion, &s);
    Deriva.Derivar(s, &s);
    strcpy(Find(F.Intervalo,i)->Info.Expresion, s.c_str());
  }
  return F;
}

//---------------------------------------------------------------------------
TInfoFuncion __fastcall Recta_Tangente(TInfoFuncion Funcion, long double c)
{
  TEval Eval;
  TInfoFuncion F, T;
  long double y1,lim, x1, x2;
  TIntervalo *F_c, *f_c;
  TInfoInt Info;
  strcpy(T.Nombre, Format("Tangente de %s en x = %g", ARRAYOFCONST((Funcion.Nombre, c))).c_str());
  T.Graficar = true;
  F = Derivada(Funcion);
  F_c = Find(F.Intervalo, c);
  if( F_c != NULL)
  {
    Eval.Evaluate(F_c->Info.Expresion);
    lim = Eval.Value(c);
    f_c = Find(Funcion.Intervalo, c);
    Eval.Evaluate(f_c->Info.Expresion);
    y1 = Eval.Value(c);
    Info.Min = f_c->Info.Min - 1;
    Info.Max = f_c->Info.Max + 1;
    Info.TipoGrafico = f_c->Info.TipoGrafico;
    Info.Color = f_c->Info.Color;
    Info.Grosor = f_c->Info.Grosor;
    strcpy(Info.Expresion, Recta(lim,c,y1).c_str());
    T.Intervalo = NULL;
    Add(T.Intervalo,Info);
  }
  else
  {
    Info.Min = c - 1;
    Info.Max = c + 1;
    Info.TipoGrafico = tgContinuo;
    Info.Color = clRed;
    Info.Grosor = 3;
    strcpy(Info.Expresion, "0");
    T.Intervalo = NULL;
    Add(T.Intervalo,Info);
  }
  return T;
}

//---------------------------------------------------------------------------
TInfoFuncion __fastcall Recta_Normal(TInfoFuncion Funcion, long double c)
{
  TEval Eval;
  TInfoFuncion F, N;
  long double y1,lim, x1, x2;
  TIntervalo *F_c, *f_c;
  TInfoInt Info;
  strcpy(N.Nombre, Format("Normal de %s en x = %g", ARRAYOFCONST((Funcion.Nombre, c))).c_str());
  N.Graficar = true;
  F = Derivada(Funcion);
  F_c = Find(F.Intervalo, c);
  if( F_c != NULL)
  {
    Eval.Evaluate(F_c->Info.Expresion);
    lim = Eval.Value(c);
    f_c = Find(Funcion.Intervalo, c);
    Eval.Evaluate(f_c->Info.Expresion);
    y1 = Eval.Value(c);
    Info.Min = f_c->Info.Min - 1;
    Info.Max = f_c->Info.Max + 1;
    Info.TipoGrafico = f_c->Info.TipoGrafico;
    Info.Color = f_c->Info.Color;
    Info.Grosor = f_c->Info.Grosor;
    if( lim == 0.0)
      lim = -MaxDouble;
    else
      lim = -1/lim;
    strcpy(Info.Expresion, Recta(lim, c, y1).c_str());
    N.Intervalo = NULL;
    Add(N.Intervalo, Info);
  }
  else
  {
    Info.Min = c - 1;
    Info.Max = c + 1;
    Info.TipoGrafico = tgContinuo;
    Info.Color = clRed;
    Info.Grosor = 3;
    strcpy(Info.Expresion, "0");
    N.Intervalo = NULL;
    Add(N.Intervalo,Info);
  }
  return N;
}

//---------------------------------------------------------------------------
TInfoFuncion __fastcall Recta_Secante(TInfoFuncion Funcion, long double a, long double b)
{
  TEval Eval;
  TInfoFuncion S;
  long double fa, fb, m;
  TIntervalo *F;
  F = Find(Funcion.Intervalo, b-MinDouble);
  strcpy(S.Nombre, Format("Secante de %s en x1 = %g y x2 = %g", ARRAYOFCONST((Funcion.Nombre, a, b))).c_str());
  S.Graficar = true;
  if( F != NULL )
  {
    Eval.Evaluate(F->Info.Expresion);
    fb = Eval.Value(b);
    F = Find(Funcion.Intervalo, a);
    if( F != NULL )
    {
      Eval.Evaluate(F->Info.Expresion);
      fa = Eval.Value(a);
      m = ( a != b )? (fb-fa)/(b-a) : 0;
    }
    else
    {
      fa = 0;
      m = ( a != b )? (fb-fa)/(b-a) : 0;
      F = Find(Funcion.Intervalo, b-MinDouble);
    }
  }
  else
  {
    fb = 0;
    F = Find(Funcion.Intervalo, a);
    if( F != NULL )
    {
      Eval.Evaluate(F->Info.Expresion);
      fa = Eval.Value(a);
      m = ( a != b )? (fb-fa)/(b-a) : 0;
    }
    else
    {
      fa = 0;
      m = 0;
      F = Find(Funcion.Intervalo, 0);
    }
  }
  TInfoInt Info;
  Info.Min = a - 1;
  Info.Max = b + 1;
  Info.TipoGrafico = F->Info.TipoGrafico;
  Info.Color = F->Info.Color;
  Info.Grosor = F->Info.Grosor;
  strcpy(Info.Expresion, Recta(m,a,fa).c_str());
  S.Intervalo = NULL;
  Add(S.Intervalo,Info);
  return S;
}

//---------------------------------------------------------------------------
long double __fastcall IntegralDefinida(TInfoFuncion Funcion, long double a, long double b, long double ErrorCalc)
{
  TIntegrate I;
  long double s, min, max;
  int i, n;
  TIntervalo * Int;
  bool bet;
  n = Count(Funcion.Intervalo);
  for( i = 0, s = 0; i < n; i++)
  {
    Int = Find(Funcion.Intervalo,i);
    min = Int->Info.Min;
    max = Int->Info.Max;
    bet = false;
    if( Entre(a, min, max) )
    {
      min = a;
      bet = true;
    }
    else
    {
      if( (a < min) && (Entre(b,min,max) || (b > max) ) )
      {
        a = min;
        bet = true;
      }
    }
    if( Entre(b,min,max) )
    {
      max = b;
      bet = true;
    }
    if( bet && (min != max) )
    {
      I.Expression(Int->Info.Expresion);
      s += I.Integrate_Adap(min,max,ErrorCalc);
    }
  }
  return s;
}

//---------------------------------------------------------------------------
long double LongitudNula(TInfoFuncion Funcion, long double a, long double b)
{
  TIntervalo * Int;
  long double s, min, max;
  int i, n;
  n = Count(Funcion.Intervalo);
  //Todo el intervalo
  s = b-a;
  for( i = 0; i < n; i++)
  {
    Int = Find(Funcion.Intervalo,i);
    min = Int->Info.Min;
    max = Int->Info.Max;
    //Restamos los intervalos de funciones intervinientes
    if( Entre_(min, a, b) && Entre_(max, a, b) )
      s = s - (max - min);
    else
      if( (min < a) && Entre_(max, a, b) )
        s = s - (max - a);
      else
        if( (max >= b) && Entre_(min, a, b) )
          s = s - (b - min);
        else
          if( Entre_(a, min, max) && Entre_(b, min, max) ){
            s = 0;
            i = n;
          }
  }
  return s;
}

//---------------------------------------------------------------------------
long double __fastcall LongitudDeArco(TInfoFuncion Funcion, long double a, long double b)
{
  long double Result;
  TInfoFuncion L;
  L = Derivada(Funcion);
  TIntervalo * Int;
  int i, n;
  n = Count(Funcion.Intervalo);
  for( i = 0; i < n; i++)
  {
    Int = Find(L.Intervalo,i);
    strcpy(Int->Info.Expresion, Format("sqrt((%s)^2+1)", ARRAYOFCONST((Int->Info.Expresion))).c_str());
  }
  Result = IntegralDefinida(L, a, b) + LongitudNula(Funcion, a, b);
  DeleteAll(L.Intervalo);
  return Result;
}

//---------------------------------------------------------------------------
long double __fastcall AreaLatSupRev(TInfoFuncion Funcion, long double a, long double b, long double eje)
{
  long double Result;
  TInfoFuncion L;
  L = Derivada(Funcion);
  TIntervalo * Int, *IntF;
  int i, n;
  n = Count(Funcion.Intervalo);
  for( i = 0; i < n; i++)
  {
    Int = Find(L.Intervalo,i);
    IntF = Find(Funcion.Intervalo,i);
    strcpy(Int->Info.Expresion, Format("%s*((%s)-%g)*sqrt(1+(%s)^2)", ARRAYOFCONST((s2Pi, IntF->Info.Expresion, eje, Int->Info.Expresion))).c_str());
  }
  Result = IntegralDefinida(L, a, b);
  DeleteAll(L.Intervalo);
  return Result;
}

//---------------------------------------------------------------------------
long double __fastcall VolumenDiscos(TInfoFuncion Funcion, long double a, long double b, long double eje)
{
  long double Result;
  TInfoFuncion L;
  Copy(Funcion.Intervalo, L.Intervalo);
  TIntervalo * Int;
  int i, n;
  n = Count(Funcion.Intervalo);
  for( i = 0; i < n; i++)
  {
    Int = Find(L.Intervalo,i);
    strcpy(Int->Info.Expresion,
      Format("%s*((%s)-(%g))^2", ARRAYOFCONST((sPi, Int->Info.Expresion, eje))).c_str());
  }
  Result = IntegralDefinida(L, a, b);
  DeleteAll(L.Intervalo);
  return Result;
}

//---------------------------------------------------------------------------
long double __fastcall VolumenTubos(TInfoFuncion F, TInfoFuncion G, long double a, long double b, long double eje)
{
  long double Result;
  TInfoFuncion L;
  TInfoInt Info;
  Info.Min = a;
  Info.Max = b;
  strcpy(Info.Expresion, Format("%s*((%g-x)*((%s)-(%s)))", ARRAYOFCONST((s2Pi,eje,Find(F.Intervalo,a)->Info.Expresion,Find(G.Intervalo,a)->Info.Expresion))).c_str());
  L.Intervalo = NULL;
  Add(L.Intervalo,Info);
  Result = IntegralDefinida(L, a, b);
  DeleteAll(L.Intervalo);
  return Result;
}

//---------------------------------------------------------------------------
long double __fastcall VolumenArandelas(TInfoFuncion F, TInfoFuncion G, long double a, long double b, long double eje)
{
  long double Result;
  TInfoFuncion L;
  TInfoInt Info;
  Info.Min = a;
  Info.Max = b;
  strcpy(Info.Expresion,
  Format("%s*(((%s)-(%g))^2-((%s)-(%g))^2)", ARRAYOFCONST((sPi, Find(F.Intervalo,a)->Info.Expresion, eje, Find(G.Intervalo,a)->Info.Expresion, eje))).c_str());
  L.Intervalo = NULL;
  Add(L.Intervalo,Info);
  Result = IntegralDefinida(L, a, b);
  DeleteAll(L.Intervalo);
  return Result;
}

//---------------------------------------------------------------------------
void __fastcall Centro_Gravedad (TInfoFuncion F, TInfoFuncion G, long double a, long double b, long double &x, long double &y)
{
  long double mx, my, m;
  AnsiString Fexp, Gexp;
  TInfoFuncion L;
  TInfoInt Info;
  TIntervalo * Int;
  Info.Min = a;
  Info.Max = b;
  Fexp = Find(F.Intervalo,a)->Info.Expresion;
  Gexp = Find(G.Intervalo,a)->Info.Expresion;
  strcpy(Info.Expresion, Format("(%s)-(%s)", ARRAYOFCONST((Fexp, Gexp))).c_str());
  L.Intervalo = NULL;
  Add(L.Intervalo,Info);
  m = IntegralDefinida(L, a, b);
  DeleteAll(L.Intervalo);
  strcpy(Info.Expresion, Format("x*((%s)-(%s))", ARRAYOFCONST((Fexp, Gexp))).c_str());
  L.Intervalo = NULL;
  Add(L.Intervalo,Info);
  my = IntegralDefinida(L, a, b);
  DeleteAll(L.Intervalo);
  strcpy(Info.Expresion, Format("((%s)-(%s))*((%s)+(%s))/2", ARRAYOFCONST((Fexp, Gexp, Fexp, Gexp))).c_str());
  L.Intervalo = NULL;
  Add(L.Intervalo,Info);
  mx = IntegralDefinida(L, a, b);
  DeleteAll(L.Intervalo);
  if( m == 0 ){
    x = 0;
    y = 0;
  }else{
    x = my / m;
    y = mx / m;}
}

//---------------------------------------------------------------------------

//Función PolinomioTaylor = Polinomio de Taylor
TInfoFuncion __fastcall PolinomioTaylor(TInfoFuncion Funcion, long double c, unsigned int &g)
{
  TInfoFuncion P, D;
  TInfoInt I, C;
  TEval Eval;
  TDeriva Deriva;
  TReplaceFlags rf;
  AnsiString S = "", Dn = "";
  rf << rfReplaceAll;
  strcpy(P.Nombre, AnsiString("Polinomio de taylor de " + String(Funcion.Nombre)).c_str());
  P.Graficar = true;
  P.Intervalo = NULL;
  C = Find(Funcion.Intervalo, c)->Info;
  Dn = C.Expresion;
  Eval.Evaluate( C.Expresion );
  I.Min = C.Min;
  I.Max = C.Max;
  I.TipoGrafico = C.TipoGrafico;
  I.Color = C.Color;
  I.Grosor = C.Grosor;
  S = monomio(Eval.Value(c), c, 0);
  Copy(Funcion.Intervalo, D.Intervalo);
  for( g = 1; g < 10; g++){
    if( !Deriva.Derivar(Dn, &Dn) )
      break;
    Eval.Evaluate( Dn );
    S = S + "+" + monomio((long double)Eval.Value(c)/(long double)factorial(g), c, g);
  }
  g = g-1;
  strcpy(I.Expresion, StringReplace(S ,"+-","-",rf).c_str());
  Add(P.Intervalo, I);
  return P;
}

//---------------------------------------------------------------------------
long double __fastcall Area2Curvas(TInfoFuncion F, TInfoFuncion G, long double a, long double b, long double ErrorCalc)
{
  long double Result;
  TInfoFuncion L;
  TInfoInt Info;
  Info.Min = a;
  Info.Max = b;
  strcpy(Info.Expresion,
  Format("(%s)-(%s)", ARRAYOFCONST((Find(F.Intervalo,a)->Info.Expresion, Find(G.Intervalo,a)->Info.Expresion))).c_str());
  L.Intervalo = NULL;
  Add(L.Intervalo,Info);
  Result = IntegralDefinida(L, a, b, ErrorCalc);
  DeleteAll(L.Intervalo);
  return Result;
}

//---------------------------------------------------------------------------
int __fastcall InterseccionEjes(TInfoFuncion Funcion, long double a,
        long double b, TCLongDouble &Ceros, long double &y, TCLongDouble &Discont)
{
  TEval Eval;
  const long double dx = 1E-2;
  long double ia_, cero;
  int c = 0, i, nb;
  long double *xb1, *xb2;
  TIntervalo *ia;
  ia = Find(Funcion.Intervalo, a);
  if( ia != NULL ){
    if( strcmp(ia->Info.Expresion, "0") == 0 )
      return c;
    Eval.Evaluate(ia->Info.Expresion);
    nb = (b-a)/dx+1;
    xb1 = new long double[nb];
    xb2 = new long double[nb];
    zbrak(ia->Info.Expresion, a, b, nb--, xb1, xb2, &nb);
    for( i = 1; i <= nb; i++){
      cero = zbrent(ia->Info.Expresion, xb1[i], xb2[i], 1E-256);
      Eval.Value(cero);
      Ceros.Add(cero);
      if( Eval.LastError() == eNoError ){
        Discont.Add(0);
        c++;
      }else
        if( Eval.LastError() == eDivCero )
          Discont.Add(1);
    }
    delete xb1, xb2;
    y = Eval.Value(0);
  }
  return c;
}

//---------------------------------------------------------------------------
int __fastcall Paridad(TInfoFuncion Funcion, long double a, long double b)
{
  const MaxEvals = 10;
  TEval Eval;
  randomize();
  long double fa,fb;
  long double x;
  bool par,impar;
  par = impar = false;
  if( a != -b )
    return 0;
  else
  {
    TIntervalo *Intervalo = Find(Funcion.Intervalo, a);
    if( Intervalo == NULL )
      return 0;
    Eval.Evaluate(Intervalo->Info.Expresion);
    if( Eval.LastError() != eSintaxis)
    for(int i = 0; i < MaxEvals; i++){
      x = (long double)(random(10000.0*a))/10000.0;
      try{
        fa = Eval.Value(x);
        fb = Eval.Value(-x);
        par = (fa == fb);
        impar = (fa == -fb);
        if( !par && !impar )
          return 0;
      }catch(...){
      }
    }
    if(par == impar)
      return 0;
    if( par )
      return 2;
    else
      if( impar )
        return 1;
      else
        return 0;
  }
}

//---------------------------------------------------------------------------
void __fastcall Maximos_y_Minimos(TInfoFuncion Funcion, long double a,
        long double b, TCLongDouble &PosMaxMinx, TCLongDouble &PosMaxMiny, TCLongDouble &MaxMin)
{
  TEval F, D;
  TInfoFuncion FDerivada;
  long double aux, mid, cd, d;
  TCLongDouble PtsCrit, IntCrec, CrecDecr, Discont;
  TIntervalo *ia;
  FDerivada = Derivada(Funcion);
  //Obtención de Puntos Críticos
  InterseccionEjes(FDerivada, a, b, PtsCrit, aux, Discont);
  //Obtención de Intervalos de Crecimiento y Decrecimiento
  //y Maximos y Minimos.
  ia = Find(FDerivada.Intervalo, a);
  if( ia != NULL ){
    D.Evaluate(ia->Info.Expresion);
    ia = Find(Funcion.Intervalo, a);
    F.Evaluate(ia->Info.Expresion);
    if( !PtsCrit.Empty() ){
      mid = D.Value((a+PtsCrit.GetValue())/2.0);
      IntCrec.Add(a);
      if( mid > 0.0 )
        CrecDecr.Add(1);
      else
        CrecDecr.Add(0);
      cd = CrecDecr.GetValue();
    }
    while( !PtsCrit.Empty() ){
      aux = PtsCrit.GetValue();
      d = Discont.GetValue();
      PtsCrit.Delete();
      Discont.Delete();
      if( !PtsCrit.Empty() )
        mid = D.Value((aux+PtsCrit.GetValue())/2.0);
      else
        mid = D.Value((aux+b)/2.0);
      if( mid > 0.0 ){
        if( cd == 0.0 ){
          if( d != 1 ){
            PosMaxMinx.Add(aux);
            PosMaxMiny.Add(F.Value(aux));
            MaxMin.Add(0);}
          IntCrec.Add(aux);
        }
        CrecDecr.Add(1);
        cd = 1;
      }else{
        if( cd != 0.0){
          if( d != 1 ){
            PosMaxMinx.Add(aux);
            PosMaxMiny.Add(F.Value(aux));
            MaxMin.Add(1);}
          IntCrec.Add(aux);
        }
        CrecDecr.Add(0);
        cd = 0;
      }
    }
    IntCrec.Add(b);
  }
}
//---------------------------------------------------------------------------

void __fastcall PtsCrit1erDer(TInfoFuncion Funcion, long double a,
        long double b, TCLongDouble &PtsCrit)
{
  TCLongDouble Discont;
  long double aux;
  TInfoFuncion FDerivada;
  FDerivada = Derivada(Funcion);
  InterseccionEjes(FDerivada, a, b, PtsCrit, aux, Discont);
}

//---------------------------------------------------------------------------
void __fastcall PtsCrit2daDer(TInfoFuncion Funcion, long double a,
        long double b, TCLongDouble &PtsCrit)
{
  TCLongDouble Discont;
  long double aux;
  TInfoFuncion F2daDerivada;
  F2daDerivada = SegDerivada(Funcion);
  InterseccionEjes(F2daDerivada, a, b, PtsCrit, aux, Discont);
}

//---------------------------------------------------------------------------
void __fastcall Crec_Decr(TInfoFuncion Funcion, long double a, long double b,
        TCLongDouble &IntCrec, TCLongDouble &CrecDecr)
{
  TEval F, D;
  TInfoFuncion FDerivada;
  long double aux, mid, cd;
  TIntervalo *ia;
  FDerivada = Derivada(Funcion);
  TCLongDouble PtsCrit;
  PtsCrit1erDer(Funcion, a, b, PtsCrit);
  //Obtención de Intervalos de Crecimiento y Decrecimiento
  ia = Find(FDerivada.Intervalo, a);
  if( ia != NULL ){
    D.Evaluate(ia->Info.Expresion);
    ia = Find(Funcion.Intervalo, a);
    F.Evaluate(ia->Info.Expresion);
    if( !PtsCrit.Empty() ){
      mid = D.Value((a+PtsCrit.GetValue())/2.0);
      IntCrec.Add(a);
      if( mid > 0.0 )
        CrecDecr.Add(1);
      else
        CrecDecr.Add(0);
      cd = CrecDecr.GetValue();
    }
    while( !PtsCrit.Empty() ){
      aux = PtsCrit.GetValue();
      PtsCrit.Delete();
      if( !PtsCrit.Empty() )
        mid = D.Value((aux+PtsCrit.GetValue())/2.0);
      else
        mid = D.Value((aux+b)/2.0);
      if( mid > 0.0 ){
        if( cd == 0.0 ){         //Cambios
          IntCrec.Add(aux);
        CrecDecr.Add(1);}
        cd = 1;
      }else{
        if( cd != 0.0){          //Cambios
          IntCrec.Add(aux);
        CrecDecr.Add(0);}
        cd = 0;
      }
    }
    IntCrec.Add(b);
  }
}

//---------------------------------------------------------------------------
void __fastcall Conc_Conv(TInfoFuncion Funcion, long double a, long double b,
        TCLongDouble &IntConc, TCLongDouble &ConcConv)
{
  TEval F, D;
  TInfoFuncion FDerivada;
  long double aux, mid, cc;
  TIntervalo *ia;
  FDerivada = SegDerivada(Funcion);
  TCLongDouble PtsCrit;
  PtsCrit2daDer(Funcion, a, b, PtsCrit);
  //Obtención de Intervalos de Crecimiento y Decrecimiento
  ia = Find(FDerivada.Intervalo, a);
  if( ia != NULL ){
    D.Evaluate(ia->Info.Expresion);
    ia = Find(Funcion.Intervalo, a);
    F.Evaluate(ia->Info.Expresion);
    if( !PtsCrit.Empty() ){
      mid = D.Value((a+PtsCrit.GetValue())/2.0);
      IntConc.Add(a);
      if( mid > 0.0 )
        ConcConv.Add(1);
      else
        ConcConv.Add(0);
      cc = ConcConv.GetValue();
    }
    while( !PtsCrit.Empty() ){
      aux = PtsCrit.GetValue();
      PtsCrit.Delete();
      if( !PtsCrit.Empty() )
        mid = D.Value((aux+PtsCrit.GetValue())/2.0);
      else
        mid = D.Value((aux+b)/2.0);
      if( mid > 0.0 ){
        if( cc == 0.0 ){  //cambios
          IntConc.Add(aux);
        ConcConv.Add(1);}
        cc = 1;
      }else{
        if( cc != 0.0){     //cambios
          IntConc.Add(aux);
        ConcConv.Add(0);}
        cc = 0;
      }
    }
    IntConc.Add(b);
  }
}

//---------------------------------------------------------------------------
void __fastcall Puntos_de_Inflexion(TInfoFuncion Funcion, long double a,
        long double b, TCLongDouble &Posx, TCLongDouble &Posy)
{
  TEval F, D;
  TInfoFuncion FSegDerivada;
  long double aux, mid, cd, d;
  TCLongDouble PtsCrit, IntConc, ConcConv, Discont;
  TIntervalo *ia;
  FSegDerivada = SegDerivada(Funcion);
  //Obtención de Puntos Críticos
  InterseccionEjes(FSegDerivada, a, b, PtsCrit, aux, Discont);
  //Obtención de Intervalos
  //y puntos
  ia = Find(FSegDerivada.Intervalo, a);
  if( ia != NULL ){
    D.Evaluate(ia->Info.Expresion);
    ia = Find(Funcion.Intervalo, a);
    F.Evaluate(ia->Info.Expresion);
    if( !PtsCrit.Empty() ){
      mid = D.Value((a+PtsCrit.GetValue())/2.0);
      IntConc.Add(a);
      if( mid > 0.0 )
        ConcConv.Add(1);
      else
        ConcConv.Add(0);
      cd = ConcConv.GetValue();
    }
    while( !PtsCrit.Empty() ){
      aux = PtsCrit.GetValue();
      d = Discont.GetValue();
      PtsCrit.Delete();
      Discont.Delete();
      if( !PtsCrit.Empty() )
        mid = D.Value((aux+PtsCrit.GetValue())/2.0);
      else
        mid = D.Value((aux+b)/2.0);
      if( mid > 0.0 ){
        if( cd == 0.0 ){
          if( d != 1){
            Posx.Add(aux);
            Posy.Add(F.Value(aux));}
          IntConc.Add(aux);
        }
        ConcConv.Add(1);
        cd = 1;
      }else{
        if( cd != 0.0){
          if( d != 1){
            Posx.Add(aux);
            Posy.Add(F.Value(aux));}
          IntConc.Add(aux);
        }
        ConcConv.Add(0);
        cd = 0;
      }
    }
    IntConc.Add(b);
  }
}

//---------------------------------------------------------------------------
TInfoFuncion __fastcall Asintotas(AnsiString Expresion)
{
  AnsiString l;
  long double a, b;
  TInfoInt Info;
  TInfoFuncion Asintota;
  strcpy(Asintota.Nombre, Format("Asintota de %s", ARRAYOFCONST((Expresion))).c_str());
  Asintota.Graficar= true;
  Asintota.Intervalo = NULL;

  TReplaceFlags rf;
  rf << rfReplaceAll;
  l = Format("(%s)/x", ARRAYOFCONST((Expresion)));
  TEval Eval;
  Eval.Evaluate(l);
  a = Eval.Value(1E15);
  //Limite(l, 1000000, a);
  l = Format("(%s)-(%g)*x", ARRAYOFCONST((Expresion, a)));
  l = StringReplace(l, "--", "+", rf);
  l = Expresion;
  Eval.Evaluate(l);
  b = Eval.Value(1E15);
  //Limite(l, 1000000, b);
  if( fabs(a) < 1E-2 )
    if( fabs(b) > 5000 )
      strcpy(Info.Expresion, "0");
    else
      strcpy(Info.Expresion, Format("%g", ARRAYOFCONST((b))).c_str());
  else
    if(fabs(a) < 200)
      if(fabs(b) < 1E-2)
        strcpy(Info.Expresion, Format("%g*x", ARRAYOFCONST((a))).c_str());
      else
        strcpy(Info.Expresion, Format("%g*x-%g", ARRAYOFCONST((a, b))).c_str());
    else
      strcpy(Info.Expresion, "0");
  Info.Min = -100;
  Info.Max =  100;
  Info.TipoGrafico =  tgContinuo;
  Info.Color = clGray;
  Info.Grosor = 1;
  Add(Asintota.Intervalo, Info);
  return Asintota;
}

//---------------------------------------------------------------------------
int __fastcall Interseccion2Curvas(TInfoFuncion F, TInfoFuncion G, long double a,
        long double b, TCLongDouble &Posx, TCLongDouble &Posy)
{
  TInfoFuncion Aux;
  AnsiString s;
  TInfoInt Info;
  int r;
  TCLongDouble Ceros, Discont;
  long double y;
  TEval Eval;
  Aux.Intervalo = NULL;
  s = Format("(%s)-(%s)", ARRAYOFCONST((Find(F.Intervalo, a)->Info.Expresion,
  Find(G.Intervalo, a)->Info.Expresion)));
  Info.Min = a;
  Info.Max = b;
  strcpy(Info.Expresion, s.c_str());
  Add(Aux.Intervalo, Info);
  r = InterseccionEjes(Aux, a, b, Ceros, y, Discont);
  Eval.Evaluate(Find(F.Intervalo, a)->Info.Expresion);
  while( !Discont.Empty() )
  {
    if( Discont.GetValue() == 0 )
    {
      Posx.Add(Ceros.GetValue());
      Posy.Add(Eval.Value(Ceros.GetValue()));
    }
    Discont.Delete();
    Ceros.Delete();
  }
  return r;
}
//---------------------------------------------------------------------------

bool __fastcall Continua(TInfoFuncion Funcion, long double a, long double b)
{
  TCLongDouble Ceros, Discont;
  long double y;
  int count, i;
  count = InterseccionEjes(Funcion, a, b, Ceros, y, Discont);
  return count == Discont.Count;
}

bool __fastcall Continua(TInfoFuncion Funcion, long double c)
{
  TEval Eval;
  TIntervalo *Intervalo;
  Intervalo = Find(Funcion.Intervalo, c);
  if( Intervalo != NULL){
    Eval.Evaluate(Intervalo->Info.Expresion);
    if( Eval.LastError() != eNoError ){
      Eval.Value(c);
      return Eval.LastError() == eDivCero;
    }else
      return false;
  }else
    return true;
}


#pragma package(smart_init)
