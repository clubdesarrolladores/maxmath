//---------------------------------------------------------------------------
// Módulo: Designer2D
// Autor: Gastón Furini
// Fecha: 23/11/2004
// Versión: 0.1
// Descripción:
//      Contiene la clase TDesigner2D que modela un plano cartesiano y grafíca
// funciones.
//---------------------------------------------------------------------------

#ifndef Designer2DH
#define Designer2DH
//---------------------------------------------------------------------------
#include <SysUtils.hpp>
#include <Classes.hpp>
#include <Controls.hpp>

#include "uFuncion.h"
#include "uEval_Ex.h"
//---------------------------------------------------------------------------

//Direcciones de los ejes
enum TDirectionX {drLeftToRight, drRightToLeft};
enum TDirectionY {drBottomToTop, drTopToBottom};

// Formato de archivo DSG
struct TFileDsg
{
  TColor FontAxeX_Color;
  char FontAxeX_Name[256];
  int FontAxeX_Size;
  TFontStyle FontAxeX_Style;
  TColor FontAxeY_Color;
  char FontAxeY_Name[256];
  int FontAxeY_Size;
  TFontStyle FontAxeY_Style;
  TColor FontLabelX_Color;
  char FontLabelX_Name[256];
  int FontLabelX_Size;
  TFontStyle FontLabelX_Style;
  TColor FontLabelY_Color;
  char FontLabelY_Name[256];
  int FontLabelY_Size;
  TFontStyle FontLabelY_Style;
  TColor AxeX_Color;
  TPenStyle AxeX_Style;
  int AxeX_Widht;
  TColor AxeY_Color;
  TPenStyle AxeY_Style;
  int AxeY_Widht;
  TColor GridX_Color;
  TPenStyle GridX_Style;
  int GridX_Widht;
  TColor GridY_Color;
  TPenStyle GridY_Style;
  int GridY_Widht;
  TColor BackGround_Color;
  TBrushStyle BackGround_Style;
  bool ShowFrame;
  bool ShowAxeX;
  bool ShowAxeY;
  bool ShowPointer;
  bool ShowMarksAxeX;
  bool ShowMarksAxeY;
  int MarksLengthAxeX;
  int MarksLengthAxeY;
  long double MarksStepX;
  long double MarksStepY;
  long double LabelsStepX;
  long double LabelsStepY;
  char AdditionalStringAxeX[256];
  char AdditionalStringAxeY[256];
  bool LabelsToTheTopOfAxeX;
  bool LabelsToTheRigthOfAxeY;
  bool ShowLabelsAxeX;
  bool ShowLabelsAxeY;
  long double CenterX;
  long double CenterY;
  int ZoomX;
  int ZoomY;
  char AxeNameX[256];
  char AxeNameY[256];
  TDirectionX DirectionX;
  TDirectionY DirectionY;
  long double DiscretStepX;
  long double GridStepX;
  long double GridStepY;
  bool ShowGridX;
  bool ShowGridY;
};

class PACKAGE TDesigner2D : public TGraphicControl
{
private: //Atributos privados
  TFont *FFontAxeX;
  TFont *FFontAxeY;
  TFont *FFontLabelX;
  TFont *FFontLabelY;
  TPen *FAxeX;
  TPen *FAxeY;
  TPen *FGridX;
  TPen *FGridY;
  Graphics::TBitmap *FBitmap;
  Graphics::TBitmap *FBitmapPlano;
  TBrush * FBackGround;
  bool FShowFrame;
  bool FShowAxeX;
  bool FShowAxeY;
  bool FShowPointer;
  bool FShowMarksAxeX;
  bool FShowMarksAxeY;
  int FMarksLengthAxeX;
  int FMarksLengthAxeY;
  long double FMarksStepX;
  long double FMarksStepY;
  long double FLabelsStepX;
  long double FLabelsStepY;
  AnsiString FAdditionalStringAxeX;
  AnsiString FAdditionalStringAxeY;
  bool FLabelsToTheTopOfAxeX;
  bool FLabelsToTheRigthOfAxeY;
  bool FShowLabelsAxeX;
  bool FShowLabelsAxeY;
  long double FCenterX;
  long double FCenterY;
  int FZoomX;
  int FZoomY;
  AnsiString FAxeNameX;
  AnsiString FAxeNameY;
  TDirectionX FDirectionX;
  TDirectionY FDirectionY;
  long double FDiscretStepX;
  long double FGridStepX;
  long double FGridStepY;
  bool FShowGridX;
  bool FShowGridY;
  bool FModificadoPlano;
  bool FModificadoGraph;
  TRect FOldPlano;
  int px_, py_;
  TFileDsg FileDsg;
private: //Funcionalidades privadas
  //Cálculos
  long double Round(long double x);
  //Gráficas
  void __fastcall Clear(void);
  void __fastcall DrawLines(void);
  void __fastcall DrawArrows(void);
  void __fastcall DrawNames(void);
  void __fastcall DrawMarks(void);
  void __fastcall DrawGrid(void);
  void __fastcall DrawNumbers(void);
  void __fastcall Draw(void);
  void __fastcall ComponentToRecord(void);
  void __fastcall RecordToComponent(void);
protected:
  //Funcionalidades de las propiedades
  void __fastcall SetShowFrame(bool Value);
  void __fastcall SetShowAxeX(bool Value);
  void __fastcall SetShowAxeY(bool Value);
  void __fastcall SetShowPointer(bool Value);
  void __fastcall SetCenterX(long double Value);
  void __fastcall SetCenterY(long double Value);
  void __fastcall SetZoomX(int Value);
  void __fastcall SetZoomY(int Value);
  void __fastcall SetAxeNameX(AnsiString Value);
  void __fastcall SetAxeNameY(AnsiString Value);
  void __fastcall SetDirectionX(TDirectionX Value);
  void __fastcall SetDirectionY(TDirectionY Value);
  void __fastcall SetFontAxeX(TFont *Value);
  void __fastcall SetFontAxeY(TFont *Value);
  void __fastcall SetFontLabelX(TFont *Value);
  void __fastcall SetFontLabelY(TFont *Value);
  void __fastcall SetAxeX(TPen *Value);
  void __fastcall SetAxeY(TPen *Value);
  void __fastcall SetGridX(TPen *Value);
  void __fastcall SetGridY(TPen *Value);
  void __fastcall SetBackGround(TBrush *Value);
  void __fastcall SetGridStepX(long double Value);
  void __fastcall SetGridStepY(long double Value);
  void __fastcall SetDiscretStepX(long double Value);
  void __fastcall AttributeChanged(TObject * Sender);
  void __fastcall SetShowMarksAxeX(bool Value);
  void __fastcall SetShowMarksAxeY(bool Value);
  void __fastcall SetShowGridX(bool Value);
  void __fastcall SetShowGridY(bool Value);
  void __fastcall SetMarksLengthAxeX(int Value);
  void __fastcall SetMarksLengthAxeY(int Value);
  void __fastcall SetMarksStepX(long double Value);
  void __fastcall SetMarksStepY(long double Value);
  void __fastcall SetAdditionalStringAxeX(AnsiString Value);
  void __fastcall SetAdditionalStringAxeY(AnsiString Value);
  void __fastcall SetLabelsToTheTopOfAxeX(bool Value);
  void __fastcall SetLabelsToTheRigthOfAxeY(bool Value);
  void __fastcall SetShowLabelsAxeX(bool Value);
  void __fastcall SetShowLabelsAxeY(bool Value);
  void __fastcall SetLabelsStepX(long double Value);
  void __fastcall SetLabelsStepY(long double Value);
  void __fastcall SetModificadoPlano(bool Value);
  void __fastcall SetModificadoGraph(bool Value);
  //Funcionalidades adicionales
  bool __fastcall PuntoInterior(int x,int y);
  virtual void __fastcall DrawAxes(void);
  void __fastcall DrawFunctions();
  //Funcionalidades heredadas
  virtual void __fastcall Paint(void);
  DYNAMIC void __fastcall Resize(void);
public:
  //Contructor y destructor
  __fastcall TDesigner2D(TComponent* Owner);
  __fastcall ~TDesigner2D(void);
  virtual void __fastcall Assign(TPersistent* Source);
  long double ScreenXToRealX(int px);
  long double ScreenYToRealY(int py);
  int RealXToScreenX(long double x);
  int RealYToScreenY(long double y);
  TFunciones *FFunciones;
  void CopyToClipboard();
  void __fastcall SaveBitmapToFile(AnsiString FileName, TPixelFormat pf);
  void MoveToCenter(void);
  void MoveToLeft(void);
  void MoveToRight(void);
  void MoveToTop(void);
  void MoveToBottom(void);
  void Print(int Copies);
  void Trace(int x, int y, bool first = false);
  void SetCenter(long double cx, long double cy);
  void SetZoom(int zx, int zy);
  bool __fastcall LoadFromFile(AnsiString Filename);
  bool __fastcall SaveToFile(AnsiString Filename);
  __property bool ModificadoPlano = {read = FModificadoPlano, write = SetModificadoPlano};
  __property bool ModificadoGraph = {read = FModificadoGraph, write = SetModificadoGraph};
__published:
  //Propiedades del componente
  __property TFont *FontAxeX = {read = FFontAxeX, write = SetFontAxeX};
  __property TFont *FontAxeY = {read = FFontAxeY, write = SetFontAxeY};
  __property TFont *FontLabelX = {read = FFontLabelX, write = SetFontLabelX};
  __property TFont *FontLabelY = {read = FFontLabelY, write = SetFontLabelY};
  __property TPen *AxeX = {read = FAxeX, write = SetAxeX};
  __property TPen *AxeY = {read = FAxeY, write = SetAxeY};
  __property TPen *GridX = {read = FGridX, write = SetGridX};
  __property TPen *GridY = {read = FGridY, write = SetGridY};
  __property TBrush *BackGround = {read = FBackGround, write = SetBackGround};
  __property long double GridStepX = {read = FGridStepX, write = SetGridStepX, default = 1};
  __property long double GridStepY = {read = FGridStepY, write = SetGridStepY, default = 1};
  __property long double DiscretStepX = {read = FDiscretStepX, write = SetDiscretStepX};
  __property bool ShowFrame = {read = FShowFrame, write = SetShowFrame, default = true};
  __property bool ShowAxeX = {read = FShowAxeX, write = SetShowAxeX, default = true};
  __property bool ShowAxeY = {read = FShowAxeY, write = SetShowAxeY, default = true};
  __property bool ShowPointer = {read = FShowPointer, write = SetShowPointer, default = true};
  __property bool ShowGridX = {read = FShowGridX, write = SetShowGridX, default = true};
  __property bool ShowGridY = {read = FShowGridY, write = SetShowGridY, default = true};
  __property long double CenterX = {read = FCenterX, write = SetCenterX, default = 0};
  __property long double CenterY = {read = FCenterY, write = SetCenterY, default = 0};
  __property int ZoomAxeX = {read = FZoomX, write = SetZoomX, default = 100};
  __property int ZoomAxeY = {read = FZoomY, write = SetZoomY, default = 100};
  __property AnsiString NameAxeX = {read = FAxeNameX, write = SetAxeNameX};
  __property AnsiString NameAxeY = {read = FAxeNameY, write = SetAxeNameY};
  __property TDirectionX DirectionAxeX = {read = FDirectionX, write = SetDirectionX, default = drLeftToRight};
  __property TDirectionY DirectionAxeY = {read = FDirectionY, write = SetDirectionY, default = drBottomToTop};
  __property bool ShowMarksAxeX = {read = FShowMarksAxeX, write = SetShowMarksAxeX, default = true};
  __property bool ShowMarksAxeY = {read = FShowMarksAxeY, write = SetShowMarksAxeY, default = true};
  __property int MarksLengthAxeX = {read = FMarksLengthAxeX, write = SetMarksLengthAxeX};
  __property int MarksLengthAxeY = {read = FMarksLengthAxeY, write = SetMarksLengthAxeY};
  __property long double MarksStepX = {read = FMarksStepX, write = SetMarksStepX};
  __property long double MarksStepY = {read = FMarksStepY, write = SetMarksStepY};
  __property long double LabelsStepX = {read = FLabelsStepX, write = SetLabelsStepX};
  __property long double LabelsStepY = {read = FLabelsStepY, write = SetLabelsStepY};
  __property AnsiString AdditionalStringAxeX = {read = FAdditionalStringAxeX, write = SetAdditionalStringAxeX};
  __property AnsiString AdditionalStringAxeY = {read = FAdditionalStringAxeY, write = SetAdditionalStringAxeY};
  __property bool LabelsToTheTopOfAxeX = {read = FLabelsToTheTopOfAxeX, write = SetLabelsToTheTopOfAxeX};
  __property bool LabelsToTheRigthOfAxeY = {read = FLabelsToTheRigthOfAxeY, write = SetLabelsToTheRigthOfAxeY};
  __property bool ShowLabelsAxeX = {read = FShowLabelsAxeX, write = SetShowLabelsAxeX, default = true};
  __property bool ShowLabelsAxeY = {read = FShowLabelsAxeY, write = SetShowLabelsAxeY, default = true};
  //Propiedades heredadas
  __property Action;
  __property Align;
  __property PopupMenu;
  __property ShowHint;
  __property Visible;
  //Eventos heredados
  __property OnCanResize;
  __property OnClick;
  __property OnContextPopup;
  __property OnDblClick;
  __property OnMouseDown;
  __property OnMouseMove;
  __property OnMouseUp;
  __property OnResize;
};

void RegisterClassesSystem(void)
{
  #pragma startup RegisterClassesSystem
  Classes::RegisterClass(__classid(TDesigner2D));
}

//---------------------------------------------------------------------------
#endif
