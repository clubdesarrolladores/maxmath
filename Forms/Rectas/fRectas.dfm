object frmRectas: TfrmRectas
  Left = 260
  Top = 226
  Caption = 'frmRectas'
  ClientHeight = 160
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Menu = mnuRectas
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object imgRectas: TImage
    Left = 0
    Top = 0
    Width = 293
    Height = 160
    Align = alClient
    ExplicitWidth = 301
    ExplicitHeight = 144
  end
  object alsRectas: TActionList
    Images = frmMain.imlMain
    Left = 48
    Top = 56
    object actNueva: TAction
      Category = 'Rectas'
      Caption = 'Nueva...'
      ImageIndex = 19
      OnExecute = actNuevaExecute
    end
  end
  object mnuRectas: TMainMenu
    Images = frmMain.imlMain
    Left = 96
    Top = 40
    object Archivo1: TMenuItem
      Caption = 'Archivo'
      object Nuevoproyecto1: TMenuItem
        Action = frmMain.actNuevo
      end
      object Abrir1: TMenuItem
        Action = frmMain.actAbrir
      end
      object N1: TMenuItem
      end
      object N2: TMenuItem
      end
      object Cerrarproyecto1: TMenuItem
        Action = frmMain.actCerrar
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object Configurarimpresora1: TMenuItem
        Action = frmMain.actConfImpres
      end
      object N9: TMenuItem
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object Salir1: TMenuItem
        Action = frmMain.actSalir
      end
    end
    object Rectas1: TMenuItem
      Caption = 'Rectas'
      object Nueva1: TMenuItem
        Action = actNueva
      end
      object Modificar1: TMenuItem
        Caption = 'Modificar'
      end
      object Eliminar1: TMenuItem
        Caption = 'Eliminar'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Todaslasecuacionesdeunarectadada1: TMenuItem
        Caption = 'Todas las ecuaciones de una recta dada'
      end
    end
    object Operaciones1: TMenuItem
      Caption = 'Operaciones'
      object Anguloentrerectas1: TMenuItem
        Caption = 'Angulo entre rectas'
      end
      object Distanciadeunpuntoalarecta1: TMenuItem
        Caption = 'Distancia de un punto a la recta'
      end
    end
  end
end
