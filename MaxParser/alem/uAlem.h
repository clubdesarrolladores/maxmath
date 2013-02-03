//---------------------------------------------------------------------------

#ifndef uAlemH
#define uAlemH

#include <iostream>
#include <vector.h>

#include "uParser.h"
//enum tTerm {ttDesconocido, ttNumero, ttOperador};

string infijaToPosfija(string expr);
string nextTerm(string &expr, uParser::tTerm &tipo);

//---------------------------------------------------------------------------
#endif
