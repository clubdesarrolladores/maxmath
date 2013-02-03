// CodeGear C++Builder
// Copyright (c) 1995, 2011 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'CalcExpress.pas' rev: 23.00 (Win32)

#ifndef CalcexpressHPP
#define CalcexpressHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.SysUtils.hpp>	// Pascal unit
#include <System.Classes.hpp>	// Pascal unit
#include <System.Math.hpp>	// Pascal unit
#include <Winapi.Windows.hpp>	// Pascal unit
#include <Winapi.Messages.hpp>	// Pascal unit
#include <Vcl.Graphics.hpp>	// Pascal unit
#include <Vcl.Controls.hpp>	// Pascal unit
#include <Vcl.Forms.hpp>	// Pascal unit
#include <Vcl.Dialogs.hpp>	// Pascal unit
#include <Vcl.ExtCtrls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Calcexpress
{
//-- type declarations -------------------------------------------------------
struct DECLSPEC_DRECORD TTree
{
	
public:
	int num;
	System::UnicodeString con;
	void *l;
	void *r;
};


typedef TTree *PTree;

#pragma option push -b-
enum TError : unsigned char { eNoError, eDivCero, eDominio, eSintaxis };
#pragma option pop

class DELPHICLASS TCalcExpress;
#pragma pack(push,4)
class PASCALIMPLEMENTATION TCalcExpress : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
private:
	bool Err;
	int Bc;
	int PrevLex;
	int Curlex;
	int Pos;
	System::UnicodeString FFormula;
	void *Tree;
	System::Classes::TStrings* FVariables;
	bool FDefaultNames;
	TError FLastError;
	void __fastcall init(System::UnicodeString s);
	void * __fastcall gettree(System::UnicodeString s);
	void * __fastcall deltree(PTree t);
	void __fastcall Error(System::UnicodeString s);
	void __fastcall SetVariables(System::Classes::TStrings* Value);
	
public:
	__fastcall virtual TCalcExpress(System::Classes::TComponent* o);
	__fastcall virtual ~TCalcExpress(void);
	System::Extended __fastcall calc(System::Extended *args, const int args_Size);
	__property TError LastError = {read=FLastError, nodefault};
	
__published:
	__property System::UnicodeString Formula = {read=FFormula, write=init};
	__property System::Classes::TStrings* Variables = {read=FVariables, write=SetVariables};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall Register(void);

}	/* namespace Calcexpress */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_CALCEXPRESS)
using namespace Calcexpress;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// CalcexpressHPP
