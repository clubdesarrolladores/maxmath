object frmNuevaMatriz: TfrmNuevaMatriz
  Left = 424
  Top = 248
  BorderStyle = bsDialog
  Caption = 'Nueva matriz'
  ClientHeight = 262
  ClientWidth = 288
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
  object grpMatrix: TGroupBox
    Left = 8
    Top = 8
    Width = 273
    Height = 81
    Caption = 'Matriz'
    TabOrder = 0
    object lblFilas: TLabel
      Left = 43
      Top = 52
      Width = 21
      Height = 13
      Caption = 'Filas'
    end
    object lblCols: TLabel
      Left = 156
      Top = 52
      Width = 46
      Height = 13
      Caption = 'Columnas'
    end
    object edtName: TLabeledEdit
      Left = 72
      Top = 24
      Width = 185
      Height = 21
      EditLabel.Width = 37
      EditLabel.Height = 13
      EditLabel.Caption = 'Nombre'
      LabelPosition = lpLeft
      LabelSpacing = 8
      TabOrder = 0
    end
    object updFilas: TUpDown
      Left = 104
      Top = 48
      Width = 16
      Height = 21
      Associate = edtFilas
      Min = 1
      Max = 9999
      Position = 3
      TabOrder = 1
      Thousands = False
      Wrap = False
      OnClick = updFilasClick
    end
    object edtFilas: TEdit
      Left = 72
      Top = 48
      Width = 32
      Height = 21
      ReadOnly = True
      TabOrder = 2
      Text = '3'
    end
    object edtCols: TEdit
      Left = 208
      Top = 48
      Width = 32
      Height = 21
      ReadOnly = True
      TabOrder = 3
      Text = '3'
    end
    object updCols: TUpDown
      Left = 240
      Top = 48
      Width = 16
      Height = 21
      Associate = edtCols
      Min = 1
      Max = 9999
      Position = 3
      TabOrder = 4
      Wrap = False
      OnClick = updColsClick
    end
  end
  object grpValues: TGroupBox
    Left = 8
    Top = 96
    Width = 273
    Height = 129
    Caption = 'Valores'
    TabOrder = 1
    object grdValues: TStringGrid
      Left = 16
      Top = 16
      Width = 241
      Height = 105
      Cursor = crIBeam
      ColCount = 3
      Ctl3D = True
      DefaultColWidth = 40
      DefaultRowHeight = 21
      FixedCols = 0
      RowCount = 3
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object btnOk: TButton
    Left = 120
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    ModalResult = 1
    TabOrder = 2
  end
  object btnCancel: TButton
    Left = 200
    Top = 232
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 3
  end
end
