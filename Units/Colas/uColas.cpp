//---------------------------------------------------------------------------


#pragma hdrstop

#include "uColas.h"
#include <_null.h> // Por NULL

//---------------------------------------------------------------------------
TCLongDouble::TCLongDouble(void)
{
  Begin = NULL;
  End = NULL;
  FCount = 0;
}

//---------------------------------------------------------------------------
TCLongDouble::~TCLongDouble(void)
{
  while( !Empty() )
    Delete();
}

//---------------------------------------------------------------------------
void TCLongDouble::Add(long double value)
{
  TLongDouble *Node;
  Node = new TLongDouble;
  Node->Value = value;
  Node->Next = NULL;
  if( End == NULL )
    Begin = Node;
  else
    End->Next = Node;
  End = Node;
  FCount++;
}

//---------------------------------------------------------------------------
void TCLongDouble::Delete(void)
{
  TLongDouble *Node;
  if( !Empty() ){
    Node = Begin;
    Begin = Begin->Next;
    delete Node;
    if( Begin == NULL )
      End = NULL;
    FCount--;}
}

//---------------------------------------------------------------------------
bool TCLongDouble::Empty(void)
{
  return Begin == NULL;
}

//---------------------------------------------------------------------------
long double TCLongDouble::GetValue(void)
{
  return Begin->Value;
}

//---------------------------------------------------------------------------
#pragma package(smart_init)
