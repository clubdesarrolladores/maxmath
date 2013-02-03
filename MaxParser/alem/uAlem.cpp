//---------------------------------------------------------------------------


#pragma hdrstop

#include "uAlem.h"

bool precedencia(string s1, string s2){
	if(s1[0] == '*' || s1[0] == '/')
		return true;
	else
		if(s2[0] == '*' || s2[0] == '/')
			return false;
		else 
			return true;		
}

string infijaToPosfija(string infija)
{
	string posfija;
	vector<string> pila;
	string term;
	uParser::tTerm tipo;
	while((term = nextTerm(infija, tipo)) != ""){
		if(tipo == uParser::ttOperador){
			while(pila.size()>0 && precedencia(pila[pila.size()-1], term)){
				posfija += " " + pila[pila.size()-1];
				pila.pop_back();
			}
			pila.push_back(term);
		}else if(tipo == uParser::ttNumero)
			posfija += " " + term;
		}
	while(pila.size()>0){
		posfija += " " + pila[pila.size()-1];
		pila.pop_back();
	}
	return posfija;
}

string nextTerm(string &expr, uParser::tTerm &tipo)
{
	const string operadores = "+-*/";
	const string numeros = "0123456789.";
	string term = "";
	if(expr.length() > 0)
		if(string::npos != operadores.find(expr[0])){
			term = expr.substr(0, 1);
			expr = expr.substr(1, expr.length());
			tipo = uParser::ttOperador;
		}else
			if(string::npos != numeros.find(expr[0])){
				string::size_type i = 0;
				while(i < expr.length() && string::npos != numeros.find(expr[i]))
					i++;
				term = expr.substr(0, i);
				expr = expr.substr(i, expr.length());
				tipo = uParser::ttNumero;
			}
	return term;
}

//---------------------------------------------------------------------------

#pragma package(smart_init)
