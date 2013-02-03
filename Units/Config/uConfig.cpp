//---------------------------------------------------------------------------
#pragma hdrstop

#include "uConfig.h"
#include <IniFiles.hpp>
#include <Forms.hpp>
#include "uUtils.h"

const AnsiString ConfigFile = "maxmath.ini";

//---------------------------------------------------------------------------
// Contructor
TConfig::TConfig(void)
{
  FileName = GetWindowsDirectory() + ConfigFile;
  if( !FileExists(FileName) )
  {
    SetDefault();
    WriteAll();
  }
  else
    ReadAll();
}

//---------------------------------------------------------------------------
// Destructor
TConfig::~TConfig(void)
{
  WriteAll();
}

//---------------------------------------------------------------------------
// Valores por defecto en las propiedades
void TConfig::SetDefault(void)
{
  fDeleteImport = false;
  FDir = ExtractFilePath(Application->ExeName)+"Musica\\";
  fCheckWhiteColor = true;
  FTrayIcon = true;
  fDeleteFunction = true;
  FErrorArchivos = false;
  FVerificarAsoc = false;
  FDirDsg = ExtractFilePath(Application->ExeName)+"Diseños\\";
  FDirPmm = ExtractFilePath(Application->ExeName)+"Ejemplos\\";
}

//---------------------------------------------------------------------------
// Escribe el archivo .INI
void TConfig::WriteAll(void)
{
  TIniFile *Ini;
  try{
    Ini = new TIniFile(FileName);
    Ini->WriteBool("Archivos e impresiones","Eliminar importado",fDeleteImport);
    Ini->WriteString("Archivos e impresiones","Directorio de sonidos",FDir);
    Ini->WriteBool("Archivos e impresiones","Verificar color impresión",fCheckWhiteColor);
    Ini->WriteBool("Miscelaneos","TrayIcon",FTrayIcon);
    Ini->WriteBool("Miscelaneos","Eliminación de función",fDeleteFunction);
    Ini->WriteBool("Archivos e impresiones","Error de archivos",FErrorArchivos);
    Ini->WriteBool("Miscelaneos","Verificar asociaciones",FVerificarAsoc);
    Ini->WriteString("Archivos e impresiones","Directorio de diseños",FDirDsg);
    Ini->WriteString("Archivos e impresiones","Directorio de proyectos",FDirPmm);
  }__finally{
    delete Ini;}
}

//---------------------------------------------------------------------------
// Lee el archivo .INI
void TConfig::ReadAll(void)
{
  TIniFile *Ini;
  try{
    Ini = new TIniFile(FileName);
    fDeleteImport = Ini->ReadBool("Archivos e impresiones","Eliminar importado",false);
    FDir = Ini->ReadString("Archivos e impresiones","Directorio de sonidos",ExtractFilePath(Application->ExeName)+"Musica\\");
    fCheckWhiteColor = Ini->ReadBool("Archivos e impresiones","Verificar color impresión",false);
    FTrayIcon = Ini->ReadBool("Miscelaneos","TrayIcon",false);
    fDeleteFunction = Ini->ReadBool("Miscelaneos","Eliminación de función",false);
    FErrorArchivos = Ini->ReadBool("Archivos e impresiones","Error de archivos",false);
    FVerificarAsoc = Ini->ReadBool("Miscelaneos","Verificar asociaciones",false);
    FDirDsg = Ini->ReadString("Archivos e impresiones","Directorio de diseños",ExtractFilePath(Application->ExeName)+"Diseños\\");
    FDirPmm = Ini->ReadString("Archivos e impresiones","Directorio de proyectos",ExtractFilePath(Application->ExeName)+"Ejemplos\\");
  }__finally{
    delete Ini;}
}

//---------------------------------------------------------------------------
void TConfig::SetDir(AnsiString Value)
{
  if( Value != FDir )
    if( DirectoryExists(Value) )
      FDir = Value;
}

//---------------------------------------------------------------------------
void TConfig::SetDeleteImport(bool Value)
{
  if( Value != fDeleteImport )
    fDeleteImport = Value;
}

//---------------------------------------------------------------------------
void TConfig::SetDeleteFunction(bool Value)
{
  if( Value != fDeleteFunction )
    fDeleteFunction = Value;
}

//---------------------------------------------------------------------------
void TConfig::SetCheckWhiteColor(bool Value)
{
  if( Value != fCheckWhiteColor )
    fCheckWhiteColor = Value;
}

//---------------------------------------------------------------------------
void TConfig::SetTrayIcon(bool Value)
{
  if( Value != FTrayIcon )
    FTrayIcon = Value;
}

//---------------------------------------------------------------------------
void TConfig::SetErrorArchivos(bool Value)
{
  if( Value != FErrorArchivos )
    FErrorArchivos = Value;
}

//---------------------------------------------------------------------------
void TConfig::SetVerificarAsoc(bool Value)
{
  if( Value != FVerificarAsoc )
    FVerificarAsoc = Value;
}

//---------------------------------------------------------------------------
void TConfig::SetDirDsg(AnsiString Value)
{
  if( Value != FDirDsg )
    FDirDsg = Value;
}

//---------------------------------------------------------------------------
void TConfig::SetDirPmm(AnsiString Value)
{
  if( Value != FDirPmm )
    FDirPmm = Value;
}

//---------------------------------------------------------------------------
#pragma package(smart_init)
