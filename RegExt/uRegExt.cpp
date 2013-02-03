//---------------------------------------------------------------------------

#pragma hdrstop

#include "uRegExt.h"

#include <Registry.hpp>
#include <ShlObj.h>
#include <Windows.h>
#include <SysUtils.hpp>
#include <string>


int IsRegExt(char* ext, char* tfile, char* exe)
{
  int r = 0;
  TRegistry *Reg = new TRegistry();
  try{
    Reg->RootKey = HKEY_CLASSES_ROOT;
    if(Reg->OpenKeyReadOnly(ext) && ((String)tfile == Reg->ReadString(""))){
      Reg->CloseKey();
      if(Reg->OpenKeyReadOnly((String)tfile + "\\Shell\\Open\\Command")){
         r = "\"" + (String)exe + "\" \"%1\"" == Reg->ReadString("");
      }
    }
    Reg->CloseKey();
  }__finally{
    delete Reg;
  }
  return r;
}

void RegExt(char* ext, char* tfile, char* desc, char* exe, int idicon)
{
  TRegistry *Reg = new TRegistry();
  String s;
  try{
    Reg->RootKey = HKEY_CLASSES_ROOT;
    Reg->OpenKey(ext, true);
    Reg->WriteString("", tfile);
    Reg->CloseKey();
    Reg->OpenKey(tfile, true);
    Reg->WriteString("", desc);
    Reg->CloseKey();
    s = (String)tfile + "\\DefaultIcon";
    Reg->OpenKey(s, true);
    s = (String)exe + "," + IntToStr(idicon);
    Reg->WriteString("", s);
    Reg->CloseKey();
    s = (String)tfile + "\\Shell\\Open";
    Reg->OpenKey(s, true);
    Reg->WriteString("", "&Open");
    Reg->CloseKey();
    s = (String)tfile + "\\Shell\\Open\\Command";
    Reg->OpenKey(s, True);
    s = "\"" + (String)exe + "\" \"%1\"";
    Reg->WriteString("", s);
    Reg->CloseKey();
    SHChangeNotify(SHCNE_ASSOCCHANGED, SHCNF_IDLIST, NULL, NULL);
  }__finally{
    delete Reg;
  }
}

//---------------------------------------------------------------------------
#pragma package(smart_init)
 