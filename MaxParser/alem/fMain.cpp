//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fMain.h"
#include "uAlem.h"
#include "uParser.h"
#include "uMaxParser.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
  : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
	string infija, posfija;
	infija = Edit1->Text.c_str();
	posfija = infijaToPosfija(infija);
	Panel1->Caption = "Expresion posfija: " + AnsiString(posfija.c_str());
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
	string infija;
	infija = Edit1->Text.c_str();
	uParser::TParser *Parser = new uParser::TParser(infija);
	Panel1->Caption = Parser->getPostfija().c_str();
	delete Parser;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button3Click(TObject *Sender)
{
  string infija;
	infija = Edit1->Text.c_str();
	uParser::TMaxParser *Parser = new uParser::TMaxParser(infija);
	Panel1->Caption = Parser->getPostfija().c_str();
	delete Parser;
}
//---------------------------------------------------------------------------


