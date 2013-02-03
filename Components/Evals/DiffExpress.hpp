// CodeGear C++Builder
// Copyright (c) 1995, 2011 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'DiffExpress.pas' rev: 23.00 (Win32)

#ifndef DiffexpressHPP
#define DiffexpressHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <Winapi.Windows.hpp>	// Pascal unit
#include <Winapi.Messages.hpp>	// Pascal unit
#include <System.SysUtils.hpp>	// Pascal unit
#include <System.Classes.hpp>	// Pascal unit
#include <Vcl.Graphics.hpp>	// Pascal unit
#include <Vcl.Controls.hpp>	// Pascal unit
#include <Vcl.Forms.hpp>	// Pascal unit
#include <Vcl.Dialogs.hpp>	// Pascal unit
#include <Vcl.ExtCtrls.hpp>	// Pascal unit
#include <System.Math.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Diffexpress
{
//-- type declarations -------------------------------------------------------
struct DECLSPEC_DRECORD TTree
{
	
public:
	int num;
	System::UnicodeString con;
	int l;
	int r;
};


typedef int PTree;

class DELPHICLASS TDiffExpress;
#pragma pack(push,4)
class PASCALIMPLEMENTATION TDiffExpress : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
private:
	typedef System::StaticArray<TTree, 5000> _TDiffExpress__1;
	
	
private:
	_TDiffExpress__1 t;
	int index;
	System::UnicodeString FFormula;
	System::UnicodeString DVar;
	bool Err;
	int Bc;
	int PrevLex;
	int Curlex;
	int Pos;
	int Tree;
	int Tree2;
	int __fastcall gettree(System::UnicodeString s);
	void __fastcall deltree(void);
	System::UnicodeString __fastcall getformula(int _t);
	System::UnicodeString __fastcall getformula2(int _t);
	int __fastcall simplify(int _t);
	void __fastcall Error(System::UnicodeString s);
	
public:
	__fastcall virtual TDiffExpress(System::Classes::TComponent* o);
	__fastcall virtual ~TDiffExpress(void);
	System::UnicodeString __fastcall diff(System::UnicodeString v);
	
__published:
	__property System::UnicodeString Formula = {read=FFormula, write=FFormula};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static const System::Word MaxIndex = System::Word(0x1388);
extern PACKAGE void __fastcall Register(void);

}	/* namespace Diffexpress */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_DIFFEXPRESS)
using namespace Diffexpress;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// DiffexpressHPP
