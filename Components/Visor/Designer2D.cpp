//---------------------------------------------------------------------------

#include <vcl.h>

#pragma hdrstop

#include "Designer2D.h"
#include <Clipbrd.hpp>
#include <vcl\printers.hpp>

#pragma package(smart_init)

const Offset = 1;
const Unidad = 1; 
const LongArrow = 15;
const WidthArrow = 10;
const ClientOffset = 2*Offset+LongArrow;

//---------------------------------------------------------------------------
__fastcall TDesigner2D::TDesigner2D(TComponent* Owner)
        : TGraphicControl(Owner)
{
  //Estilo del control
  ControlStyle = ControlStyle << csOpaque;
  //Creación de instancias
  FBitmap = new Graphics::TBitmap();
  FBitmapPlano = new Graphics::TBitmap();
  FFontAxeX = new TFont();
  FFontAxeY = new TFont();
  FFontLabelX = new TFont();
  FFontLabelY = new TFont();
  FAxeX = new TPen();
  FAxeY = new TPen();
  FGridX = new TPen();
  FGridY = new TPen();
  FBackGround = new TBrush();
  //Asignacion de evento
  FFontAxeX->OnChange = AttributeChanged;
  FFontAxeY->OnChange = AttributeChanged;
  FFontLabelX->OnChange = AttributeChanged;
  FFontLabelY->OnChange = AttributeChanged;
  FAxeX->OnChange = AttributeChanged;
  FAxeY->OnChange = AttributeChanged;
  FGridX->OnChange = AttributeChanged;
  FGridY->OnChange = AttributeChanged;
  FBackGround->OnChange = AttributeChanged;
  //Valores por defecto
  FBitmap->IgnorePalette = true;
  FBitmapPlano->IgnorePalette = true;
  Height = 120;
  Width = 180;
  FBackGround->Color = TColor(0xCB8B64);
  FAxeX->Color = clNavy;
  FAxeY->Color = clNavy;
  FGridX->Color = TColor(0xD9AC91);
  FGridY->Color = TColor(0xD9AC91);
  FShowFrame = true;
  FShowAxeX = true;
  FShowAxeY = true;
  FShowPointer = true;
  FShowMarksAxeX = true;
  FShowMarksAxeY = true;
  FMarksLengthAxeX = 6;
  FMarksLengthAxeY = 6;
  FMarksStepX = 0.5;
  FMarksStepY = 0.5;
  FAdditionalStringAxeX = "";
  FAdditionalStringAxeY = "";
  FLabelsToTheTopOfAxeX = false;
  FLabelsToTheRigthOfAxeY = false;
  FShowLabelsAxeX = true;
  FShowLabelsAxeY = true;
  FCenterX = 0;
  FCenterY = 0;
  FZoomX = 100;
  FZoomY = 100;
  FAxeNameX = "X";
  FAxeNameY = "Y";
  FDirectionX = drLeftToRight;
  FDirectionY = drBottomToTop;
  FDiscretStepX = 0.1;
  FGridStepX = 0.25;
  FGridStepY = 0.25;
  FShowGridX = true;
  FShowGridY = true;
  FLabelsStepX = 0.5;
  FLabelsStepY = 0.5;
  FModificadoPlano = true;
  FModificadoGraph = true;
  Invalidate();
}

//---------------------------------------------------------------------------
__fastcall TDesigner2D::~TDesigner2D(void)
{
  //Liberamos memoria de los objetos
  delete FBackGround;
  delete FGridX;
  delete FGridY;
  delete FAxeX;
  delete FAxeY;
  delete FFontLabelX;
  delete FFontLabelY;
  delete FFontAxeX;
  delete FFontAxeY;
  delete FBitmapPlano;
  delete FBitmap;
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::Assign(TPersistent* Source)
{
  if( !Source->ClassNameIs("TDesigner2D") )
    return;
  FFontAxeX->Assign(((TDesigner2D*)Source)->FFontAxeX);
  FFontAxeY->Assign(((TDesigner2D*)Source)->FFontAxeY);
  FFontLabelX->Assign(((TDesigner2D*)Source)->FFontLabelX);
  FFontLabelY->Assign(((TDesigner2D*)Source)->FFontLabelY);
  FAxeX->Assign(((TDesigner2D*)Source)->FAxeX);
  FAxeY->Assign(((TDesigner2D*)Source)->FAxeY);
  FGridX->Assign(((TDesigner2D*)Source)->FGridX);
  FGridY->Assign(((TDesigner2D*)Source)->FGridY);
  FBackGround->Assign(((TDesigner2D*)Source)->FBackGround);
  FShowFrame = ((TDesigner2D*)Source)->FShowFrame;
  FShowAxeX = ((TDesigner2D*)Source)->FShowAxeX;
  FShowAxeY = ((TDesigner2D*)Source)->FShowAxeY;
  FShowPointer = ((TDesigner2D*)Source)->FShowPointer;
  FShowMarksAxeX = ((TDesigner2D*)Source)->FShowMarksAxeX;
  FShowMarksAxeY = ((TDesigner2D*)Source)->FShowMarksAxeY;
  FMarksLengthAxeX = ((TDesigner2D*)Source)->FMarksLengthAxeX;
  FMarksLengthAxeY = ((TDesigner2D*)Source)->FMarksLengthAxeY;
  FMarksStepX = ((TDesigner2D*)Source)->FMarksStepX;
  FMarksStepY = ((TDesigner2D*)Source)->FMarksStepY;
  FAdditionalStringAxeX = ((TDesigner2D*)Source)->FAdditionalStringAxeX;
  FAdditionalStringAxeY = ((TDesigner2D*)Source)->FAdditionalStringAxeY;
  FLabelsToTheTopOfAxeX = ((TDesigner2D*)Source)->FLabelsToTheTopOfAxeX;
  FLabelsToTheRigthOfAxeY = ((TDesigner2D*)Source)->FLabelsToTheRigthOfAxeY;
  FShowLabelsAxeX = ((TDesigner2D*)Source)->FShowLabelsAxeX;
  FShowLabelsAxeY = ((TDesigner2D*)Source)->FShowLabelsAxeY;
  FCenterX = ((TDesigner2D*)Source)->FCenterX;
  FCenterY = ((TDesigner2D*)Source)->FCenterY;
  FZoomX = ((TDesigner2D*)Source)->FZoomX;
  FZoomY = ((TDesigner2D*)Source)->FZoomY;
  FAxeNameX = ((TDesigner2D*)Source)->FAxeNameX;
  FAxeNameY = ((TDesigner2D*)Source)->FAxeNameY;
  FDirectionX = ((TDesigner2D*)Source)->FDirectionX;
  FDirectionY = ((TDesigner2D*)Source)->FDirectionY;
  FDiscretStepX = ((TDesigner2D*)Source)->FDiscretStepX;
  FGridStepX = ((TDesigner2D*)Source)->FGridStepX;
  FGridStepY = ((TDesigner2D*)Source)->FGridStepY;
  FShowGridX = ((TDesigner2D*)Source)->FShowGridX;
  FShowGridY = ((TDesigner2D*)Source)->FShowGridY;
  FLabelsStepX = ((TDesigner2D*)Source)->FLabelsStepX;
  FLabelsStepY = ((TDesigner2D*)Source)->FLabelsStepY;
  FModificadoPlano = true;
  FModificadoGraph = true;
  Invalidate();
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::Resize(void)
{
  FOldPlano = ClientRect;
  FModificadoPlano = true;
  FModificadoGraph = true;
  Invalidate();
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::Paint(void)
{
  Draw();
  Canvas->Draw(0, 0, FBitmap);
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::Draw(void)
{
  if( FModificadoPlano ){ // Si se debe redibujar el plano
    Clear(); // Limpiamos el area de dibujo
    if( FShowGridX || FShowGridY )
      DrawGrid(); // Gráfico del cuadriculado
    if( FShowAxeX || FShowAxeY)
      DrawAxes(); // Gráfico de los ejes cartesianos
    FModificadoPlano = false; // Ya tenemos el plano graficado
    if( FFunciones == NULL )
      FBitmap->Canvas->Draw(0,0,FBitmapPlano); // Copiamos el plano en el buffer de trabajo
    FModificadoGraph = true; // Debemos redibujar las funciones
  }
  if( (FFunciones != NULL) && FModificadoGraph){ // Si se deben redibujar las funciones (si existen)
    FBitmap->Canvas->Draw(0,0,FBitmapPlano); // Copiamos el plano en el buffer de trabajo
    DrawFunctions(); // Graficamos las funciones
    FModificadoGraph = false; // Ya tenemos las funciones graficadas
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::Clear(void)
{
  TRect SrcRect, ClntRect;
  SrcRect = Rect(0, 0, Width, Height);
  FBitmap->Width = Width;
  FBitmap->Height = Height;
  FBitmapPlano->Width = Width;
  FBitmapPlano->Height = Height;
  FBitmapPlano->Canvas->Brush->Color = FBackGround->Color;
  FBitmapPlano->Canvas->Brush->Style = bsSolid;
  if( FShowFrame ){
    ClntRect = Rect(Offset, Offset, Width-Offset, Height-Offset);
    FBitmapPlano->Canvas->FillRect(ClntRect);
    FBitmapPlano->Canvas->Pen->Style = psSolid;
    FBitmapPlano->Canvas->Pen->Width = 1;
    Frame3D(FBitmapPlano->Canvas, SrcRect, cl3DLight, cl3DDkShadow, Offset);
  }else
    FBitmapPlano->Canvas->FillRect(SrcRect);
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::DrawGrid(void)
{
  const AxisCenterY = RealYToScreenY(0);
  const AxisCenterX = RealXToScreenX(0);
  const FactorX = FGridStepX*Unidad*FZoomX;
  const FactorY = FGridStepY*Unidad*FZoomY;
  int i;
  if( FShowGridX ){
    FBitmapPlano->Canvas->Pen = FGridX;
    i = FShowAxeY ? 1: 0;
    int x1 = AxisCenterX + Round((long double)i*FactorX);
    int x2 = AxisCenterX - Round((long double)i*FactorX);
    for( i; (x1 <= Width - ClientOffset) || (ClientOffset <= x2); i++){
      x1 = AxisCenterX + Round((long double)i*FactorX);
      x2 = AxisCenterX - Round((long double)i*FactorX);
      if( (ClientOffset <= x1) && (x1 <= Width-ClientOffset) ){
        //FBitmapPlano->Canvas->MoveTo(x1, ClientOffset);
        //FBitmapPlano->Canvas->LineTo(x1, Height-ClientOffset);
        //----
        FBitmapPlano->Canvas->MoveTo(x1, AxisCenterY);
        FBitmapPlano->Canvas->LineTo(x1, ClientOffset);
        FBitmapPlano->Canvas->MoveTo(x1, AxisCenterY);
        FBitmapPlano->Canvas->LineTo(x1, Height-ClientOffset);
        //----
      }
      if( (ClientOffset <= x2) && (x2 <= Width-ClientOffset) ){
        //FBitmapPlano->Canvas->MoveTo(x2, ClientOffset);
        //FBitmapPlano->Canvas->LineTo(x2, Height-ClientOffset);
        //----
        FBitmapPlano->Canvas->MoveTo(x2, AxisCenterY);
        FBitmapPlano->Canvas->LineTo(x2, ClientOffset);
        FBitmapPlano->Canvas->MoveTo(x2, AxisCenterY);
        FBitmapPlano->Canvas->LineTo(x2, Height-ClientOffset);
        //----
      }
    }
  }
  if( FShowGridY ){
    FBitmapPlano->Canvas->Pen = FGridY;
    i = FShowAxeX ? 1: 0;
    int y1 = AxisCenterY + Round((long double)i*FactorY);
    int y2 = AxisCenterY - Round((long double)i*FactorY);
    for( i; (y1 <= Height - ClientOffset) || (ClientOffset <= y2); i++){
      y1 = AxisCenterY + Round((long double)i*FactorY);
      y2 = AxisCenterY - Round((long double)i*FactorY);
      if( (ClientOffset <= y1) && (y1 <= Height-ClientOffset) ){
//        FBitmapPlano->Canvas->MoveTo(ClientOffset, y1);
//        FBitmapPlano->Canvas->LineTo(Width-ClientOffset, y1);
        //----
        FBitmapPlano->Canvas->MoveTo(AxisCenterX, y1);
        FBitmapPlano->Canvas->LineTo(ClientOffset, y1);
        FBitmapPlano->Canvas->MoveTo(AxisCenterX, y1);
        FBitmapPlano->Canvas->LineTo(Width-ClientOffset, y1);
        //----
      }
      if( (ClientOffset <= y2) && (y2 <= Height-ClientOffset) ){
        //FBitmapPlano->Canvas->MoveTo(ClientOffset, y2);
        //FBitmapPlano->Canvas->LineTo(Width-ClientOffset, y2);
                //----
        FBitmapPlano->Canvas->MoveTo(AxisCenterX, y2);
        FBitmapPlano->Canvas->LineTo(ClientOffset, y2);
        FBitmapPlano->Canvas->MoveTo(AxisCenterX, y2);
        FBitmapPlano->Canvas->LineTo(Width-ClientOffset, y2);
        //----
        }
      }
    }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::DrawAxes(void)
{
  DrawLines(); //Lineas de los ejes
  DrawMarks(); //Marcas de los ejes
  if( FShowPointer )
    DrawArrows(); //Flechas de los ejes
  DrawNumbers(); //Numeración de los ejes
  DrawNames(); //Nombre de los ejes
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::DrawLines(void)
{ 
  const ClientOffsetAxes = 2*Offset+LongArrow*3/4;
  if( FShowAxeX ){
    const AxisCenterY = RealYToScreenY(0);
    if( (ClientOffset <= AxisCenterY) && (AxisCenterY <= Height-ClientOffset) ){
      FBitmapPlano->Canvas->Pen = FAxeX;
      FBitmapPlano->Canvas->MoveTo(ClientOffsetAxes, AxisCenterY);
      FBitmapPlano->Canvas->LineTo(Width-ClientOffsetAxes, AxisCenterY);
    }
  }
  if( FShowAxeY ){
    const AxisCenterX = RealXToScreenX(0);
    if( (ClientOffset <= AxisCenterX) && (AxisCenterX <= Width-ClientOffset) ){
      FBitmapPlano->Canvas->Pen = FAxeY;
      FBitmapPlano->Canvas->MoveTo(AxisCenterX, ClientOffsetAxes);
      FBitmapPlano->Canvas->LineTo(AxisCenterX, Height-ClientOffsetAxes);
    }
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::DrawMarks(void)
{
  const AxisCenterX = RealXToScreenX(0);
  const AxisCenterY = RealYToScreenY(0);
  const FactorX = FMarksStepX*Unidad*FZoomX;
  const FactorY = FMarksStepY*Unidad*FZoomY;
  const MarksLengthX = (FMarksLengthAxeX % 2) == 0 ? FMarksLengthAxeX/2 : (FMarksLengthAxeX+1)/2;
  const MarksLengthY = (FMarksLengthAxeY % 2) == 0 ? FMarksLengthAxeY/2 : (FMarksLengthAxeY+1)/2;
  int i;
  FBitmapPlano->Canvas->Pen->Style = psSolid;
  FBitmapPlano->Canvas->Pen->Width = 1;
  if( FShowAxeX && FShowMarksAxeX){
    if( (ClientOffset <= AxisCenterY) && (AxisCenterY <= Height-ClientOffset) ){
      FBitmapPlano->Canvas->Pen->Color = FAxeX->Color;
      int x1, x2;
      i = FShowAxeY ? 1: 0;
      x1 = AxisCenterX + Round((long double)i*FactorX);
      x2 = AxisCenterX - Round((long double)i*FactorX);
      for( i = 1; (x1 <= Width-ClientOffset)||(ClientOffset <= x2); i++){
        x1 = AxisCenterX + Round((long double)i*FactorX);
        x2 = AxisCenterX - Round((long double)i*FactorX);
        if( (ClientOffset <= x1) && (x1 < Width-ClientOffset) ){
          FBitmapPlano->Canvas->MoveTo(x1,AxisCenterY-MarksLengthX);
          FBitmapPlano->Canvas->LineTo(x1,AxisCenterY+MarksLengthX);
        }
        if( (ClientOffset <= x2) && (x2 < Width-ClientOffset) ){
          FBitmapPlano->Canvas->MoveTo(x2,AxisCenterY-MarksLengthX);
          FBitmapPlano->Canvas->LineTo(x2,AxisCenterY+MarksLengthX);
        }
      }
    }
  }
  if( FShowAxeY && FShowMarksAxeY){
    if( (ClientOffset <= AxisCenterX) && (AxisCenterX <= Width-ClientOffset) ){
      FBitmapPlano->Canvas->Pen->Color = FAxeY->Color;
      i = FShowAxeX ? 1 : 0;
      int y1 = AxisCenterY + Round((long double)i*FactorY);
      int y2 = AxisCenterY - Round((long double)i*FactorY);
      for( i; (y1 <= Height-ClientOffset) || (ClientOffset <= y2); i++){
        y1 = AxisCenterY + Round((long double)i*FactorY);
        y2 = AxisCenterY - Round((long double)i*FactorY);
        if( (ClientOffset <= y1) && (y1 <= Height-ClientOffset) ){
          FBitmapPlano->Canvas->MoveTo(AxisCenterX-MarksLengthY, y1);
          FBitmapPlano->Canvas->LineTo(AxisCenterX+MarksLengthY, y1);
        }
        if( (ClientOffset <= y2) && (y2 <= Height-ClientOffset) ){
          FBitmapPlano->Canvas->MoveTo(AxisCenterX-MarksLengthY, y2);
          FBitmapPlano->Canvas->LineTo(AxisCenterX+MarksLengthY, y2);
        }
      }
    }
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::DrawArrows(void)
{
  TPoint Flecha[5];
  FBitmapPlano->Canvas->Pen->Width = 1;
  if( FShowAxeX ){
    const AxisCenterY = RealYToScreenY(0);
    if( (ClientOffset <= AxisCenterY) && (AxisCenterY <= Height-ClientOffset) ){
      if( FDirectionX == drLeftToRight ){
        Flecha[0].x = Width-2*Offset;
        Flecha[0].y = AxisCenterY;
        Flecha[1].x = Width-ClientOffset;
        Flecha[1].y = AxisCenterY-WidthArrow/2;
        Flecha[2].x = Width-2*Offset-LongArrow*3/4;
        Flecha[2].y = AxisCenterY;
        Flecha[3].x = Width-ClientOffset;
        Flecha[3].y = AxisCenterY+WidthArrow/2;
      }else{
        Flecha[0].x = 2*Offset;
        Flecha[0].y = AxisCenterY;
        Flecha[1].x = ClientOffset;
        Flecha[1].y = AxisCenterY-WidthArrow/2;
        Flecha[2].x = 2*Offset+LongArrow*3/4;
        Flecha[2].y = AxisCenterY;
        Flecha[3].x = ClientOffset;
        Flecha[3].y = AxisCenterY+WidthArrow/2;
      }
      Flecha[4] = Flecha[0];
      FBitmapPlano->Canvas->Pen->Color = FAxeX->Color;
      FBitmapPlano->Canvas->Brush->Color = FAxeX->Color;
      FBitmapPlano->Canvas->Polygon(Flecha,4);
    }
  }
  if( FShowAxeY ){
    const AxisCenterX = RealXToScreenX(0);
    if( (ClientOffset <= AxisCenterX) && (AxisCenterX <= Width-ClientOffset) ){
      if( FDirectionY == drBottomToTop ){
        Flecha[0].x = AxisCenterX;
        Flecha[0].y = 2*Offset;
        Flecha[1].x = AxisCenterX-WidthArrow/2;
        Flecha[1].y = ClientOffset;
        Flecha[2].x = AxisCenterX;
        Flecha[2].y = 2*Offset+LongArrow*3/4;
        Flecha[3].x = AxisCenterX+WidthArrow/2;
        Flecha[3].y = ClientOffset;
      }else{
        Flecha[0].x = AxisCenterX;
        Flecha[0].y = Height-2*Offset;
        Flecha[1].x = AxisCenterX-WidthArrow/2;
        Flecha[1].y = Height-ClientOffset;
        Flecha[2].x = AxisCenterX;
        Flecha[2].y = Height-2*Offset-LongArrow*3/4;
        Flecha[3].x = AxisCenterX+WidthArrow/2;
        Flecha[3].y = Height-ClientOffset;
      }
      Flecha[4] = Flecha[0];
      FBitmapPlano->Canvas->Pen->Color = FAxeY->Color;
      FBitmapPlano->Canvas->Brush->Color = FAxeY->Color;
      FBitmapPlano->Canvas->Polygon(Flecha,4);
    }
  }
}

//---------------------------------------------------------------------------
//TODO: Mejorar algoritmo, hacerlo más legible
//BUG: Hace caso omiso a los valores independientes de ZOOM
void __fastcall TDesigner2D::DrawNumbers(void)
{
	//Definir constantes
    const int textDistanceToAxe = 8;
    const int axisCenterY 		= RealYToScreenY(0);
    const int axisCenterX 		= RealXToScreenX(0);
    const int factorX 			= FLabelsStepX * Unidad * FZoomX;
    const int factorY			= FLabelsStepY * Unidad * FZoomY;
	//Declarar variables
    AnsiString Texto;
	int i, w, h;
    //Definir variables en estados iniciales
    //FBitmapPlano->Canvas->Pen->Style = psSolid;
	FBitmapPlano->Canvas->Brush->Color = FBackGround->Color;
	FBitmapPlano->Canvas->Brush->Style = bsClear;



    //Si se debe numerar el eje horizontal
    //	Obtener soporte sobre el cual numerar
    //	Obtener el punto inicial en coordenadas de pantalla
    //	Realizar la operación para el eje positivo y el negativo

    
  if( FShowAxeX && FShowLabelsAxeX){
    if( (ClientOffset <= axisCenterY) && (axisCenterY <= Height-ClientOffset) ){
      FBitmapPlano->Canvas->Font = FFontLabelX;
      //FBitmapPlano->Canvas->Pen->Color = FAxeX->Color;
      i = FShowAxeY ? 1: 0;
      int x1 = axisCenterX + Round((long double)i*factorX);
      int x2 = axisCenterX - Round((long double)i*factorX);
      for( i; (x1 <= Width-ClientOffset) || (ClientOffset <= x2); i++){
        x1 = axisCenterX + Round((long double)i*factorX);
        x2 = axisCenterX - Round((long double)i*factorX);
        if( (ClientOffset <= x1) && (x1 <= Width-ClientOffset) ){
          Texto = FormatFloat("#0.#####",i*FLabelsStepX) + FAdditionalStringAxeX;
          w = FBitmapPlano->Canvas->TextWidth(Texto);
          h = FBitmapPlano->Canvas->TextHeight(Texto);
          if( FLabelsToTheTopOfAxeX )
            FBitmapPlano->Canvas->TextOut(x1-w/2, axisCenterY-textDistanceToAxe-h, Texto);
          else
            FBitmapPlano->Canvas->TextOut(x1-w/2, axisCenterY+textDistanceToAxe, Texto);
        }
        if( (ClientOffset <= x2) && (x2 <= Width-ClientOffset) ){
          Texto = FormatFloat("#0.#####",-i*FLabelsStepX) + FAdditionalStringAxeX;
          w = FBitmapPlano->Canvas->TextWidth(Texto);
          h = FBitmapPlano->Canvas->TextHeight(Texto);
          if( FLabelsToTheTopOfAxeX )
            FBitmapPlano->Canvas->TextOut(x2-w/2, axisCenterY-textDistanceToAxe-h, Texto);
          else
            FBitmapPlano->Canvas->TextOut(x2-w/2, axisCenterY+textDistanceToAxe, Texto);
        }
      }
    }
  }
  if( FShowAxeY && FShowLabelsAxeY){
    if( (ClientOffset <= axisCenterX) && (axisCenterX <= Width-ClientOffset) ){
      FBitmapPlano->Canvas->Font = FFontLabelY;
      //FBitmapPlano->Canvas->Pen->Color = FAxeY->Color;
      i = FShowAxeX ? 1: 0;
      int y1 = axisCenterY + Round((long double)i*factorY);
      int y2 = axisCenterY - Round((long double)i*factorY);
      for( i; (y1 <= Height-ClientOffset) || (ClientOffset <= y2); i++){
        y1 = axisCenterY + Round((long double)i*factorY);
        y2 = axisCenterY - Round((long double)i*factorY);
        if( (ClientOffset <= y1) && (y1 <= Height-ClientOffset) ){
          Texto = FormatFloat("#0.#####",-i*FLabelsStepY) + FAdditionalStringAxeY;
          w = FBitmapPlano->Canvas->TextWidth(Texto);
          h = FBitmapPlano->Canvas->TextHeight(Texto);
          if( FLabelsToTheRigthOfAxeY )
            FBitmapPlano->Canvas->TextOut(axisCenterX+textDistanceToAxe, y1-h/2, Texto);
          else
            FBitmapPlano->Canvas->TextOut(axisCenterX-textDistanceToAxe-w, y1-h/2,Texto);
        }
        if( (ClientOffset <= y2) && (y2 <= Height-ClientOffset) ){
          Texto = FormatFloat("#0.#####",i*FLabelsStepY) + FAdditionalStringAxeY;
          w = FBitmapPlano->Canvas->TextWidth(Texto);
          h = FBitmapPlano->Canvas->TextHeight(Texto);
          if( FLabelsToTheRigthOfAxeY )
            FBitmapPlano->Canvas->TextOut(axisCenterX+textDistanceToAxe, y2-h/2, Texto);
          else
            FBitmapPlano->Canvas->TextOut(axisCenterX-textDistanceToAxe-w, y2-h/2, Texto);
        }
      }
    }
  }
  FBitmapPlano->Canvas->Brush->Style = bsSolid;
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::DrawNames(void)
{
  FBitmapPlano->Canvas->Brush->Color = FBackGround->Color;
  FBitmapPlano->Canvas->Brush->Style = bsClear;
  int w, h;
  if( FShowAxeX ){
    const AxisCenterY = RealYToScreenY(0);
    if( (ClientOffset <= AxisCenterY) && (AxisCenterY <= Height-ClientOffset) ){
      FBitmapPlano->Canvas->Font = FFontAxeX;
      w = FBitmapPlano->Canvas->TextWidth(FAxeNameX);
      if( w >= LongArrow )
        FBitmapPlano->Canvas->TextOut(Width-2*Offset-w, AxisCenterY+WidthArrow, FAxeNameX);
      else
        FBitmapPlano->Canvas->TextOut(Width-2*Offset-LongArrow/2-w/2,AxisCenterY+WidthArrow, FAxeNameX);
    }
  }
  if( FShowAxeY ){
    const AxisCenterX = RealXToScreenX(0);
    if( (ClientOffset <= AxisCenterX) && (AxisCenterX <= Width-ClientOffset) ){
      FBitmapPlano->Canvas->Font = FFontAxeY;
      w = FBitmapPlano->Canvas->TextWidth(FAxeNameY);
      h = FBitmapPlano->Canvas->TextHeight(FAxeNameY);
      FBitmapPlano->Canvas->TextOut(AxisCenterX-w-WidthArrow, 2*Offset+LongArrow/2+1-h/2, FAxeNameY);
    }
  }
  FBitmapPlano->Canvas->Brush->Style = bsSolid;
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::DrawFunctions()
{
  const xpx = RealXToScreenX(FDiscretStepX)-RealXToScreenX(0);
  TEval *Eval = new TEval();
  int i, px, py, cf, py0, /*pia,*/ pib;
  long double x, y;
  TIntervalo *Intervalo;
  try{
    py0 = RealYToScreenY(0);
    cf = FFunciones->Count;
    for( i = 0; i < cf; i++){ //Por cada funcion
      if( FFunciones->Items[i].Graficar ){ //Si se debe graficar
        FBitmap->Canvas->MoveTo(ClientOffset, py0);
        for( px = ClientOffset; px <= Width-ClientOffset; px++){ // Por cada pixel a graficar
          x = ScreenXToRealX(px);
          Intervalo = Find(FFunciones->Items[i].Intervalo, x);
          if( Intervalo != NULL ){
            FBitmap->Canvas->Brush->Color = TColor(Intervalo->Info.Color);
            FBitmap->Canvas->Pen->Style = psSolid;
            FBitmap->Canvas->Pen->Color = TColor(Intervalo->Info.Color);
            FBitmap->Canvas->Pen->Width = Intervalo->Info.Grosor;
            //pia = RealXToScreenX(Intervalo->Info.Min);
            pib = RealXToScreenX(Intervalo->Info.Max);
            for( px; (px < pib) && (px <= Width-ClientOffset); px++){ //Por cada pixel del intervalo
              x = ScreenXToRealX(px);
              Eval->Evaluate(Intervalo->Info.Expresion);
              if( Eval->LastError() == eNoError ){
                y = Eval->Value(x);
                if( Eval->LastError() == eNoError )
                  py = RealYToScreenY(y);
                else
                  py = py0;
              }else
                py = py0;
              if( Intervalo->Info.TipoGrafico == tgDiscreto ){
                //if( ((long double)x/(long double)FDiscretStepX) == Round((long double)x/(long double)FDiscretStepX) ){
                  FBitmap->Canvas->MoveTo(px, py0);
                  FBitmap->Canvas->LineTo(px, py);
                  FBitmap->Canvas->Ellipse(px-3,py-3,px+3,py+3);
                  px += xpx;
                  FBitmap->Canvas->MoveTo(px,py0);
                //}
              }else{
                if( py <= ClientOffset ){
                  py = ClientOffset;
                  FBitmap->Canvas->MoveTo(px,py);
                }
                else
                  if( Height-ClientOffset <= py ){
                    py = Height-ClientOffset;
                    FBitmap->Canvas->MoveTo(px,py);
                  }else{
                    if(px == 2*Offset+LongArrow)
                      FBitmap->Canvas->MoveTo(px,py);
                    else
                      FBitmap->Canvas->LineTo(px,py);
                  }
              }
            }
          }else{
            FBitmap->Canvas->Pen->Style = psSolid;
            FBitmap->Canvas->Pen->Color = FAxeX->Color;
            FBitmap->Canvas->Pen->Width = 1;
            py = py0;
            FBitmap->Canvas->LineTo(px,py);
          }
        }
      }
    }
  }__finally{
    delete Eval;
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetModificadoPlano(bool Value)
{
  if( FModificadoPlano != Value)
  {
    FModificadoPlano = Value;
    FModificadoGraph = Value;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetModificadoGraph(bool Value)
{
  if( FModificadoGraph != Value)
  {
    FModificadoGraph = Value;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetShowMarksAxeX(bool Value)
{
  if( FShowMarksAxeX != Value)
  {
    FShowMarksAxeX = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetShowMarksAxeY(bool Value)
{
  if( FShowMarksAxeY != Value)
  {
    FShowMarksAxeY = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetMarksLengthAxeX(int Value)
{
  if( (FMarksLengthAxeX != Value) && (Value >= 0) && (Value <= 8) )
  {
    FMarksLengthAxeX = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetMarksLengthAxeY(int Value)
{
  if( (FMarksLengthAxeY != Value) && (Value >= 0) && (Value <= 8) )
  {
    FMarksLengthAxeY = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetLabelsStepX(long double Value)
{
  if( (FLabelsStepX != Value) && (Value >= 0) )
  {
    FLabelsStepX = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetLabelsStepY(long double Value)
{
  if( (FLabelsStepY != Value) && (Value >= 0) )
  {
    FLabelsStepY = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetMarksStepX(long double Value)
{
  if( (FMarksStepX != Value) && (Value >= 0) )
  {
    FMarksStepX = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetMarksStepY(long double Value)
{
  if( (FMarksStepY != Value) && (Value >= 0) )
  {
    FMarksStepY = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetAdditionalStringAxeX(AnsiString Value)
{
  if( FAdditionalStringAxeX != Value)
  {
    FAdditionalStringAxeX = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetAdditionalStringAxeY(AnsiString Value)
{
  if( FAdditionalStringAxeY != Value)
  {
    FAdditionalStringAxeY = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetShowGridX(bool Value)
{
  if( FShowGridX != Value)
  {
    FShowGridX = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetShowGridY(bool Value)
{
  if( FShowGridY != Value)
  {
    FShowGridY = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetLabelsToTheTopOfAxeX(bool Value)
{
  if( FLabelsToTheTopOfAxeX != Value)
  {
    FLabelsToTheTopOfAxeX = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetLabelsToTheRigthOfAxeY(bool Value)
{
  if( FLabelsToTheRigthOfAxeY != Value)
  {
    FLabelsToTheRigthOfAxeY = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetShowLabelsAxeX(bool Value)
{
  if( FShowLabelsAxeX != Value)
  {
    FShowLabelsAxeX = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetShowLabelsAxeY(bool Value)
{
  if( FShowLabelsAxeY != Value)
  {
    FShowLabelsAxeY = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::AttributeChanged(TObject * Sender)
{
  FModificadoPlano = true;
  Invalidate(); //redibujamos
}
                                                                             
//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetGridX(TPen *Value)
{
  FGridX->Assign(Value);
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetGridY(TPen *Value)
{
  FGridY->Assign(Value);
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetAxeX(TPen *Value)
{
  FAxeX->Assign(Value);
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetAxeY(TPen *Value)
{
  FAxeY->Assign(Value);
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetFontAxeX(TFont *Value)
{
  FFontAxeX->Assign(Value);
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetFontAxeY(TFont *Value)
{
  FFontAxeY->Assign(Value);
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetFontLabelX(TFont *Value)
{
  FFontLabelX->Assign(Value);
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetFontLabelY(TFont *Value)
{
  FFontLabelY->Assign(Value);
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetBackGround(TBrush *Value)
{
  FBackGround->Assign(Value);
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetShowFrame(bool Value)
{
  if( FShowFrame != Value){
    FShowFrame = Value;
    FModificadoPlano = true;
    Invalidate();}
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetShowAxeX(bool Value)
{
  if( FShowAxeX != Value){
    FShowAxeX = Value;
    FModificadoPlano = true;
    Invalidate();}
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetShowAxeY(bool Value)
{
  if( FShowAxeY != Value){
    FShowAxeY = Value;
    FModificadoPlano = true;
    Invalidate();}
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetShowPointer(bool Value)
{
  if( FShowPointer != Value){
    FShowPointer = Value;
    FModificadoPlano = true;
    Invalidate();}
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetDiscretStepX(long double Value)
{
  if( (FDiscretStepX != Value) && (Value >= 0) )
  {
    FDiscretStepX = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetGridStepY(long double Value)
{
  if( (FGridStepY != Value) && (Value >= 0) )
  {
    FGridStepY = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetGridStepX(long double Value)
{
  if( (FGridStepX != Value) && (Value >= 0) )
  {
    FGridStepX = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetCenterX(long double Value)
{
  if( FCenterX != Value)
  {
    FCenterX = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetCenterY(long double Value)
{
  if( FCenterY != Value)
  {
    FCenterY = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetZoomX(int Value)
{
  if( (FZoomX != Value) && (Value > 0) && (Value <= 1600) )
  {
    FZoomX = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetZoomY(int Value)
{
  if( (FZoomY != Value) && (Value > 0) && (Value <= 1600) )
  {
    FZoomY = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetAxeNameX(AnsiString Value)
{
  if( FAxeNameX != Value )
  {
    FAxeNameX = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetAxeNameY(AnsiString Value)
{
  if( FAxeNameY != Value )
  {
    FAxeNameY = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetDirectionX(TDirectionX Value)
{
  if( FDirectionX != Value )
  {
    FDirectionX = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::SetDirectionY(TDirectionY Value)
{
  if( FDirectionY != Value )
  {
    FDirectionY = Value;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
bool __fastcall TDesigner2D::PuntoInterior(int x,int y)
{
  return false;
}


//-----------------------------------------------------------------------------
long double TDesigner2D::ScreenXToRealX(int px)
{
  const long double AxisCenterX = (long double)Width/2.0-FCenterX*Unidad*FZoomX;
  return 1.0*((long double)px-AxisCenterX)/FZoomX;
}

//-----------------------------------------------------------------------------
long double TDesigner2D::ScreenYToRealY(int py)
{
  const long double AxisCenterY = (long double)Height/2.0+FCenterY*Unidad*FZoomY;
  return -1.0*((long double)py-AxisCenterY)/FZoomY;
}

//-----------------------------------------------------------------------------
int TDesigner2D::RealXToScreenX(long double x)
{
  const long double AxisCenterX = (long double)Width/2.0-FCenterX*Unidad*FZoomX;
  return Round(1.0*(x*FZoomX+AxisCenterX));
}

//-----------------------------------------------------------------------------
int TDesigner2D::RealYToScreenY(long double y)
{
  const long double AxisCenterY = (long double)Height/2.0+FCenterY*Unidad*FZoomY;
  return Round(1.0*(-y*FZoomY+AxisCenterY));
}

//-----------------------------------------------------------------------------
void TDesigner2D::CopyToClipboard()
{
  try
  {
    Clipboard()->Assign(FBitmap);
  }
  catch (...)
  {
     ShowMessage("Falla al copiar la imagen al portapapeles!");
  }
}

//-----------------------------------------------------------------------------
void __fastcall TDesigner2D::SaveBitmapToFile(AnsiString FileName, TPixelFormat pf)
{
  FBitmap->PixelFormat = pf;
  FBitmap->SaveToFile(FileName);
}

//-----------------------------------------------------------------------------
void TDesigner2D::MoveToCenter(void)
{
  FCenterX = 0;
  FCenterY = 0;
  FModificadoPlano = true;
  Invalidate();
}

void TDesigner2D::MoveToLeft(void)
{
  FCenterX++;
  FModificadoPlano = true;
  Invalidate();
}

void TDesigner2D::MoveToRight(void)
{
  FCenterX--;
  FModificadoPlano = true;
  Invalidate();
}

void TDesigner2D::MoveToTop(void)
{
  FCenterY--;
  FModificadoPlano = true;
  Invalidate();
}

void TDesigner2D::MoveToBottom(void)
{
  FCenterY++;
  FModificadoPlano = true;
  Invalidate();
}

long double TDesigner2D::Round(long double x)
{
  if( x > 0.0 )
    return int(double(int(x*100.0+.5))/100.0);
  else
    return int(double(int(x*100.0-.5))/100.0);
  //return Floor(x);//SimpleRoundTo(x,0);
  //Trunc(x + (-2 * Ord(x < 0) + 1) * 0.5);
}

void TDesigner2D::SetCenter(long double cx, long double cy)
{
  if( (FCenterX != cx) || (FCenterY != cy))
  {
    FCenterX = cx;
    FCenterY = cy;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void TDesigner2D::SetZoom(int zx, int zy)
{
  if( (FZoomX != zx) || (FZoomY != zy))
  {
    if( (zx > 0) && (zx <= 1600) )
      FZoomX = zx;
    if( (zy > 0) && (zy <= 1600) )
      FZoomY = zy;
    FModificadoPlano = true;
    Invalidate();
  }
}

//---------------------------------------------------------------------------
void TDesigner2D::Print(int Copies)
{
  TRect Hoja, Dest, Orig;
  Printer()->Orientation = poLandscape;
  Hoja.Left   = 100;
  Hoja.Right  = (Printer()->PageWidth-100);
  Hoja.Top    = 100;
  Hoja.Bottom = (Printer()->PageHeight-100);
  if( Copies < 1)
    Copies = 1;
  for(int i = 0 ; i < Copies; i++)
  {
    Dest = Hoja;
    Orig.Left = 0;
    Orig.Right = Width;
    Orig.Top = 0;
    Orig.Bottom = Height;
    if( Hoja.Width() > Canvas->ClipRect.Width() ) //centrar
    {
      Dest.Left = Hoja.Left + (Hoja.Width() - 2*Orig.Width() )/2;
      Dest.Right = Hoja.Left + (Hoja.Width() + 2*Orig.Width() )/2;
    }
    if( Hoja.Height() > Canvas->ClipRect.Height() ) //centrar
    {
      Dest.Top = Hoja.Top + (Hoja.Height() - 2*Orig.Height() )/2;
      Dest.Bottom = Hoja.Top + (Hoja.Height() + 2*Orig.Height() )/2;
    }
    Printer()->BeginDoc();
    Printer()->Title = "MaxMath PrintImage Copy " + IntToStr(Copies);
    Printer()->Canvas->CopyRect(Dest, FBitmap->Canvas, Orig);
    Printer()->EndDoc();
  }
}

//---------------------------------------------------------------------------
void TDesigner2D::Trace(int x, int y, bool first)
{
  const out = 10;
  FBitmap->Canvas->Pen->Mode = pmNot;
  FBitmap->Canvas->Brush->Style = bsClear;
  if( !first ){
    FBitmap->Canvas->Ellipse(px_-out, py_-out, px_+out, py_+out);
    FBitmap->Canvas->MoveTo(px_-out,py_);
    FBitmap->Canvas->LineTo(px_+out,py_);
    FBitmap->Canvas->MoveTo(px_,py_-out);
    FBitmap->Canvas->LineTo(px_,py_+out);}
  FBitmap->Canvas->Ellipse(x-out, y-out, x+out, y+out);
  FBitmap->Canvas->MoveTo(x-out,y);
  FBitmap->Canvas->LineTo(x+out,y);
  FBitmap->Canvas->MoveTo(x,y-out);
  FBitmap->Canvas->LineTo(x,y+out);
  FBitmap->Canvas->Pen->Mode = pmCopy;
  px_ = x;
  py_ = y;
  Invalidate();
}

//---------------------------------------------------------------------------
bool __fastcall TDesigner2D::LoadFromFile(AnsiString Filename)
{
  int InfoSize;
  TFileStream *Archivo;
  bool r = true;
  try{
    try{
      if( !FileExists(Filename) )
        return false;
      else{
        Archivo = new TFileStream(Filename, fmOpenRead|fmShareExclusive);
        Archivo->Seek(0, soFromBeginning);
        InfoSize = sizeof(TFileDsg);
        Archivo->Read(&FileDsg, InfoSize);
        RecordToComponent();
        ModificadoPlano = true;
      }
    }catch(...){
      r = false;}
  }__finally{
    delete Archivo;
    return r;
  }
}

//---------------------------------------------------------------------------
bool __fastcall TDesigner2D::SaveToFile(AnsiString Filename)
{
  int InfoSize;
  TFileStream *Archivo;
  bool r = true;
  try{
    try{
      if( FileExists(Filename) )
        Archivo = new TFileStream(Filename, fmOpenWrite|fmShareExclusive);
      else
        Archivo = new TFileStream(Filename, fmOpenWrite|fmShareExclusive|fmCreate);
      Archivo->Seek(0, soFromBeginning);
      ComponentToRecord();
      InfoSize = sizeof(TFileDsg);
      Archivo->Write(&FileDsg, InfoSize);
    }catch(...){
      r = false;}
  }__finally{
    delete Archivo;
    return r;
  }
}

//---------------------------------------------------------------------------
TFontStyle FontStyleToInt(TFontStyles fs)
{
  int r = 0;
  if( fs.Contains(fsBold) )
    r = r | 1;
  if( fs.Contains(fsItalic) )
    r = r | 2;
  if( fs.Contains(fsUnderline) )
    r = r | 4;
  if( fs.Contains(fsStrikeOut) )
    r = r | 8;
  return TFontStyle(r);
}

TFontStyles IntToFontStyle(int r)
{
  TFontStyles fs;
  fs.Clear();
  if( r & 1)
    fs = fs << fsBold;
  if( r & 2 )
    fs = fs << fsItalic;
  if( r & 4 )
    fs = fs << fsUnderline;
  if( r & 8 )
    fs = fs << fsStrikeOut;
  return fs;
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::ComponentToRecord(void)
{
  FileDsg.FontAxeX_Color = FFontAxeX->Color;
  strcpy(FileDsg.FontAxeX_Name, FFontAxeX->Name.c_str());
  FileDsg.FontAxeX_Size = FFontAxeX->Size;
  FileDsg.FontAxeX_Style = FontStyleToInt(FFontAxeX->Style);
  FileDsg.FontAxeY_Color = FFontAxeY->Color;
  strcpy(FileDsg.FontAxeY_Name, FFontAxeY->Name.c_str());
  FileDsg.FontAxeY_Size = FFontAxeY->Size;
  FileDsg.FontAxeY_Style = FontStyleToInt(FFontAxeY->Style);
  FileDsg.FontLabelX_Color = FFontLabelX->Color;
  strcpy(FileDsg.FontLabelX_Name, FFontLabelX->Name.c_str());
  FileDsg.FontLabelX_Size = FFontLabelX->Size;
  FileDsg.FontLabelX_Style = FontStyleToInt(FFontLabelX->Style) ;
  FileDsg.FontLabelY_Color = FFontLabelY->Color;
  strcpy(FileDsg.FontLabelY_Name, FFontLabelY->Name.c_str());
  FileDsg.FontLabelY_Size = FFontLabelY->Size;
  FileDsg.FontLabelY_Style = FontStyleToInt(FFontLabelY->Style);
  FileDsg.AxeX_Color = FAxeX->Color;
  FileDsg.AxeX_Style = FAxeX->Style;
  FileDsg.AxeX_Widht = FAxeX->Width;
  FileDsg.AxeY_Color = FAxeY->Color;
  FileDsg.AxeY_Style = FAxeY->Style;
  FileDsg.AxeY_Widht = FAxeY->Width;
  FileDsg.GridX_Color = FGridX->Color;
  FileDsg.GridX_Style = FGridX->Style;
  FileDsg.GridX_Widht = FGridX->Width;
  FileDsg.GridY_Color = FGridY->Color;
  FileDsg.GridY_Style = FGridY->Style;
  FileDsg.GridY_Widht = FGridY->Width;
  FileDsg.BackGround_Color = FBackGround->Color;
  FileDsg.BackGround_Style = FBackGround->Style;
  FileDsg.ShowFrame = FShowFrame;
  FileDsg.ShowAxeX = FShowAxeX;
  FileDsg.ShowAxeY = FShowAxeY;
  FileDsg.ShowPointer = FShowPointer;
  FileDsg.ShowMarksAxeX = FShowMarksAxeX;
  FileDsg.ShowMarksAxeY = FShowMarksAxeY;
  FileDsg.MarksLengthAxeX = FMarksLengthAxeX;
  FileDsg.MarksLengthAxeY = FMarksLengthAxeY;
  FileDsg.MarksStepX = FMarksStepX;
  FileDsg.MarksStepY = FMarksStepX;
  FileDsg.LabelsStepX = FLabelsStepX;
  FileDsg.LabelsStepY = FLabelsStepY;
  strcpy(FileDsg.AdditionalStringAxeX, FAdditionalStringAxeX.c_str());
  strcpy(FileDsg.AdditionalStringAxeY, FAdditionalStringAxeY.c_str());
  FileDsg.LabelsToTheTopOfAxeX = FLabelsToTheTopOfAxeX;
  FileDsg.LabelsToTheRigthOfAxeY = FLabelsToTheRigthOfAxeY;
  FileDsg.ShowLabelsAxeX = FShowLabelsAxeX;
  FileDsg.ShowLabelsAxeY = FShowLabelsAxeY;
  FileDsg.CenterX = FCenterX;
  FileDsg.CenterY = FCenterY;
  FileDsg.ZoomX = FZoomX;
  FileDsg.ZoomY = FZoomY;
  strcpy(FileDsg.AxeNameX, FAxeNameX.c_str());
  strcpy(FileDsg.AxeNameY, FAxeNameY.c_str());
  FileDsg.DirectionX = FDirectionX;
  FileDsg.DirectionY = FDirectionY;
  FileDsg.DiscretStepX = FDiscretStepX;
  FileDsg.GridStepX = FGridStepX;
  FileDsg.GridStepY = FGridStepY;
  FileDsg.ShowGridX = FShowGridX;
  FileDsg.ShowGridY = FShowGridY;
}

//---------------------------------------------------------------------------
void __fastcall TDesigner2D::RecordToComponent(void)
{                               
  FFontAxeX->Color = FileDsg.FontAxeX_Color;
  FFontAxeX->Name = FileDsg.FontAxeX_Name;
  FFontAxeX->Size = FileDsg.FontAxeX_Size;
  FFontAxeX->Style = IntToFontStyle(FileDsg.FontAxeX_Style);
  FFontAxeY->Color = FileDsg.FontAxeY_Color;
  FFontAxeY->Name = FileDsg.FontAxeY_Name;
  FFontAxeY->Size = FileDsg.FontAxeY_Size;
  FFontAxeY->Style = IntToFontStyle(FileDsg.FontAxeY_Style);
  FFontLabelX->Color = FileDsg.FontLabelX_Color;
  FFontLabelX->Name = FileDsg.FontLabelX_Name;
  FFontLabelX->Size = FileDsg.FontLabelX_Size;
  FFontLabelX->Style = IntToFontStyle(FileDsg.FontLabelX_Style);
  FFontLabelY->Color = FileDsg.FontLabelY_Color;
  FFontLabelY->Name = FileDsg.FontLabelY_Name;
  FFontLabelY->Size = FileDsg.FontLabelY_Size;
  FFontLabelY->Style = IntToFontStyle(FileDsg.FontLabelY_Style);
  FAxeX->Color = FileDsg.AxeX_Color;
  FAxeX->Style = FileDsg.AxeX_Style;
  FAxeX->Width = FileDsg.AxeX_Widht;
  FAxeY->Color = FileDsg.AxeY_Color;
  FAxeY->Style = FileDsg.AxeY_Style;
  FAxeY->Width = FileDsg.AxeY_Widht;
  FGridX->Color = FileDsg.GridX_Color;
  FGridX->Style = FileDsg.GridX_Style;
  FGridX->Width = FileDsg.GridX_Widht;
  FGridY->Color = FileDsg.GridY_Color;
  FGridY->Style = FileDsg.GridY_Style;
  FGridY->Width = FileDsg.GridY_Widht;
  FBackGround->Color = FileDsg.BackGround_Color;
  FBackGround->Style = FileDsg.BackGround_Style;
  FShowFrame = FileDsg.ShowFrame;
  FShowAxeX = FileDsg.ShowAxeX;
  FShowAxeY = FileDsg.ShowAxeY;
  FShowPointer = FileDsg.ShowPointer;
  FShowMarksAxeX = FileDsg.ShowMarksAxeX;
  FShowMarksAxeY = FileDsg.ShowMarksAxeY;
  FMarksLengthAxeX = FileDsg.MarksLengthAxeX;
  FMarksLengthAxeY = FileDsg.MarksLengthAxeY;
  FMarksStepX = FileDsg.MarksStepX;
  FMarksStepX = FileDsg.MarksStepY;
  FLabelsStepX = FileDsg.LabelsStepX;
  FLabelsStepY = FileDsg.LabelsStepY;
  FAdditionalStringAxeX = FileDsg.AdditionalStringAxeX;
  FAdditionalStringAxeY = FileDsg.AdditionalStringAxeY;
  FLabelsToTheTopOfAxeX = FileDsg.LabelsToTheTopOfAxeX;
  FLabelsToTheRigthOfAxeY = FileDsg.LabelsToTheRigthOfAxeY;
  FShowLabelsAxeX = FileDsg.ShowLabelsAxeX;
  FShowLabelsAxeY = FileDsg.ShowLabelsAxeY;
  FCenterX = FileDsg.CenterX;
  FCenterY = FileDsg.CenterY;
  FZoomX = FileDsg.ZoomX;
  FZoomY = FileDsg.ZoomY;
  FAxeNameX = FileDsg.AxeNameX;
  FAxeNameY = FileDsg.AxeNameY;
  FDirectionX = FileDsg.DirectionX;
  FDirectionY = FileDsg.DirectionY;
  FDiscretStepX = FileDsg.DiscretStepX;
  FGridStepX = FileDsg.GridStepX;
  FGridStepY = FileDsg.GridStepY;
  FShowGridX = FileDsg.ShowGridX;
  FShowGridY = FileDsg.ShowGridY;
}

//---------------------------------------------------------------------------
static inline void ValidCtrCheck(TDesigner2D *)
{
        new TDesigner2D(NULL);
}

//---------------------------------------------------------------------------
namespace Designer2d
{
  void __fastcall PACKAGE Register()
  {
    TComponentClass classes[1] = {__classid(TDesigner2D)};
    RegisterComponents("MaxMath", classes, 0);
  }
}

//---------------------------------------------------------------------------
