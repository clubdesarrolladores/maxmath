//---------------------------------------------------------------------------

#ifndef uMaxParserH
#define uMaxParserH

#include<vector>

using namespace std;

namespace uParser {


  enum Termino {
    tDesconocido,
    tNumero,
    tOperador,
    tVariable,
    tOpen,
    tClose,
    tFunction
  };


  class TMaxParser {
    private:
      string *aInfija;
      string *aPostfija;
      string *aVariables;
      string *aOperadores;
      string *aNumeros;
      vector<string> functions;
    protected:
      string infijaToPosfija(string);
      string nextTerm(string &, Termino &);
      bool precedencia(register char, register char);
    public:
      bool Debug;
      void analizar(string &);
      TMaxParser(string);
       ~TMaxParser();
      void setInfija(string);
      string getPostfija(void);
  };
}

//---------------------------------------------------------------------------
#endif
