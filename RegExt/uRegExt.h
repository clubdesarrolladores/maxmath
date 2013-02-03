//---------------------------------------------------------------------------

#ifndef uRegExtH
#define uRegExtH

#if defined(__cplusplus)
extern "C"
{
#endif
__declspec( dllexport ) void RegExt(char* ext, char* tfile, char* desc, char* exe, int idicon);
__declspec( dllexport ) int IsRegExt(char* ext, char* tfile, char* exe);
#if defined(__cplusplus)
}
#endif


//---------------------------------------------------------------------------
#endif
 