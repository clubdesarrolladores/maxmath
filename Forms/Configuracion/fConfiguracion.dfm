object frmConfiguracion: TfrmConfiguracion
  Left = 323
  Top = 222
  Cursor = 1
  BorderStyle = bsDialog
  Caption = 'Configuraci'#243'n de MaxMath'
  ClientHeight = 250
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 4
    Top = 4
    Width = 297
    Height = 213
    Style = bsRaised
  end
  object pagPaginas: TPageControl
    Left = 8
    Top = 8
    Width = 289
    Height = 205
    Cursor = 1
    ActivePage = tabGeneral
    TabIndex = 0
    TabOrder = 0
    object tabGeneral: TTabSheet
      Cursor = 1
      Caption = 'General'
      object Bevel2: TBevel
        Left = 0
        Top = 0
        Width = 281
        Height = 177
        Cursor = 1
      end
      object grpArchivo: TGroupBox
        Left = 4
        Top = 4
        Width = 273
        Height = 85
        Cursor = 1
        Caption = 'Opciones de archivos e impresi'#243'n'
        TabOrder = 0
        object chkDeleteImport: TCheckBox
          Left = 8
          Top = 20
          Width = 257
          Height = 17
          Cursor = 1
          Caption = 'Permitir la eliminaci'#243'n de un archivo al importarlo'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = OnChange
        end
        object chkCheckWhiteColor: TCheckBox
          Left = 8
          Top = 60
          Width = 257
          Height = 17
          Cursor = 1
          Caption = 'Verificar color de fondo en la impresi'#243'n (Blanco)'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = OnChange
        end
        object chkErrorArchivos: TCheckBox
          Left = 8
          Top = 40
          Width = 257
          Height = 17
          Cursor = 1
          Caption = 'Informar fallas de lectura / escritura de archivos'
          TabOrder = 1
          OnClick = OnChange
        end
      end
      object GroupBox1: TGroupBox
        Left = 4
        Top = 92
        Width = 273
        Height = 81
        Cursor = 1
        Caption = 'Miscelaneos'
        TabOrder = 1
        object chkTrayIcon: TCheckBox
          Left = 8
          Top = 16
          Width = 257
          Height = 17
          Cursor = 1
          Caption = 'Minimizar en la barra de tareas'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = OnChange
        end
        object chkVerificarAsociaciones: TCheckBox
          Left = 8
          Top = 36
          Width = 257
          Height = 17
          Cursor = 1
          Caption = 'Verificar asociaciones al abrir (*.pmm)'
          TabOrder = 1
          OnClick = OnChange
        end
        object chkDeleteFunction: TCheckBox
          Left = 8
          Top = 56
          Width = 257
          Height = 17
          Cursor = 1
          Caption = 'Preguntar antes de eliminar una funci'#243'n'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = OnChange
        end
      end
    end
  end
  object btnDefault: TButton
    Left = 12
    Top = 220
    Width = 75
    Height = 25
    Cursor = 1
    Caption = 'Set Default'
    TabOrder = 1
    OnClick = btnDefaultClick
  end
  object btnCancel: TButton
    Left = 224
    Top = 220
    Width = 75
    Height = 25
    Cursor = 1
    Cancel = True
    Caption = '&Cerrar'
    TabOrder = 3
    OnClick = btnCancelClick
  end
  object btnApply: TButton
    Left = 144
    Top = 220
    Width = 75
    Height = 25
    Cursor = 1
    Caption = '&Aplicar'
    Enabled = False
    TabOrder = 2
    OnClick = btnApplyClick
  end
end
