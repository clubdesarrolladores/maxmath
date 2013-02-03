//---------------------------------------------------------------------------

#ifndef fTextEditorH
#define fTextEditorH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <ComCtrls.hpp>
#include <Controls.hpp>
#include <Menus.hpp>
#include <StdCtrls.hpp>
#include <ToolWin.hpp>
#include <ActnList.hpp>
#include <ExtActns.hpp>
#include <StdActns.hpp>
#include <ImgList.hpp>
#include <Dialogs.hpp>

//---------------------------------------------------------------------------
class TfrmTextEditor : public TForm
{
__published:	// IDE-managed Components
        TStatusBar *sbrStatus;
        TMainMenu *mnuMain;
        TPopupMenu *pmnuEditor;
        TRichEdit *rtxtTexto;
        TToolBar *tbrTools;
        TMenuItem *mitArchivo;
        TMenuItem *mitNuevoDoc;
        TMenuItem *mitAbrir;
        TMenuItem *mitGuardar;
        TMenuItem *N1;
        TMenuItem *mitOcultar;
        TMenuItem *Edicion1;
        TMenuItem *Copiar1;
        TMenuItem *Cortar1;
        TMenuItem *Pegar1;
        TToolButton *ToolButton1;
        TToolButton *ToolButton2;
        TToolButton *ToolButton3;
        TActionList *actlstEditor;
        TEditCut *EditCut1;
        TEditCopy *EditCopy1;
        TEditPaste *EditPaste1;
        TEditSelectAll *EditSelectAll1;
        TEditUndo *EditUndo1;
        TEditDelete *EditDelete1;
        TRichEditBold *RichEditBold1;
        TRichEditItalic *RichEditItalic1;
        TRichEditUnderline *RichEditUnderline1;
        TRichEditStrikeOut *RichEditStrikeOut1;
        TRichEditBullets *RichEditBullets1;
        TRichEditAlignLeft *RichEditAlignLeft1;
        TRichEditAlignRight *RichEditAlignRight1;
        TRichEditAlignCenter *RichEditAlignCenter1;
        TFileOpen *FileOpen1;
        TSearchFind *SearchFind1;
        TSearchFindNext *SearchFindNext1;
        TSearchReplace *SearchReplace1;
        TMenuItem *Copy1;
        TMenuItem *Cut1;
        TMenuItem *Paste1;
        TMenuItem *N2;
        TMenuItem *SelectAll1;
        TMenuItem *N3;
        TMenuItem *Find1;
        TMenuItem *Replace1;
        TMenuItem *N4;
        TMenuItem *Formato1;
        TMenuItem *AlignLeft1;
        TMenuItem *Center1;
        TMenuItem *AlignRight1;
        TMenuItem *N5;
        TMenuItem *Bold1;
        TMenuItem *Italic1;
        TMenuItem *Underline1;
        TMenuItem *Strikeout1;
        TMenuItem *Bullets1;
        TMenuItem *Undo1;
        TMenuItem *N6;
        TMenuItem *N7;
        TMenuItem *SelectAll2;
        TMenuItem *Delete1;
        TMenuItem *Formato2;
        TMenuItem *AlignLeft2;
        TMenuItem *Center2;
        TMenuItem *AlignRight2;
        TMenuItem *N8;
        TMenuItem *Bold2;
        TMenuItem *Italic2;
        TMenuItem *Underline2;
        TMenuItem *Strikeout2;
        TMenuItem *Bullets2;
        TMenuItem *N9;
        TMenuItem *Find2;
        TMenuItem *FindNext1;
        TMenuItem *Replace2;
        TAction *actNew;
        TImageList *imglstEditor;
        TToolButton *ToolButton4;
        TToolButton *ToolButton5;
        TToolButton *ToolButton6;
        TToolButton *ToolButton7;
        TToolButton *ToolButton8;
        TToolButton *ToolButton9;
        TToolButton *ToolButton10;
        TToolButton *ToolButton11;
        TToolButton *ToolButton12;
        TToolButton *ToolButton13;
        TToolButton *ToolButton14;
        TToolButton *ToolButton15;
        TMenuItem *N10;
        TToolButton *ToolButton16;
        TToolButton *ToolButton17;
        TToolButton *ToolButton18;
        TToolButton *ToolButton19;
        TToolButton *ToolButton20;
        TAction *actFormato;
        TFontDialog *FontDialog1;
        TMenuItem *Fuente1;
        TSaveDialog *dlgSaveText;
        TOpenDialog *OpenDialog1;
        TAction *actSave;
        TMenuItem *Acercade1;
        TAction *actHide;
        TToolButton *ToolButton21;
        TToolButton *ToolButton22;
        TMenuItem *PrintSetup1;
        TAction *actImprimir;
        TToolButton *ToolButton23;
        TPrintDialog *PrintDialog1;
        void __fastcall FormHide(TObject *Sender);
        void __fastcall actNewExecute(TObject *Sender);
        void __fastcall actFormatoExecute(TObject *Sender);
        void __fastcall rtxtTextoKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall FileOpen1Accept(TObject *Sender);
        void __fastcall actSaveExecute(TObject *Sender);
        void __fastcall Acercade1Click(TObject *Sender);
        void __fastcall rtxtTextoKeyPress(TObject *Sender, char &Key);
        void __fastcall rtxtTextoKeyUp(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall actHideExecute(TObject *Sender);
        void __fastcall actImprimirExecute(TObject *Sender);
        void __fastcall SearchFind1FindDialogFind(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TfrmTextEditor(TComponent* Owner);
        void __fastcall CommonText(AnsiString Text);
        void __fastcall CaptionText(AnsiString Text);
        void __fastcall TfrmTextEditor::ParOrdenado(AnsiString Formato, long double x, long double y, AnsiString Additional);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmTextEditor *frmTextEditor;
//---------------------------------------------------------------------------
#endif
