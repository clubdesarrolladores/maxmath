//---------------------------------------------------------------------------

#include <vcl.h>

#pragma hdrstop

#include "MathGrapher.h"
#include <Math.hpp>
#include <Math.h>
#pragma package(smart_init)
//---------------------------------------------------------------------------
// ValidCtrCheck is used to assure that the components created do not have
// any pure virtual functions.
//

static inline void ValidCtrCheck(TMathGrapher *)
{
	new TMathGrapher(NULL);
}

//---------------------------------------------------------------------------
__fastcall TAxe::TAxe(void)
{
    line = new TPen();
    grid = new TPen();
    nameFont = new TFont();
    labelFont = new TFont();
    line->OnChange = attributeChanged;
    grid->OnChange = attributeChanged;
    nameFont->OnChange = attributeChanged;
    labelFont->OnChange = attributeChanged;
    line->Color = clWhite;
    grid->Color = clWhite;
    nameFont->Color = clWhite;
    labelFont->Color = clWhite;
    //axeX->AxeFont->Style = TFontStyles()<< fsBold << fsUnderline;
}
//---------------------------------------------------------------------------
__fastcall TAxe::~TAxe()
{
    delete line, grid, nameFont, labelFont;
}
//---------------------------------------------------------------------------
void __fastcall TAxe::setLine(TPen* value)
{
    line->Assign(value);
    if(FOnChange)
        FOnChange(this);
}
//---------------------------------------------------------------------------
void __fastcall TAxe::setGrid(TPen* value)
{
    grid->Assign(value);
    if(FOnChange)
        FOnChange(this);
}
//---------------------------------------------------------------------------
void __fastcall TAxe::setNameFont(TFont* value)
{
    nameFont->Assign(value);
    if(FOnChange)
        FOnChange(this);
}
//---------------------------------------------------------------------------
void __fastcall TAxe::setLabelFont(TFont* value)
{
    labelFont->Assign(value);
    if(FOnChange)
        FOnChange(this);
}
//---------------------------------------------------------------------------
void __fastcall TAxe::setText(AnsiString value)
{
    text = value;
    if(FOnChange)
        FOnChange(this);
}
//---------------------------------------------------------------------------
void __fastcall TAxe::attributeChanged(TObject * Sender)
{
    if(FOnChange)
        FOnChange(this);
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------
__fastcall TMathGrapher::TMathGrapher(TComponent* Owner)
	: TGraphicControl(Owner)
{
	ControlStyle = ControlStyle << csOpaque;

    vectorialSpace = vsR1;
    Width = 300;
    Height = 300;
    ghc = Width / 2.0;
    gvc = Height / 2.0;

    rotationX = 60;
    rotationX = 60;
    rotationX = 60;

	bitmap = new Graphics::TBitmap();

    background = new TBrush();
    background->OnChange = attributeChanged;
    background->Color = clBlack;
    background->Style = bsSolid;

    axeX = new TAxe();
    axeX->OnChange = attributeChanged;
    axeX->Text = "X";

    axeY = new TAxe();
    axeY->OnChange = attributeChanged;
    axeY->Text = "Y";

    axeZ = new TAxe();
    axeZ->OnChange = attributeChanged;
    axeZ->Text = "Z";

    Invalidate();
}
//---------------------------------------------------------------------------
__fastcall TMathGrapher::~TMathGrapher(void)
{
	delete axeX, axeY, axeZ;
	delete background;
	delete bitmap;
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::Resize(void)
{
	Invalidate();
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::Paint(void)
{
	Draw();
	Canvas->Draw(0, 0, bitmap);
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::clear(void)
{
	TRect SrcRect = Rect(0, 0, Width, Height);
    bitmap->Width = Width;
    bitmap->Height = Height;
    bitmap->Canvas->Brush->Assign(background);
    if(showFrame)
    {
    	const offset = 1;
        TRect ClntRect = Rect(offset, offset, Width-offset, Height-offset);
        bitmap->Canvas->FillRect(ClntRect);
        bitmap->Canvas->Pen->Style = psSolid;
        bitmap->Canvas->Pen->Width = 1;
        Frame3D(bitmap->Canvas, SrcRect, cl3DLight, cl3DDkShadow, offset);
    }
    else
    	bitmap->Canvas->FillRect(SrcRect);
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::Draw(void)
{
	this->clear();
    this->drawAxesLines();
    this->drawAxesMarks();
    this->drawAxesLabels();
    this->drawAxesNames();
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::drawAxesLines(void)
{
	switch(vectorialSpace)
    {
    	case vsR1:
        	gvc = Height / 2.0;
            bitmap->Canvas->Pen = axeX->Line;
    		bitmap->Canvas->MoveTo(0, gvc);
    		bitmap->Canvas->LineTo(Width, gvc);
        break;
        case vsR2:
        	ghc = Width / 2.0; //TODO: esto se quita
            gvc = Height / 2.0; //TODO: esto se quita
            bitmap->Canvas->Pen = axeX->Line;
            bitmap->Canvas->MoveTo(0, gvc);
            bitmap->Canvas->LineTo(Width, gvc);
            bitmap->Canvas->Pen = axeY->Line;
            bitmap->Canvas->MoveTo(ghc, 0);
            bitmap->Canvas->LineTo(ghc, Height);
        break;
        case vsR3:
        	ghc = Width / 2.0;
            gvc = Height / 2.0;
            bitmap->Canvas->Pen = axeY->Line;
            bitmap->Canvas->MoveTo(0, gvc);
            bitmap->Canvas->LineTo(Width, gvc);
            bitmap->Canvas->Pen = axeZ->Line;
            bitmap->Canvas->MoveTo(ghc, 0);
            bitmap->Canvas->LineTo(ghc, Height);
            bitmap->Canvas->Pen = axeX->Line;
            int max = Width > Height?Height:Width;
            int xd = max*cos(rotationX*M_PI/180.0);
            int yd = max*sin(rotationX*M_PI/180.0);
            bitmap->Canvas->MoveTo(ghc-xd, gvc+yd);
            bitmap->Canvas->LineTo(ghc+xd, gvc-yd);
        break;
    }
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::drawAxesMarks(void)
{
	const h = 2;
    bitmap->Canvas->Brush->Style = bsClear;
	switch(vectorialSpace)
    {
    	case vsR1:
        	bitmap->Canvas->Pen->Assign(axeX->Line);
        	for(int i = 0, j = 0; ghc-i > 0 || ghc + i < Width; i+=50, ++j)
            {
                bitmap->Canvas->MoveTo(ghc-i, gvc-h);
                bitmap->Canvas->LineTo(ghc-i, gvc+h);
                bitmap->Canvas->MoveTo(ghc+i, gvc-h);
                bitmap->Canvas->LineTo(ghc+i, gvc+h);
            }
        break;
        case vsR2:

        break;
        case vsR3:

        break;
    }

/*

    for(int i = 0, j = 0; ghc-i > 0 || ghc + i < Width; i+=50, ++j)
    {
    	bitmap->Canvas->MoveTo(ghc-i, gvc-h);
    	bitmap->Canvas->LineTo(ghc-i, gvc+h);
        bitmap->Canvas->MoveTo(ghc+i, gvc-h);
    	bitmap->Canvas->LineTo(ghc+i, gvc+h);
        AnsiString negNumber = FloatToStr(-j);
        AnsiString number = FloatToStr(j);
        int negNumberWidth = bitmap->Canvas->TextWidth(negNumber);
        int numberWidth = bitmap->Canvas->TextWidth(number);
        bitmap->Canvas->TextOut(ghc-i - negNumberWidth/2, gvc+2*h, negNumber);
        bitmap->Canvas->TextOut(ghc+i - numberWidth/2, gvc+2*h, number);
    }
    for(int i = 0; gvc-i > 0 || gvc + i < Height; i+=50)
    {
    	bitmap->Canvas->MoveTo(ghc-h, gvc-i);
    	bitmap->Canvas->LineTo(ghc+h, gvc-i);
        bitmap->Canvas->MoveTo(ghc-h, gvc+i);
    	bitmap->Canvas->LineTo(ghc+h, gvc+i);
    }
    */
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::drawAxesLabels(void)
{

}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::drawAxesNames(void)
{
	int tx, ty;
    bitmap->Canvas->Brush->Style = bsClear;
	//bitmap->Canvas->Brush->Style = bsSolid;
    //bitmap->Canvas->TextFlags = ETO_OPAQUE;
	switch(vectorialSpace)
    {
    	case vsR1:
        	bitmap->Canvas->Font->Assign(axeX->NameFont);
            tx = Width - bitmap->Canvas->TextWidth(axeX->Text) - 8;
            ty = gvc + bitmap->Canvas->TextHeight(axeX->Text) + 4;
            bitmap->Canvas->TextOut(tx, ty, axeX->Text);
        break;
        case vsR2:
        	bitmap->Canvas->Font->Assign(axeX->NameFont);
            tx = Width - bitmap->Canvas->TextWidth(axeX->Text) - 8;
            ty = gvc + bitmap->Canvas->TextHeight(axeX->Text) + 4;
            bitmap->Canvas->TextOut(tx, ty, axeX->Text);
            bitmap->Canvas->Font->Assign(axeY->NameFont);
            tx = ghc - bitmap->Canvas->TextWidth(axeY->Text) - 8;
            ty = bitmap->Canvas->TextHeight(axeY->Text) + 8;
            bitmap->Canvas->TextOut(tx, ty, axeY->Text);
        break;
        case vsR3:
        	bitmap->Canvas->Font->Assign(axeX->NameFont);
            tx = ghc - gvc*cos(rotationX*M_PI/180.0);
            ty = Height - bitmap->Canvas->TextHeight(axeX->Text) - 8;
            bitmap->Canvas->TextOut(tx, ty, axeX->Text);
            bitmap->Canvas->Font->Assign(axeY->NameFont);
            tx = Width - bitmap->Canvas->TextWidth(axeY->Text) - 8;
            ty = gvc + bitmap->Canvas->TextHeight(axeY->Text) + 8;
            bitmap->Canvas->TextOut(tx, ty, axeY->Text);
            bitmap->Canvas->Font->Assign(axeZ->NameFont);
            tx = ghc - bitmap->Canvas->TextWidth(axeZ->Text) - 8;
            ty = bitmap->Canvas->TextHeight(axeZ->Text) + 8;
            bitmap->Canvas->TextOut(tx, ty, axeZ->Text);
        break;
    }
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::attributeChanged(TObject * Sender)
{
	Invalidate();
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::setAxeX(TAxe *Value)
{
	axeX->Assign(Value);
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::setAxeY(TAxe *Value)
{
	axeY->Assign(Value);
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::setAxeZ(TAxe *Value)
{
	axeZ->Assign(Value);
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::setRotationX(long double Value)
{
    rotationX = Value;
    Invalidate();
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::setVectorialSpace(TVectorialSpace Value)
{
  if(this->vectorialSpace != Value)
  {
  	this->vectorialSpace = Value;
    Invalidate();
  }
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::setShowFrame(bool Value)
{
	if(showFrame != Value)
    {
    	showFrame = Value;
    	Invalidate();
    }
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::setBackground(TBrush *Value)
{
	background->Assign(Value);
    Invalidate();
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::translation(long double x, long double y, long double z)
{
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::rotation(long double x, long double y, long double z)
{
}
//---------------------------------------------------------------------------
void __fastcall TMathGrapher::scale(long double x, long double y, long double z)
{
}
//---------------------------------------------------------------------------
namespace Mathgrapher
{
	void __fastcall PACKAGE Register()
	{
		TComponentClass classes[1] = {__classid(TMathGrapher)};
		RegisterComponents("MaxMath", classes, 0);
	}
}
//---------------------------------------------------------------------------
 