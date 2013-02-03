//---------------------------------------------------------------------------

#ifndef uParserH
#define uParserH

#include<vector>
using namespace std;

namespace uParser{

  enum tTerm {
    ttDesconocido, 
    ttNumero, 
    ttOperador,
    ttVariable,
    ttOpen,
    ttClose
  };


  class TParser
  {
    private:
      string *aInfija;
      string *aPostfija;
      string *aVariables;
      string *aOperadores;
      string *aNumeros;
    protected:
      string infijaToPosfija(string);
      string nextTerm(string &, tTerm &);
      bool precedencia(register char, register char);
    public:
      bool Debug;
      void analizar(string &);
      TParser(string);
       ~TParser();
      void setInfija(string);
      string getPostfija(void);
  };
}
//---------------------------------------------------------------------------
#endif
