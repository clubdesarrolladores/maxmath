//---------------------------------------------------------------------------


#pragma hdrstop

#include "uDeriva_Ex.h"

TDeriva::TDeriva(void)
{
  Diff = new TDiffExpress(NULL);
}

TDeriva::~TDeriva(void)
{
  delete Diff;
}

bool TDeriva::Derivar(AnsiString s, AnsiString *d)
{
  try
  {
    Diff->Formula = s;
    *d = Diff->diff("x");
    return true;
  }
  catch(...)
  {
    //Formula de la derivada demasiado grande
    return false;
  }
}

//---------------------------------------------------------------------------

#pragma package(smart_init)
