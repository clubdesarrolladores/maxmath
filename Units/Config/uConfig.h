//---------------------------------------------------------------------------
// Módulo: Config
// Autor: Gastón Furini
// Fecha: 20/01/2005
// Versión: 1.0
// Descripción:
//      Contiene la definición de una clase que modela la configuración
// de la aplicación guardada en un archivo .INI
//---------------------------------------------------------------------------

#ifndef uConfigH
#define uConfigH

#include <System.hpp>

class TConfig // Clase que contiene las opciones de configuración
{
  private:
    AnsiString FileName;   // Archivo .INI
    AnsiString FDir;       // Directorio de .MID
    bool fDeleteImport;    // Eliminar al importar
    bool fDeleteFunction;  // Preguntar antes de eliminar
    bool fCheckWhiteColor; // Chequear color blanco en la impresion
    bool FTrayIcon;        // Mostrar TrayIcon
    bool FErrorArchivos;   // Mostrar errores en archivos
    bool FVerificarAsoc;   // Verificar asociaciones de archivos al iniciar
    AnsiString FDirDsg;       // Directorio de Diseños
    AnsiString FDirPmm;       // Directorio de Archivos Pmm
  protected:
    void WriteAll(void);   // Escribe el archivo .INI
    void ReadAll(void);    // Lee el archivo .INI
    void SetDir(AnsiString Value);
    void SetDeleteImport(bool Value);
    void SetDeleteFunction(bool Value);
    void SetCheckWhiteColor(bool Value);
    void SetTrayIcon(bool Value);
    void SetErrorArchivos(bool Value);
    void SetVerificarAsoc(bool Value);
    void SetDirDsg(AnsiString Value);
    void SetDirPmm(AnsiString Value);
  public:
    TConfig();
    ~TConfig();
    void SetDefault(void);  // Valores por defecto en las propiedades
    __property AnsiString Directorio = {read = FDir, write = SetDir};
    __property bool DeleteImport = {read = fDeleteImport, write = SetDeleteImport};
    __property bool DeleteFunction = {read = fDeleteFunction, write = SetDeleteFunction};
    __property bool CheckWhiteColor = {read = fCheckWhiteColor, write = SetCheckWhiteColor};
    __property bool TrayIcon = {read = FTrayIcon, write = SetTrayIcon};
    __property bool ErrorArchivos = {read = FErrorArchivos, write = SetErrorArchivos};
    __property bool VerificarAsoc = {read = FVerificarAsoc, write = SetVerificarAsoc};
    __property AnsiString DirectorioDsg = {read = FDirDsg, write = SetDirDsg};
    __property AnsiString DirectorioPmm = {read = FDirPmm, write = SetDirPmm};
};

//---------------------------------------------------------------------------
#endif
