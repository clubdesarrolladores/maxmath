//---------------------------------------------------------------------------

#ifndef uEval_ExH
#define uEval_ExH
//---------------------------------------------------------------------------

#include "CalcExpress.hpp"

class TEval
{
  private:
    TCalcExpress * Calc;
  public:
    TEval(void);
    ~TEval(void);
    bool Evaluate(AnsiString s);
    long double Value(long double x);
    Calcexpress::TError LastError(void);
};

#endif
