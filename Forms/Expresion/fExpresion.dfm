object frmExpresion: TfrmExpresion
  Left = 431
  Top = 339
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Expresi'#243'n'
  ClientHeight = 153
  ClientWidth = 176
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 161
    Height = 49
    Caption = 'Funci'#243'n'
    TabOrder = 0
    object cboFuncion: TComboBox
      Left = 8
      Top = 16
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cboFuncionChange
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 64
    Width = 161
    Height = 49
    Caption = 'Expresi'#243'n'
    TabOrder = 1
    object cboExpresion: TComboBox
      Left = 8
      Top = 16
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cboExpresionChange
    end
  end
  object btnOk: TButton
    Left = 10
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Aceptar'
    Default = True
    Enabled = False
    ModalResult = 1
    TabOrder = 2
  end
  object Button2: TButton
    Left = 90
    Top = 120
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 3
  end
end
