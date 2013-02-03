//---------------------------------------------------------------------------

#ifndef MathGrapherH
#define MathGrapherH
//---------------------------------------------------------------------------
/* Módulo: TMathGrapher
 * Autor: Gastón Furini
 * Fecha: 15/03/2008
 * Versión: 0.1
 * Descripción:
 *		Clase que modela una recta/plano/espacio cartesiano
 *		posible de rotar, escalar y trasladar
 */
//---------------------------------------------------------------------------
#include <SysUtils.hpp>
#include <Classes.hpp>
#include <Controls.hpp>
//---------------------------------------------------------------------------
enum TVectorialSpace {vsR1, vsR2, vsR3};
//------------------------------------------------------------------------------
class TAxe : public Classes::TPersistent
{
private:
        TPen *line;
        TPen *grid;
	TFont *nameFont;
        TFont *labelFont;
        AnsiString text;
        Classes::TNotifyEvent FOnChange;
protected:
	void __fastcall setLine(TPen* value);
        void __fastcall setGrid(TPen* value);
	void __fastcall setNameFont(TFont* value);
        void __fastcall setLabelFont(TFont* value);
        void __fastcall setText(AnsiString value);
        void __fastcall attributeChanged(TObject * Sender);
public:
	__fastcall TAxe(void);
    __fastcall virtual ~TAxe();
    __property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
__published:
	__property TPen *Line = {read = line, write = setLine};
    __property TPen *Grid = {read = grid, write = setGrid};
	__property TFont *NameFont = {read = nameFont, write = setNameFont};
    __property TFont *LabelFont = {read = labelFont, write = setLabelFont};
    __property AnsiString Text = {read = text, write = setText};
};
//------------------------------------------------------------------------------
class PACKAGE TMathGrapher : public TGraphicControl
{
private:
	Graphics::TBitmap *bitmap;
    TBrush *background;
    TAxe *axeX, *axeY, *axeZ;
    long double ghc, gvc;
    long double rotationX, rotationY, rotationZ;//va en TAxe
    TVectorialSpace vectorialSpace;
    bool showFrame;
    void __fastcall Draw(void);
protected:
	void __fastcall attributeChanged(TObject * Sender);
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall Resize(void);
    void __fastcall setAxeX(TAxe *Value);
    void __fastcall setAxeY(TAxe *Value);
    void __fastcall setAxeZ(TAxe *Value);
    void __fastcall setBackground(TBrush *Value);
    void __fastcall setRotationX(long double Value);
    void __fastcall setVectorialSpace(TVectorialSpace Value);
    void __fastcall setShowFrame(bool Value);
protected:
    void __fastcall clear(void);
    void __fastcall drawAxesLines(void);
    void __fastcall drawAxesMarks(void);
    void __fastcall drawAxesLabels(void);
    void __fastcall drawAxesNames(void);
public:
	__fastcall TMathGrapher(TComponent* Owner);
    __fastcall ~TMathGrapher(void);
    void __fastcall translation(long double x, long double y, long double z);
    void __fastcall rotation(long double x, long double y, long double z);
    void __fastcall scale(long double x, long double y, long double z);
__published:
	__property TAxe* AxeX = {read = axeX, write = setAxeX};
    __property TAxe* AxeY = {read = axeY, write = setAxeY};
    __property TAxe* AxeZ = {read = axeZ, write = setAxeZ};
    __property TBrush* Background = {read = background, write = setBackground};
	__property TVectorialSpace VectorialSpace = {read = vectorialSpace, write = setVectorialSpace};
    __property bool ShowFrame = {read = showFrame, write = setShowFrame, default = true};
	__property long double RotationX = {read = rotationX, write = setRotationX, default = 60};
    __property Action;
    __property Align;
    __property PopupMenu;
    __property ShowHint;
    __property Visible;
    __property OnCanResize;
    __property OnClick;
    __property OnContextPopup;
    __property OnDblClick;
    __property OnMouseDown;
    __property OnMouseMove;
    __property OnMouseUp;
    __property OnResize;
};
//---------------------------------------------------------------------------
#endif
