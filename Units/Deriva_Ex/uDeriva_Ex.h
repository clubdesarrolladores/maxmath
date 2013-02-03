//---------------------------------------------------------------------------

#ifndef uDeriva_ExH
#define uDeriva_ExH

#include "DiffExpress.hpp"

class TDeriva
{
  private:
    TDiffExpress * Diff;
  public:
    TDeriva(void);
    ~TDeriva(void);
    bool Derivar(AnsiString s, AnsiString *d);
};

//---------------------------------------------------------------------------
#endif
 