//---------------------------------------------------------------------------


#pragma hdrstop

#include "uParser.h"

#include <string>
#include <stack>

uParser::TParser::TParser(string infija)
{
	aInfija = new string;
	aPostfija = new string;
	aVariables = new string("xyz");
	aOperadores = new string("+-*/%^=");
	aNumeros = new string("0123456789.");
	setInfija(infija);
}

uParser::TParser::~TParser()
{
	delete aInfija;
	delete aPostfija;
	delete aVariables;
	delete aOperadores;
	delete aNumeros;
}

void uParser::TParser::analizar(string &expr){
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

void uParser::TParser::setInfija(string infija){
	analizar(infija);
	*aInfija = infija;
	*aPostfija = infijaToPosfija(infija);
}

string uParser::TParser::getPostfija(void){
	return *aPostfija;
}

bool uParser::TParser::precedencia(register char c1, register char c2){
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

string uParser::TParser::infijaToPosfija(string infija)
{
	stack<string> pila;
	string posfija;
	string term;
	tTerm tipo;
	while(!(term = nextTerm(infija, tipo)).empty()) {
		switch(tipo) {
			case ttNumero: case ttVariable:
				posfija += " " + term;
				break;
			case ttOperador:
				while(pila.size() > 0 && string::npos != aOperadores->find(pila.top()[0]) && precedencia(pila.top()[0], term[0])) {
					posfija += " " + pila.top();
					pila.pop();
				}
				pila.push(term);
				break;
			case ttOpen:
				pila.push(term);
				break;
			case ttClose:
				while(!pila.empty() && pila.top()[0]!='(') {
					posfija += " " + pila.top();
					pila.pop();
				}
				if(pila.top()[0] == '(')
					pila.pop();
				break;
			case ttDesconocido:	default:
				break;
		}
	}
	while(pila.size() > 0) {
		posfija += " " + pila.top();
		pila.pop();
	}
	return posfija;
}

string uParser::TParser::nextTerm(string &expr, tTerm &tipo)
{
	string term;
	if(!expr.empty())
		if(string::npos != aNumeros->find(expr[0])) {
			string::size_type i = 0;
			while(i < expr.length() && string::npos != aNumeros->find(expr[i]))
				i++;
			term = expr.substr(0, i);
			expr = expr.substr(i, expr.length());
			tipo = ttNumero;
		}else
                	if(string::npos != aOperadores->find(expr[0])) {
				term = expr.substr(0, 1);
				expr = expr.substr(1, expr.length());
				tipo = ttOperador;
			}else
                        	if(string::npos != aVariables->find(expr[0])) {
					term = expr.substr(0, 1);
					expr = expr.substr(1, expr.length());
					tipo = ttVariable;
				} else
                                	if('(' == expr[0]) {
						term = expr.substr(0, 1);
						expr = expr.substr(1, expr.length());
						tipo = ttOpen;
					} else
                                        	if(')' == expr[0]) {
							term = expr.substr(0, 1);
							expr = expr.substr(1, expr.length());
							tipo = ttClose;
						}
	return term;
}

//---------------------------------------------------------------------------

#pragma package(smart_init)
