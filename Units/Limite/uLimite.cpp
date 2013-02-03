//---------------------------------------------------------------------------


#pragma hdrstop

#include "uLimite.h"
#include <math.h>

//---------------------------------------------------------------------------
const long double LDX = 5.0E-8;
//---------------------------------------------------------------------------

bool TLimite::LimiteDer(AnsiString Funcion, long double a, long double &L)
{
  int i = 1;
  a += 2*LDX;
  if( Eval.Evaluate(Funcion) ){
    L = Eval.Value(a);
    switch( Eval.LastError() )
    {
      case eNoError:
        return true;
      case eDivCero:
        while( Eval.LastError() == eDivCero )
        {
          a += 2*LDX*(1+i%10);
          L = Eval.Value(a);
        }
        return true;
      case eDominio, eSintaxis:
        L = 0;
        return false;
      default:
        return false;
    }
  }else{
    L = 0;
    return false;}
}

//---------------------------------------------------------------------------
bool TLimite::LimiteIzq(AnsiString Funcion, long double a, long double &L)
{
  int i = 1;
  a -= 2*LDX;
  if( Eval.Evaluate(Funcion) ){
    L = Eval.Value(a);
    switch( Eval.LastError() )
    {
      case eNoError:
        return true;
      case eDivCero:
        while( Eval.LastError() == eDivCero )
        {
          a -= 2*LDX*(1+i%10);
          L = Eval.Value(a);
          i++;
        }
        return true;
      case eDominio, eSintaxis:
        L = 0;
        return false;
      default:
        return false;
    }
  }else{
    L = 0;
    return false;}
}

//---------------------------------------------------------------------------
bool TLimite::Limite(AnsiString Funcion, long double a, long double &L)
{
  if( Eval.Evaluate(Funcion) ){
    L = Eval.Value(a);
    switch( Eval.LastError() )
    {
      case eNoError:
        return true;
      case eDivCero:
        long double ld, li, dif;
        bool bi, bd;
        bi = LimiteIzq(Funcion, a, ld);
        bd = LimiteDer(Funcion, a, li);
        if( bi && bd ){
          L = (ld+li)/2.0;
          dif = fabsl(ld-li);
          if( li*ld >= 0 )
            return fabsl(li+ld) < 1E-3;
          else
            return dif < 1E-3;
        }else{
          L = 0;
          return false;
        }
      case eDominio, eSintaxis:
        L = 0;
        return false;
      default:
        return false;

    }
  }else{
    L = 0;
    return false;}
}

//---------------------------------------------------------------------------
bool TLimite::Limite(AnsiString Funcion, long double a, long double &L, long double &Li,
        long double &Ld)
{
  if( Eval.Evaluate(Funcion) ){
    L = Eval.Value(a);
    switch( Eval.LastError() )
    {
      case eNoError:
        Ld = Li = L;
        return true;
      case eDivCero:
        long double dif;
        bool bi, bd;
        bi = LimiteIzq(Funcion, a, Li);
        bd = LimiteDer(Funcion, a, Ld);
        if( bi && bd ){
          L = (Ld+Li)/2.0;
          dif = fabsl(Ld-Li);
          if( Li*Ld >= 0 )
            return fabsl(Li+Ld) < 1E-3;
          else
            return dif < 1E-3;
        }else{
          L = Ld = Li = 0;
          return false;
        }
      case eDominio, eSintaxis:
        L = Ld = Li = 0;
        return false;
      default:
        return false;

    }
  }else{
    L = Ld = Li = 0;
    return false;}
}
//---------------------------------------------------------------------------

TLimit::TLimit(AnsiString expr)
{
	this->expr = expr;
}

bool TLimit::getLimit(LimitValue value)
{
	if(value.infinity)
    	value.value = 1E8;
    if(value.negative)
    	value.value = -value.value;

    if( eval.Evaluate(expr) )
    {
    	limit.value = eval.Value(value.value);
    	switch( eval.LastError() )
    	{
      		case eNoError:
        		return true;
      		case eDivCero:
        		long double ld, li, dif;
                bool bi, bd;
                bi = getLeftLimit(value);
                bd = getRightLimit(value);
                if( bi && bd ){
                	limit.value = (rightLimit.value + leftLimit.value) / 2.0;
                  	dif = fabsl(rightLimit.value - leftLimit.value);
                  	if( leftLimit.negative ^ rightLimit.negative )
                  		return dif < 1E-3;
                  	else
                  		return fabsl(li+ld) < 1E-3;
                }
                else
                {
                  return false;
                }
            case eDominio, eSintaxis:
            	return false;
            default:
            	return false;
        }
    }
	else
	{
    	return false;
	}
}

bool TLimit::getLeftLimit(LimitValue value)
{
	int c = 0;
	if(value.infinity)
    	value.value = 1E8;
    if(value.negative)
    	value.value = -value.value;

    if( eval.Evaluate(expr) )
    {
    	leftLimit.value = eval.Value(value.value);
        while( eval.LastError() == eDivCero )
        {
        	value.value -= LDX;
            leftLimit.value = eval.Value(value.value);
        	if(++c > 1E3)
            	return false;
        }
    }
    leftLimit.infinity = 1 / leftLimit.value > 1; //BUG
    leftLimit.negative = leftLimit.value < 0.0;
    return true;
}

bool TLimit::getRightLimit(LimitValue value)
{
	int c = 0;
	if(value.infinity)
    	value.value = 1E8;
    if(value.negative)
    	value.value = -value.value;

    if( eval.Evaluate(expr) )
    {
    	rightLimit.value = eval.Value(value.value);
        while( eval.LastError() == eDivCero )
        {
        	value.value += LDX;
            rightLimit.value = eval.Value(value.value);
            if(++c > 1E3)
            	return false;
        }
    }
    rightLimit.infinity = 1 / rightLimit.value > 1; //BUG
    rightLimit.negative = rightLimit.value < 0.0;
    return true;
}

#pragma package(smart_init)
