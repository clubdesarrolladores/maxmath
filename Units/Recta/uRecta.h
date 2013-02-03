//---------------------------------------------------------------------------

#ifndef uRectaH
#define uRectaH

#include <ExtCtrls.hpp>

class TRecta
{
    double A, B, C;
    double x0, y0, x1, y1;
    double a1, a2;
    double alfa, k;
    double a, b;
public:
    struct TPunto
    {
        double x,y;
    };
    struct TVectorDirector
    {
        double x,y;
    };
    struct TVectorNormal
    {
        double x,y;
    };
public:
	char name[255];
    bool paint, vnormal, vdirector;
    TPen *style;
    //Ecuaci�n vectorial param�trica, param�trica y can�nica
    TRecta(TPunto P0, TVectorDirector a);
    //Ecuaci�n dos puntos
    TRecta(TPunto P0, TPunto P1);
    //Ecuaci�n punto vector normal
    TRecta(TPunto P0, TVectorNormal n);
    //Ecuaci�n punto pendiente
    TRecta(TPunto P0, double k);
    //Ecuaci�n segmentaria
    TRecta(double a, double b);
    //Ecuaci�n general
    TRecta(double A, double B, double C);
    //Destructor
    ~TRecta(void);
    //Obtener datos
    AnsiString toString(void);
    //Operaciones con la recta
    double evaly(double x);
    double evalx(double y);
    void rotate(double alpha);
    //Operaciones con otras rectas
    double angle(TRecta r);
    double distance(TPunto p);
    //graficacion
    void graphic(TImage *i, double  cx, double  cy, double  z);

};
//---------------------------------------------------------------------------
#endif

