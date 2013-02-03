//---------------------------------------------------------------------------

#pragma hdrstop

#include "uIntervalo.h"

void Add(TIntervalo*&Intervalos,TInfoInt Info)
{
  TIntervalo *w, *z;
  w = new TIntervalo;
  w->Info = Info;
  if( Intervalos == NULL )
  {
    Intervalos = w;
    Intervalos->Next = NULL;
  }
  else
    if( Info.Min < Intervalos->Info.Min )
    {
      w->Next = Intervalos;
      Intervalos = w;
    }
    else
    {
      z = Intervalos;
      while( z->Next != NULL )
        if( z->Next->Info.Min < Info.Min )
          z = z->Next;
        else
          break;
      if( z->Next == NULL )
      {
        w->Next = NULL;
        z->Next = w;
      }
      else
      {
        w->Next = z->Next;
        z->Next = w;
      }
    }
}

bool Delete(TIntervalo*&Intervalos,TInfoInt Info)
{
  TIntervalo *w, *z;
  bool Result;
  Result = false;
  if( Intervalos != NULL )
  {
    z = Intervalos;
    if( z->Info == Info )
    {
      w = z;
      Intervalos = z->Next;
      delete w;
      Result = true;
    }
    else
    {
      z = Intervalos;
      while( z->Next != NULL )
        if( !(z->Next->Info == Info) )
          z = z->Next;
        else
          break;
      if( z->Next != NULL )
      {
        w = z->Next;
        z->Next = w->Next;
        delete w;
        Result = true;
      }
    }
  }
  return Result;
}
//---------------------------------------------------------------------------
void DeleteAll(TIntervalo*&Intervalos)
{
  //TODO: Mejorar algoritmo
  while( Intervalos != NULL )
    Delete(Intervalos,Intervalos->Info);
}
//---------------------------------------------------------------------------
int Count(TIntervalo*&Intervalos)
{
  TIntervalo*z;
  int Result;
  z = Intervalos;
  Result = 0;
  while( z != NULL )
  {
    z = z->Next;
    Result++;
  }
  return Result;
}

TIntervalo* Find(TIntervalo*&Intervalos,int n)
{
  TIntervalo*z;
  int i = 0;
  z = Intervalos;
  while( (z != NULL) && (i <= n) )
  {
    i++;
    if( i <= n )
      z = z->Next;
  }
  return z;
}
//---------------------------------------------------------------------------
int Find(TIntervalo*&Intervalos,TInfoInt Info) //Mejorar algoritmo
{
  TIntervalo*z;
  int i = 0;
  z = Intervalos;
  while( z != NULL )
    if( Info == z->Info )
      break;
    else{
      z = z->Next;
      i++;}
  if( ((i == 0) && !(Info == z->Info)) || (i >= Count(Intervalos)) )
    i = -1;
  return i;
}
//---------------------------------------------------------------------------
TIntervalo* Find(TIntervalo*&Intervalos,long double x)
{
  TIntervalo*z;
  bool Error;
  Error = true;
  z = Intervalos;
  while( z != NULL )
  {
    if( (z->Info.Min <= x) && (x < z->Info.Max) )
    {
      Error = false;
      break;
    }
    else
      z = z->Next;
  }
  if( Error )
    z = NULL;
  return z;
}

void Soporte(TIntervalo*&Intervalos,long double *a, long double *b)
{
  if( Intervalos != NULL )
  {
    *a = Find(Intervalos,0)->Info.Min;
    *b = Find(Intervalos,Count(Intervalos)-1)->Info.Max;
  }
  else
  {
    *a = 0;
    *b = 0;
  }
}

TError CheckNewInterval(TIntervalo*&Intervalos,TInfoInt Info)
{
  int i;
  TError Result;
  if( Info.Min < Info.Max )
    if( Intervalos == NULL )
      Result = erNoError;
    else
    {
      i = 0;
      while( (Find(Intervalos,i)->Info.Min < Info.Min) &&
             (i < Count(Intervalos)) )
      {
        i++;
        if( i == Count(Intervalos) )
          break;
      }
      if( i == 0 )
      {
        if( Info.Max <= Find(Intervalos,i)->Info.Min )
          Result = erNoError;
        else
          Result = erSuperposicion;
      }
      else
        if( i == Count(Intervalos) )
          if( Find(Intervalos,i-1)->Info.Max <= Info.Min )
            Result = erNoError;
          else
            Result = erSuperposicion;
        else
          if( (Find(Intervalos,i-1)->Info.Max <= Info.Min) &&
              (Info.Max <= Find(Intervalos,i)->Info.Min) )
            Result = erNoError;
          else
            Result = erSuperposicion;
    }
  else
    Result = erIntervaloAbsurdo;
  return Result;
}

void Copy(TIntervalo*&Intervalos,TIntervalo*&Copia)
{
  TInfoInt Aux;
  int i, k;
  k = Count(Intervalos);
  Copia = NULL;
  for( i = 0; i < k; i++)
  {
    Aux = Find(Intervalos,i)->Info;
    Add(Copia,Aux);
  }
}

//---------------------------------------------------------------------------

#pragma package(smart_init)
