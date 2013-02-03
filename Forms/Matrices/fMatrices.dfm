object frmMatrices: TfrmMatrices
  Left = 240
  Top = 153
  Caption = 'Nuevo proyecto de matrices'
  ClientHeight = 308
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Menu = mnuMatrices
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object splInfo: TSplitter
    Left = 185
    Top = 0
    Height = 308
    ExplicitHeight = 292
  end
  object pnlInfo: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 308
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 292
    DesignSize = (
      185
      308)
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 169
      Height = 275
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Matrices'
      TabOrder = 0
      DesignSize = (
        169
        275)
      object lstMatrices: TListBox
        Left = 16
        Top = 24
        Width = 137
        Height = 235
        Anchors = [akLeft, akTop, akRight, akBottom]
        ItemHeight = 13
        TabOrder = 0
        OnClick = lstMatricesClick
      end
    end
  end
  object Panel2: TPanel
    Left = 188
    Top = 0
    Width = 397
    Height = 308
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 405
    ExplicitHeight = 292
    object Splitter2: TSplitter
      Left = 1
      Top = 121
      Width = 403
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object Splitter3: TSplitter
      Left = 1
      Top = 244
      Width = 403
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object grdM1: TStringGrid
      Left = 1
      Top = 1
      Width = 403
      Height = 120
      Align = alTop
      ColCount = 3
      DefaultColWidth = 40
      DefaultRowHeight = 21
      FixedCols = 0
      RowCount = 3
      FixedRows = 0
      TabOrder = 0
    end
    object StringGrid2: TStringGrid
      Left = 1
      Top = 124
      Width = 403
      Height = 120
      Align = alTop
      ColCount = 3
      DefaultColWidth = 40
      DefaultRowHeight = 21
      FixedCols = 0
      RowCount = 3
      FixedRows = 0
      TabOrder = 1
    end
    object StringGrid3: TStringGrid
      Left = 1
      Top = 247
      Width = 403
      Height = 44
      Align = alClient
      ColCount = 3
      DefaultColWidth = 40
      DefaultRowHeight = 21
      FixedCols = 0
      RowCount = 3
      FixedRows = 0
      TabOrder = 2
    end
  end
  object mnuMatrices: TMainMenu
    Images = frmMain.imlMain
    Left = 264
    Top = 192
    object Matrices1: TMenuItem
      Caption = 'Matrices'
      GroupIndex = 1
      object Nueva1: TMenuItem
        Caption = 'Nueva'
        OnClick = Nueva1Click
      end
    end
  end
  object alsMatrices: TActionList
    Images = frmMain.imlMain
    Left = 296
    Top = 192
  end
end
