//---------------------------------------------------------------------------
#pragma hdrstop

#include "uRootFinding.h"
#include "uEval_Ex.h"
#include <math.h>

#define FACTOR 1.6
#define NTRY 50
#define ITMAX 100 // Maximum allowed number of iterations.
#define EPS 3.0e-16//3.0e-8 //Machine floating-point precision.
#define SIGN(a,b) ((b) >= 0.0 ? fabs(a) : -fabs(a))

//---------------------------------------------------------------------------
//Método de la bisección
long double Biseccion(AnsiString F, long double a, long double b,
        long double error)
{
  TEval Eval;
  long double m;
  Eval.Evaluate(F);
  do{
    m = (a+b)/2;
    if( Eval.Value(a)*Eval.Value(m) < 0 )
      b = m;
    else
      a = m;
  }while( fabs(a-b)>error );
  return (a+b)/2;
}

//---------------------------------------------------------------------------
//Método de la falsa posición
long double Falsa_Posicion(AnsiString F, long double a, long double b,
        long double error)
{
  TEval Eval;
  double x1, x2, fa, fx2;
  Eval.Evaluate(F);
  x2 = a;
  do{
    x1 = x2;
    fa = Eval.Value(a);
    x2 = a-(b-a)*fa/(Eval.Value(b)-fa);
    fx2 = Eval.Value(x2);
    if( (fa*fx2) > 0)
      a = x2;
    else
      b = x2;
   }while( fabs(x2-x1) > error );
  return x2;
}

//---------------------------------------------------------------------------
//Método de la secante
long double Secante(AnsiString F, long double x1, long double x2,
        long double error)
{
  TEval Eval;
  double fx1, fx2, x;
  Eval.Evaluate(F);
  do{
    fx1 = Eval.Value(x1);
    fx2 = Eval.Value(x2);
    x = x2-fx2*(x2-x1)/(fx2-fx1);
    x1 = x2;
    x2 = x;
    }while ( fabs(x2-x1) > error );
  return x2;
}

//---------------------------------------------------------------------------
//
int zbrac(AnsiString F, long double *x1, long double *x2)
{
  TEval Eval;
  int j;
  long double f1,f2;
  if (*x1 == *x2)
    throw Exception("Rango inicial erroneo en método zbrac");
  Eval.Evaluate(F);
  f1=Eval.Value(*x1);
  f2=Eval.Value(*x2);
  for (j=1;j<=NTRY;j++) {
    if (f1*f2 < 0.0)
      return 1;
    if (fabs(f1) < fabs(f2))
      f1=Eval.Value(*x1 += FACTOR*(*x1-*x2));
    else
      f2=Eval.Value(*x2 += FACTOR*(*x2-*x1));
  }
  return 0;
}

//---------------------------------------------------------------------------
void zbrak(AnsiString F, long double x1, long double  x2, int n,
        long double  xb1[], long double  xb2[], int *nb)
{
  int nbb,i;
  long double x,fp,fc,dx;
  nbb = 0;
  dx = (x2-x1)/n;
  TEval Eval;
  Eval.Evaluate(F);
  fp = Eval.Value(x=x1);
  for( i = 1; i <= n; i++){
    fc = Eval.Value(x += dx);
    if( fc*fp <= 0.0 ) {
      xb1[++nbb] = x-dx;
      xb2[nbb] = x;
      if(*nb == nbb)
        return;
    }
    if( fc == 0.0 ){  //Por repetición de intervalo cerrado  [a, b], [b, c]
      i++;
      fc = Eval.Value(x += dx);}
    fp=fc;
  }
  *nb = nbb;
}

//---------------------------------------------------------------------------
// Método de Brent
long double zbrent(AnsiString F, long double x1, long double x2,
        long double tol)
{
  TEval Eval;
  Eval.Evaluate(F);
  int iter;
  long double a = x1, b = x2, c = x2, d, e, min1, min2;
  long double fa = Eval.Value(a), fb = Eval.Value(b), fc, p, q, r, s, tol1, xm;
  if ((fa > 0.0 && fb > 0.0) || (fa < 0.0 && fb < 0.0))
    throw Exception("La raiz debe estar encerrada método zbrent");
  fc = fb;
  for (iter = 1; iter <= ITMAX; iter++){
    if ((fb > 0.0 && fc > 0.0) || (fb < 0.0 && fc < 0.0)) {
      c = a; //Rename a, b, c and adjust bounding interval d.
      fc = fa;
      e = d = b-a;
    }
    if (fabs(fc) < fabs(fb)) {
      a = b;
      b = c;
      c = a;
      fa = fb;
      fb = fc;
      fc = fa;
    }
    tol1 = 2.0*EPS*fabs(b)+0.5*tol; //Convergence check.
    xm = 0.5*(c-b);
    if (fabs(xm) <= tol1 || fb == 0.0)
      return b;
    if (fabs(e) >= tol1 && fabs(fa) > fabs(fb)) {
      s=fb/fa; //Attempt inverse quadratic interpolation.
      if (a == c) {
        p=2.0*xm*s;
        q=1.0-s;
      }else{
        q=fa/fc;
        r=fb/fc;
        p=s*(2.0*xm*q*(q-r)-(b-a)*(r-1.0));
        q=(q-1.0)*(r-1.0)*(s-1.0);
      }
      if (p > 0.0)
        q = -q; //Check whether in bounds.
      p=fabs(p);
      min1=3.0*xm*q-fabs(tol1*q);
      min2=fabs(e*q);
      if (2.0*p < (min1 < min2 ? min1 : min2)) {
        e=d; //Accept interpolation.
        d=p/q;
      }else{
        d=xm; //Interpolation failed, use bisection.
        e=d;
      }
    }else{ //Bounds decreasing too slowly, use bisection.
      d=xm;
      e=d;
    }
    a=b; //Move last best guess to a.
    fa=fb;
    if (fabs(d) > tol1) //Evaluate new trial root.
      b += d;
    else
      b += SIGN(tol1,xm);
    fb=Eval.Value(b);
  }
  //throw Exception("Maximum number of iterations exceeded in zbrent");
  return 0.0; //Never get here.
}

//---------------------------------------------------------------------------

#pragma package(smart_init)
