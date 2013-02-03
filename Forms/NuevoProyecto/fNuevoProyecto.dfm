object frmNuevoProyecto: TfrmNuevoProyecto
  Left = 364
  Top = 227
  BorderStyle = bsDialog
  Caption = 'Nuevo proyecto de MaxMath'
  ClientHeight = 264
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnCancel: TButton
    Left = 208
    Top = 232
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 217
    Caption = 'Tipo de proyecto'
    TabOrder = 1
    object lstProjets: TListView
      Left = 16
      Top = 24
      Width = 250
      Height = 137
      Columns = <
        item
        end
        item
        end>
      HotTrackStyles = [htUnderlineHot]
      LargeImages = imgProjectsLarge
      ReadOnly = True
      SmallImages = imgProjectsSmall
      StateImages = imgProjectsStates
      TabOrder = 0
      OnDblClick = lstProjetsDblClick
      OnSelectItem = lstProjetsSelectItem
    end
    object pnlInfo: TPanel
      Left = 16
      Top = 168
      Width = 249
      Height = 41
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      object lblInfo: TLabel
        Left = 8
        Top = 8
        Width = 233
        Height = 25
        AutoSize = False
        WordWrap = True
      end
    end
  end
  object imgProjectsSmall: TImageList
    Left = 16
    Top = 232
  end
  object imgProjectsStates: TImageList
    Left = 48
    Top = 232
  end
  object imgProjectsLarge: TImageList
    Height = 32
    Width = 32
    Left = 80
    Top = 232
  end
end
