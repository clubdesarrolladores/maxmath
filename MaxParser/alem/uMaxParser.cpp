//---------------------------------------------------------------------------


#pragma hdrstop

#include "uMaxParser.h"

#include <string>
#include <stack>

#include <Dialogs.hpp>

uParser::TMaxParser::TMaxParser(string infija)
{
	aInfija = new string;
	aPostfija = new string;
	aVariables = new string("xyz");
	aOperadores = new string("+-*/%^=");
	aNumeros = new string("0123456789.");
  functions.push_back("sin");
  functions.push_back("cos");
  functions.push_back("tan");
  functions.push_back("exp");
  setInfija(infija);
}

uParser::TMaxParser::~TMaxParser()
{
	delete aInfija;
	delete aPostfija;
	delete aVariables;
	delete aOperadores;
	delete aNumeros;
}

void uParser::TMaxParser::analizar(string &expr){
	//borrar espacios
	string::size_type i = 0;
	while(i < expr.length())
		if(expr[i] <= 32)
			expr.erase(i,1);
		else
			i++;
	//reemplazar signos
	while((i = expr.find("--")) != string::npos)
		expr.replace(i,2,"+");
	while((i = expr.find("++")) != string::npos)
		expr.replace(i,2,"+");
	while((i = expr.find("+-")) != string::npos)
		expr.replace(i,2,"-");
	while((i = expr.find("-+")) != string::npos)
		expr.replace(i,2,"-");
}

void uParser::TMaxParser::setInfija(string infija){
	analizar(infija);
	*aInfija = infija;
	*aPostfija = infijaToPosfija(infija);
}

string uParser::TMaxParser::getPostfija(void){
	return *aPostfija;
}

bool uParser::TMaxParser::precedencia(register char c1, register char c2){
	if(c1 == '^' && c2 == '^')
		return false;
	else if(c1 == '=' && c2 == '=')
		return false;
	else
		if(c1 == '*' || c1 == '/')
			return true;
		else
			if(c2 == '*' || c2 == '/')
				return false;
			else
				return true;
}

string uParser::TMaxParser::infijaToPosfija(string infija)
{
	stack<string> pila;
	string posfija;
	string term;
	Termino tipo;
	while(!(term = nextTerm(infija, tipo)).empty()) {
		switch(tipo) {
			case tNumero: case tVariable:
				posfija += " " + term;
				break;
			case tOperador:
				while(pila.size() > 0 && string::npos != aOperadores->find(pila.top()[0]) && precedencia(pila.top()[0], term[0])) {
					posfija += " " + pila.top();
					pila.pop();
				}
				pila.push(term);
				break;
      case tFunction:
      //TODO: Si arreglamos esto ya tomaria funciones de un parámetro
        while(pila.size() > 0 /*&& string::npos != aOperadores->find(pila.top()) && precedencia(pila.top()[0], term[0])*/) {
					posfija += " " + pila.top();
					pila.pop();
				}
				pila.push(term);
        break;
			case tOpen:
				pila.push(term);
				break;
			case tClose:
				while(!pila.empty() && pila.top()[0]!='(') {
					posfija += " " + pila.top();
					pila.pop();
				}
				if(pila.top()[0] == '(')
					pila.pop();
				break;
			case tDesconocido:	default:
				break;
		}
	}
	while(pila.size() > 0) {
		posfija += " " + pila.top();
		pila.pop();
	}
	return posfija;
}

string uParser::TMaxParser::nextTerm(string &expr, Termino &tipo)
{
	string term;
	if(!expr.empty())
		if(string::npos != aNumeros->find(expr[0])) {
			string::size_type i = 0;
			while(i < expr.length() && string::npos != aNumeros->find(expr[i]))
				i++;
			term = expr.substr(0, i);
			expr = expr.substr(i, expr.length());
			tipo = tNumero;
		}else
      if(string::npos != aOperadores->find(expr[0])) {
				term = expr.substr(0, 1);
				expr = expr.substr(1, expr.length());
				tipo = tOperador;
			}else
        if(string::npos != aVariables->find(expr[0])) {
					term = expr.substr(0, 1);
					expr = expr.substr(1, expr.length());
					tipo = tVariable;
				}else
          if('(' == expr[0]) {
						term = expr.substr(0, 1);
						expr = expr.substr(1, expr.length());
						tipo = tOpen;
					}else
            if(')' == expr[0]) {
							term = expr.substr(0, 1);
							expr = expr.substr(1, expr.length());
							tipo = tClose;
						}else {
              string::size_type i = 0;
              while(i < expr.length() && expr[i] >= 'a' && expr[i] <= 'z')
                i++;
              string f = expr.substr(0, i);
              vector<string>::iterator it;
              it = find(this->functions.begin(), this->functions.end(), f);
              if(it != this->functions.end()) {
                    term = expr.substr(0, i);
                    expr = expr.substr(i, expr.length());
                    tipo = tFunction;
              }

            }
	return term;
}


//---------------------------------------------------------------------------

#pragma package(smart_init)
