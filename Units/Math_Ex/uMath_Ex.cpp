//---------------------------------------------------------------------------


#pragma hdrstop

#include "uMath_Ex.h"
#include <math.h>

//---------------------------------------------------------------------------
//Representa una recta de ecuación Y = m*(X-x)+y
AnsiString __fastcall Recta(long double m, long double x, long double y)
{
  AnsiString R;
  TReplaceFlags rf;
  rf << rfReplaceAll;
  R = Format("%g*(x-%g)+%g", ARRAYOFCONST((m,x,y)));
  R = StringReplace(R,"-+","-",rf);
  R = StringReplace(R,"+-","-",rf);
  R = StringReplace(R,"--","+",rf);
  R = StringReplace(R,"++","+",rf);
  return R;
}

//---------------------------------------------------------------------------
long double gcd(long double a, long double b)
{
  if( b == 0 )
    return a;
  else
    return gcd(b, (__int64 )a%(__int64)b);

/*          	|  x, if y=0
gcd(x,y)= 	|
          	|  gcd(y, x MOD y), if y>0
  */

}

//---------------------------------------------------------------------------
void simplificar(long double &num,long double &den)
{
  long double x = gcd(num, den);
  num /= x;
  den /= x;
}

//---------------------------------------------------------------------------
void fraccion(long double Number, long double &num,long double &den)
{
  AnsiString sdouble;
  sdouble = FloatToStr(floor(100000.0*Number)/100000.0);
  if( sdouble.Pos(DecimalSeparator) == 0){
    num = Number;
    den = 0;
  }else{
    while( sdouble[sdouble.Length()] == '0')
      sdouble = sdouble.Delete(sdouble.Length(),1);
    den = 1;
    for( int i = 0; i < (sdouble.Length()-sdouble.Pos(DecimalSeparator)); i++)
      den *= 10;
    sdouble = sdouble.Delete(sdouble.Pos(DecimalSeparator),1);
    if( den == 1 )
      num = Number;
    else{
      num = StrToFloat(sdouble);
      simplificar(num, den);
      if( den < 0 ){
       num = -num;
       den = -den;
      }
    }
  }
}

//---------------------------------------------------------------------------
AnsiString FracToStr(long double num,long double den)
{
  AnsiString Signo = "";
  if( den < 0){
   Signo = "-";
   den = -den;
  }
  return Signo+FloatToStr(num)+"/"+FloatToStr(den);

}

//---------------------------------------------------------------------------
long double factorial(long double x)
{
  int result = 1;
  for(int i = 2; i <= x; i++)
    result *= i;
  return result;
}

//---------------------------------------------------------------------------
AnsiString __fastcall monomio(long double C, long double F, int G)
{
  AnsiString M, I;
//  long double num, den;
  M = "";
  if( C == 0 )
    return "0";
  else
    if( C == 1 )
      M = "";
    else
      if( C == -1 )
        M = "-";
      else{
        //fraccion(C, num, den);
        ///simplificar(num, den);
        M = FloatToStr(C);//FracToStr(num, den);
        }
  if( F == 0 )
    I = "x";
  else
    if( F > 0 )
      I = Format("(x-%g)", ARRAYOFCONST((F)));
    else
      I = Format("(x+%g)", ARRAYOFCONST((-F)));
  if( G == 0 ){
    if( M == "" )
      M = "1";
    else
      if( M == "-" )
        M = "-1";
  }else
    if( G == 1 )
      if( M == "" )
        M = I;
      else
        if( M == "-" )
          M = "-"+I;
        else
          M = M + "*" +I;
    else
      if( G == -1 ){
        if( M == "" )
          M = "1";
        else
          if( M == "-" )
            M = "-1";
        M = M + "/" +I;
      }else
        if( G > 0 )
          if( M == "" )
            M = I + Format("^%d", ARRAYOFCONST((G)));
          else
            if( M == "-" )
              M = "-" + I + Format("^%d", ARRAYOFCONST((G)));
            else
              M = M + "*" + I + Format("^%d", ARRAYOFCONST((G)));
        else{
          if( M == "" )
            M = "1";
          else
            if( M == "-" )
              M = "-1";
          M = M + "/" + I + Format("^%d", ARRAYOFCONST((-G)));}
  return M;
}
//---------------------------------------------------------------------------
#pragma package(smart_init)
