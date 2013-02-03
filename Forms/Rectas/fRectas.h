//---------------------------------------------------------------------------

#ifndef fRectasH
#define fRectasH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ActnList.hpp>
#include <Menus.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmRectas : public TForm
{
__published:	// IDE-managed Components
	TActionList *alsRectas;
	TMainMenu *mnuRectas;
	TMenuItem *Archivo1;
	TMenuItem *Nuevoproyecto1;
	TMenuItem *Abrir1;
	TMenuItem *N1;
	TMenuItem *N2;
	TMenuItem *Cerrarproyecto1;
	TMenuItem *N8;
	TMenuItem *Configurarimpresora1;
	TMenuItem *N9;
	TMenuItem *N10;
	TMenuItem *Salir1;
	TMenuItem *Rectas1;
	TMenuItem *Operaciones1;
	TMenuItem *Anguloentrerectas1;
	TMenuItem *Distanciadeunpuntoalarecta1;
	TMenuItem *Nueva1;
	TMenuItem *Modificar1;
	TMenuItem *Eliminar1;
	TMenuItem *N3;
	TMenuItem *Todaslasecuacionesdeunarectadada1;
	TAction *actNueva;
	TImage *imgRectas;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall actNuevaExecute(TObject *Sender);
	void __fastcall FormResize(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall FormDestroy(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
private:	// User declarations
	TList *rectas;
public:		// User declarations
	__fastcall TfrmRectas(TComponent* Owner);
    void __fastcall graficar();
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmRectas *frmRectas;
//---------------------------------------------------------------------------
#endif
