//---------------------------------------------------------------------------


#pragma hdrstop

#include "uRecta.h"
#include <Dialogs.hpp>
#include <SysUtils.hpp>
#include <Math.h>

//Ecuación vectorial paramétrica, paramétrica y canónica
TRecta::TRecta(TPunto P0, TVectorDirector a)
{
    if(a.x == 0.0 && a.y == 0.0)
        throw "a debe ser no nulo";
    this->x0 = P0.x;
    this->y0 = P0.y;
    this->a1 = a.x;
    this->a2 = a.y;
    this->A = -a.y;
    this->B =  a.x;
    this->C = -(-a.y*P0.x + a.x*P0.y);
    this->x1 = P0.x + 2 * a.x;
    this->y1 = P0.y + 2 * a.y;
    if((this->x1 - this->x0) == 0.0)
        throw Exception("division sobre cero");  //BUG: asi no era!
    this->k = (this->y1 - this->y0)/(this->x1 - this->x0);
    this->alfa = atan(k);
    this->b = -1.0*(this->k*this->x0+this->y0);
    this->a = this->x0-this->y0/this->k;
    style = new TPen();
}

//Ecuación dos puntos, segmentaria, (punto pendiente)
TRecta::TRecta(TPunto P0, TPunto P1)
{
    this->x0 = P0.x;
    this->y0 = P0.y;
    this->x1 = P1.x;
    this->y1 = P1.y;
    this->a1 = this->x1 - this->x0;
    this->a2 = this->y1 - this->y0;
    this->A = -this->a2;
    this->B =  this->a1;
    this->C = -(this->A*this->x0 + this->B*this->y0);
    if((this->x1 - this->x0) == 0.0)
        throw Exception("division sobre cero");  //BUG: asi no era!
    this->k = (this->y1 - this->y0)/(this->x1 - this->x0);
    this->alfa = atan(this->k);
    this->b = -1.0*(this->k*this->x0+this->y0);
    this->a = this->x0-this->y0/this->k;
    style = new TPen();
}

//Ecuación punto vector normal, (general)
TRecta::TRecta(TPunto P0, TVectorNormal n)
{
    this->x0 = P0.x;
    this->y0 = P0.y;
    this->A = n.x;
    this->B = n.y;
    this->C = -(this->A*this->x0 + this->B*this->y0);
    this->a1 = -this->B;
    this->a2 = this->A;
    this->x1 = this->x0 + 2 * this->a1;
    this->y1 = this->y0 + 2 * this->a2;
    if((this->x1 - this->x0) == 0.0)
        throw Exception("division sobre cero");  //BUG: asi no era!
    this->k = (this->y1 - this->y0)/(this->x1 - this->x0);
    this->alfa = atan(this->k);
    this->b = -1.0*(this->k*this->x0+this->y0);
    this->a = this->x0-this->y0/this->k;
    style = new TPen();
}

//Ecuación punto pendiente
TRecta::TRecta(TPunto P0, double k)
{
    this->x0 = P0.x;
    this->y0 = P0.y;
    this->k = k;
    this->alfa = atan(this->k);
    this->b = -1.0*(this->k*this->x0+this->y0);
    this->a = this->x0-this->y0/this->k;
    this->a1 = this->a;
    this->a2 = -this->b;
    this->A = this->a2;
    this->B = -this->a1;
    this->C = -(this->A*this->x0 + this->B*this->y0);
    this->x1 = this->x0 + 2 * this->a1;
    this->y1 = this->y0 + 2 * this->a2;
    style = new TPen();
}

//Ecuación segmentaria
TRecta::TRecta(double a, double b)
{
    this->a = a;
    this->b = b;
    this->x0 = a;
    this->y0 = 0;
    this->x1 = 0;
    this->y1 = b;
    this->a1 = this->a;
    this->a2 = -this->b;
    this->A = this->a2;
    this->B = -this->a1;
    this->C = -(this->A*this->x0 + this->B*this->y0);
    if((this->x1 - this->x0) == 0.0)
        throw Exception("division sobre cero");  //BUG: asi no era!
    this->k = (this->y1 - this->y0)/(this->x1 - this->x0);
    this->alfa = atan(this->k);
    style = new TPen();
}

//Ecuación general
TRecta::TRecta(double A, double B, double C)
{
    this->A = A;
    this->B = B;
    this->C = C;
    this->a1 = -this->B;
    this->a2 = this->A;
    this->x0 = 0;
    this->y0 = -this->C/this->B;
    this->x1 = this->x0 + 2 * this->a1;
    this->y1 = this->y0 + 2 * this->a2;
    if((this->x1 - this->x0) == 0.0)
        throw Exception("division sobre cero");  //BUG: asi no era!
    this->k = (this->y1 - this->y0)/(this->x1 - this->x0);
    this->alfa = atan(this->k);
    this->b = -1.0*(this->k*this->x0+this->y0);
    this->a = this->x0-this->y0/this->k;
    style = new TPen();
}

TRecta::~TRecta(void)
{
	delete style;	
}

AnsiString TRecta::toString(void)
{
    AnsiString s;
    s = "(x, y) - (" + FloatToStr(this->x0) + ", " + this->y0 + ") = t * (" + this->a1 + ", " + this->a2 + ")\n\n";
    s+= "x = " + FloatToStr(this->x0) + " + " + FloatToStr(this->a1) + " * t\n";
    s+= "y = " + FloatToStr(this->y0) + " + " + FloatToStr(this->a2) + " * t\n\n";
    s+= "(x - " + FloatToStr(this->x0) + ")/" + FloatToStr(this->a1) + " = (y - " + FloatToStr(this->y0) + ")/" + FloatToStr(this->a2) + "\n\n";
    s+= "(x - " + FloatToStr(this->x0) + ")/(" + FloatToStr(this->x1) + " - " + FloatToStr(this->x0) + ") = (y - " + FloatToStr(this->y0) + ")/(" + FloatToStr(this->y1) + " - " + FloatToStr(this->y0) + ")\n\n";
    s+= "x/" + FloatToStr(this->a) + " + y/" + FloatToStr(this->b) + " = 1\n\n";
    s+= "" + FloatToStr(this->A) + "*(x - " + FloatToStr(this->x0) + ") + " + FloatToStr(this->B) + "*(y - " + FloatToStr(this->y0) + ") = 0\n\n";
    s+= "" + FloatToStr(this->A) + "*x + " + FloatToStr(this->B) + "*y + " + FloatToStr(this->C) + " = 0\n\n";
    s+= "y - " + FloatToStr(this->y0) + " = " + FloatToStr(this->k) + " * (x - " + FloatToStr(this->x0) + ")\n\n";
    return s;
}

double TGR(double gx, double cx, double z)
{
    return (gx - cx)/z;
}

double TRG(double x, double cx, double z)
{
    return cx + x * z;
}

void TRecta::graphic(TImage *i, double cx, double cy, double z)
{
    double maxx, minx, maxy, miny;
    double gx, gy, x, y;
    TCanvas *c = i->Canvas;
    int W, H;
    W = i->Picture->Bitmap->Width;
    H = i->Picture->Bitmap->Height;
    maxx = (double)(W-cx)/z;
    minx = (double)(-cx)/z;
    maxy = (double)(cy)/z;
    miny = (double)(cy-H)/z;
    i->Canvas->Pen->Assign(style);
    //Obtener x para la izq de la pantalla
    x = -1.0*(double)cx/(double)z;
    y = k*(x-x0)+y0;
    if(miny <= y && y <= maxy) // A
    {
        c->MoveTo(cx + x*z, cy - y*z);
        //Obtener x para la der de la pantalla
        x = (double)(W-cx)/(double)z;
        y = k*(x-x0)+y0;
        if(miny <= y && y <= maxy) // B
        {
            c->LineTo(cx + x*z, cy - y*z);
        }
        else
        {
            y = 1.0*cy/z;
            x = (y-y0)/k+x0;
            if(minx <= x && x <= maxx) // C
            {
                c->LineTo(cx + x*z, cy - y*z);
            }
            else //B
            {
                x = (double)(W-cx)/(double)z;
                y = k*(x-x0)+y0;
                c->LineTo(cx + x*z, cy - y*z);
            }
        }
    }
    else // B o C o D
    {
        y = 1.0*cy/z;
        x = (y-y0)/k+x0;
        if(minx <= x && x <= maxx) // C
        {
            c->MoveTo(cx + x*z, cy - y*z);
            y = 1.0*(cy-H)/z;
            x = (y-y0)/k+x0;
            if(minx <= x && x <= maxx) // D
            {
                c->LineTo(cx + x*z, cy - y*z);
            }
            else //B
            {
                x = (double)(W-cx)/(double)z;
                y = k*(x-x0)+y0;
                c->LineTo(cx + x*z, cy - y*z);
            }
        }
        else
        { // B o D
            y = 1.0*(cy-H)/z;
            x = (y-y0)/k+x0;
            if(minx <= x && x <= maxx) // D
            {
                c->MoveTo(cx + x*z, cy - y*z);
                x = (double)(W-cx)/(double)z;
                y = k*(x-x0)+y0;
                c->LineTo(cx + x*z, cy - y*z);
            }
            else //B
            {   //ERROR
                /*
                x = (double)(W-cx)/(double)z;
                   y = k*(x-x0)+y0;
                   c->LineTo(cx + x*z, cy - y*z);
                   */
            }
        }
    }

    if(vdirector)
    {
        c->MoveTo(cx, cy);
        double m = sqrt(a1*a1 + a2*a2);
        c->LineTo(cx + a1/m*z, cy - a2/m*z);
    }
    if(vnormal)
    {
        c->MoveTo(cx, cy);
        double m = sqrt(A*A + B*B);
        c->LineTo(cx + A/m*z, cy - B/m*z);
    }
}
//---------------------------------------------------------------------------
double TRecta::evaly(double x)
{
	return k*(x-x0)+y0;
}
//---------------------------------------------------------------------------
double TRecta::evalx(double y)
{
	return (y-y0)/k+x0;
}
//---------------------------------------------------------------------------
void TRecta::rotate(double alpha)
{

}
//---------------------------------------------------------------------------

#pragma package(smart_init)
