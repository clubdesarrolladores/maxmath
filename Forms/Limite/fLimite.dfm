object frmLimite: TfrmLimite
  Left = 493
  Top = 203
  Cursor = 1
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'L'#237'mite'
  ClientHeight = 204
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 4
    Top = 168
    Width = 405
    Height = 9
    Shape = bsTopLine
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 119
    Height = 13
    Cursor = 1
    Caption = 'Expresi'#243'n de variable "x"'
  end
  object Label3: TLabel
    Left = 300
    Top = 8
    Width = 53
    Height = 13
    Cursor = 1
    Caption = 'Valor (x->a)'
  end
  object Label4: TLabel
    Left = 8
    Top = 68
    Width = 29
    Height = 13
    Cursor = 1
    Caption = 'L'#237'mite'
  end
  object Bevel5: TBevel
    Left = 4
    Top = 52
    Width = 405
    Height = 9
    Cursor = 1
    Shape = bsTopLine
  end
  object btnClose: TButton
    Left = 328
    Top = 176
    Width = 75
    Height = 25
    Cursor = 1
    Cancel = True
    Caption = 'Cerrar'
    TabOrder = 5
    OnClick = btnCloseClick
  end
  object btnCalcular: TButton
    Left = 248
    Top = 176
    Width = 75
    Height = 25
    Cursor = 1
    Caption = 'Calcular'
    Default = True
    TabOrder = 4
    OnClick = btnCalcularClick
  end
  object lstResultados: TListBox
    Left = 8
    Top = 86
    Width = 401
    Height = 76
    Cursor = 2
    Style = lbOwnerDrawFixed
    IntegralHeight = True
    ItemHeight = 18
    TabOrder = 3
  end
  object edtExpresion: TEdit
    Left = 8
    Top = 24
    Width = 249
    Height = 21
    Cursor = 3
    TabOrder = 0
  end
  object btnExpresiones: TButton
    Left = 264
    Top = 24
    Width = 25
    Height = 21
    Cursor = 1
    Caption = '...'
    TabOrder = 1
    OnClick = btnExpresionesClick
  end
  object edta: TComboBox
    Left = 296
    Top = 24
    Width = 113
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Infinito'
      'Infinito negativo')
  end
end
