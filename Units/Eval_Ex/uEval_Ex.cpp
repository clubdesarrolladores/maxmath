//---------------------------------------------------------------------------


#pragma hdrstop

#include "uEval_Ex.h"

//---------------------------------------------------------------------------

TEval::TEval(void)
{
  Calc = new TCalcExpress(NULL);
  Calc->Variables->Add("x");
  Randomize();
}

TEval::~TEval(void)
{
  delete Calc;
}

bool TEval::Evaluate(AnsiString s)
{
  //long double x[1];
  //int i = 0;
  //x[0] = 0;
  try{
    Calc->Formula = s;
    /*do{
      x[0] += 0.1;
      Calc->calc(x,1);
      i++;
    }while( (Calc->LastError != eNoError) || (i < 10) );*/
    return true;
  }catch(...){
    return false;
  }
}

long double TEval::Value(long double x)
{
  try
  {
    return Calc->calc(&x,1);
  }
  catch(...)
  {
    return 0;
  }
}

TError TEval::LastError(void)
{
  return Calc->LastError;
}

#pragma package(smart_init)
