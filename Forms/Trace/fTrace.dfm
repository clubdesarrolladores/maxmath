object frmTrace: TfrmTrace
  Left = 291
  Top = 251
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Camino de funci'#243'n'
  ClientHeight = 158
  ClientWidth = 180
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 4
    Top = 96
    Width = 173
    Height = 21
    Cursor = 1
  end
  object Bevel1: TBevel
    Left = 4
    Top = 72
    Width = 173
    Height = 21
    Cursor = 1
  end
  object Label1: TLabel
    Left = 8
    Top = 76
    Width = 14
    Height = 13
    Cursor = 1
    Caption = 'x ='
  end
  object Label2: TLabel
    Left = 8
    Top = 100
    Width = 14
    Height = 13
    Cursor = 1
    Caption = 'y ='
  end
  object lblx: TLabel
    Left = 28
    Top = 76
    Width = 3
    Height = 13
    Cursor = 1
  end
  object lbly: TLabel
    Left = 28
    Top = 100
    Width = 3
    Height = 13
    Cursor = 1
  end
  object Bevel3: TBevel
    Left = 4
    Top = 120
    Width = 173
    Height = 9
    Cursor = 1
    Shape = bsTopLine
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 4
    Width = 173
    Height = 49
    Cursor = 1
    Caption = 'Funci'#243'n'
    TabOrder = 0
    object cboFuncion: TComboBox
      Left = 8
      Top = 20
      Width = 157
      Height = 21
      Cursor = 1
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cboFuncionChange
    end
  end
  object PosX: TScrollBar
    Left = 4
    Top = 56
    Width = 173
    Height = 13
    Cursor = 1
    Max = 1000
    PageSize = 0
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnChange = PosXChange
  end
  object btnClose: TButton
    Left = 52
    Top = 128
    Width = 75
    Height = 25
    Cursor = 1
    Cancel = True
    Caption = '&Cerrar'
    ModalResult = 1
    TabOrder = 2
  end
end
