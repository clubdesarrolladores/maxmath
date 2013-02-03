object frmSelectFunc: TfrmSelectFunc
  Left = 287
  Top = 236
  BorderStyle = bsDialog
  Caption = 'Selecci'#243'n'
  ClientHeight = 85
  ClientWidth = 193
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFuncion: TPanel
    Left = 4
    Top = 4
    Width = 185
    Height = 49
    Cursor = 1
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 8
      Width = 112
      Height = 13
      Cursor = 1
      Caption = 'Seleccione una funci'#243'n'
    end
    object cboFunciones: TComboBox
      Left = 4
      Top = 24
      Width = 177
      Height = 21
      Cursor = 1
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cboFuncionesChange
    end
  end
  object btnCancelar: TButton
    Left = 99
    Top = 56
    Width = 75
    Height = 25
    Cursor = 1
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object btnAceptar: TButton
    Left = 19
    Top = 56
    Width = 75
    Height = 25
    Cursor = 1
    Caption = '&Aceptar'
    Enabled = False
    ModalResult = 1
    TabOrder = 1
  end
end
