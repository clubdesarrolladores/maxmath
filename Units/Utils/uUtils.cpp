//---------------------------------------------------------------------------


#pragma hdrstop

#include "uUtils.h"
#include <WinBase.h>

//---------------------------------------------------------------------------
AnsiString GetWindowsDirectory(void)
{
   WCHAR *pcWindowsDirectory;
   DWORD dwWDSize;
   unsigned int NewSize;
   AnsiString result;
   dwWDSize = MAX_PATH + 1;
   pcWindowsDirectory = new WCHAR[dwWDSize];
   try{
     NewSize = GetWindowsDirectory(pcWindowsDirectory, dwWDSize);
     if( NewSize > dwWDSize){
       dwWDSize = NewSize;
       NewSize = GetWindowsDirectory(pcWindowsDirectory, dwWDSize);}
     if( NewSize == 0)
       throw Exception("Imposible encontrar el directorio de Windows");
     else
       result = pcWindowsDirectory;
   }__finally{
     delete pcWindowsDirectory;}
   return IncludeTrailingPathDelimiter(result);
}

//---------------------------------------------------------------------------
AnsiString GetSystemDirectory(void)
{
  WCHAR *pcSystemDirectory;
  DWORD dwSDSize;
  unsigned int NewSize;
  AnsiString result;
  dwSDSize = MAX_PATH + 1;
  pcSystemDirectory = new WCHAR[dwSDSize];
  try{
    NewSize = GetSystemDirectory(pcSystemDirectory, dwSDSize);
    if( NewSize > dwSDSize){
      dwSDSize = NewSize;
      NewSize = GetSystemDirectory(pcSystemDirectory, dwSDSize);}
    if( NewSize == 0)
       throw Exception("Imposible encontrar el directorio de Sistemas");
    else
      result = pcSystemDirectory;
  }__finally{
    delete pcSystemDirectory;}
  return IncludeTrailingPathDelimiter(result);
}

//---------------------------------------------------------------------------
AnsiString GetCurrentDirectory(void)
{
  DWORD nBufferLength;
  WCHAR *lpBuffer;
  unsigned int NewSize;
  AnsiString result;
  nBufferLength = MAX_PATH + 1;
  lpBuffer = new WCHAR[nBufferLength];
  try{
	NewSize = GetCurrentDirectory( nBufferLength, lpBuffer);
	if( NewSize > nBufferLength){
	  nBufferLength = NewSize;
	  NewSize = GetCurrentDirectory( nBufferLength, lpBuffer);}
	if( NewSize == 0)
	   throw Exception("Imposible encontrar el directorio actual");
	else
	  result = lpBuffer;
  }__finally{
	delete lpBuffer;}
  return IncludeTrailingPathDelimiter(result);
}

//---------------------------------------------------------------------------
AnsiString GetUserName(void)
{
  WCHAR *pcUser;
  DWORD dwUSize;
  AnsiString result;
  dwUSize = MAX_COMPUTERNAME_LENGTH + 1;
  pcUser = new WCHAR[dwUSize];
  try{
	try{
	  if( GetUserName(pcUser, &dwUSize) )
		result = pcUser;
	  else
		throw Exception("Imposible encontrar el nombre de ususario");
	}catch(...){
	  result = "Desconocido";
	}
  }__finally{
	delete pcUser;}
  return result;
}

//---------------------------------------------------------------------------
AnsiString GetComputerName(void)
{
  WCHAR *pcComputer;
  DWORD dwCSize;
  AnsiString result;
  dwCSize = MAX_COMPUTERNAME_LENGTH + 1;
  pcComputer = new WCHAR[dwCSize];
  try{
	try{
	  if( GetComputerName(pcComputer, &dwCSize) )
		result = pcComputer;
	  else
		throw Exception("Imposible encontrar el nombre de PC");
	}catch(...){
	  result = "Desconocido";
	}
  }__finally{
	delete pcComputer;}
  return result;
}

//---------------------------------------------------------------------------

int GetAvailableMemory(void){
  MEMORYSTATUS MemStat;
  MemStat.dwLength = sizeof(MEMORYSTATUS);
  GlobalMemoryStatus(&MemStat);
  return int(100-MemStat.dwMemoryLoad);
}

//---------------------------------------------------------------------------
#pragma package(smart_init)
