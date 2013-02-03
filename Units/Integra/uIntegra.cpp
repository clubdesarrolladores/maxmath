//---------------------------------------------------------------------------
#pragma hdrstop

#include "uIntegra.h"
#include <Math.h>

//---------------------------------------------------------------------------
void TIntegrate::Expression(AnsiString exp)
{
  if( Eval.Evaluate(exp) )
  {
    Exp = exp;
    cont = 0;
  }
}

//---------------------------------------------------------------------------
long double TIntegrate::Integrate_Adap(long double izq, long double der, long double &err)
{
  cont++;
  long double h,p1,p2,p3,p4,p5;
  long double error,err1,err2;
  long double int3,int5;
  h = der-izq;
  p1 = Eval.Value(izq);
  p2 = Eval.Value(izq+h/4.0);
  p3 = Eval.Value(izq+h/2.0);
  p4 = Eval.Value(der-h/4.0);
  p5 = Eval.Value(der);
  int3 = h*(p1+4.0*p3+p5)/6.0;
  int5 = h*(p1+4.0*p2+2.0*p3+4.0*p4+p5)/12.0;
  error = fabs(int3-int5)/15.0;
  if( (error < err) || (cont > 30) )
  {
    err = error;
    return int5;
  }
  else
  {
    err1 = err2 = err/2.0;
    int5 = Integrate_Adap(izq,izq+h/2.0,err1);
    int5 += Integrate_Adap(izq+h/2.0,der,err2);
    err = err1+err2;
    return int5;
  }
}

//---------------------------------------------------------------------------
long double TIntegrate::Integrate_Simp(long double izq, long double der, int div)
{
  long double n,fx1,fx2,a,b,I,h,x1,x2,fa,fb,I1,I2;
  a = izq;
  b = der;
  n = (div%2) ? div+1 : div;
  h = (b-a)/n;
  x1 = a+h;
  x2 = a+2*h;
  I1 = 0;
  I2 = 0;
  do
  {
    fx1 = Eval.Value(x1);
    I1 = I1+4*fx1;
    x1 = x1+2*h;
  }while ( (a<b)? x1<b : x1>b );
  do
  {
    fx2 = Eval.Value(x2);
    I2 = I2+2*fx2;
    x2 = x2+2*h;
  }while ( (a<b)? x2<b : x2>b );
  fa = Eval.Value(a);
  fb = Eval.Value(b);
  I = h*(fa+I1+I2+fb)/3;
  return I;
}
//---------------------------------------------------------------------------

#pragma package(smart_init)
