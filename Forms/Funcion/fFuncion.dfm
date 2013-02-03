object frmFuncion: TfrmFuncion
  Left = 291
  Top = 144
  Cursor = 1
  BorderStyle = bsDialog
  Caption = 'Funci'#243'n'
  ClientHeight = 355
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 8
    Top = 287
    Width = 345
    Height = 31
  end
  object pntIntervalos: TPaintBox
    Left = 9
    Top = 288
    Width = 344
    Height = 29
    Cursor = 1
    OnPaint = pntIntervalosPaint
  end
  object Label5: TLabel
    Left = 8
    Top = 272
    Width = 296
    Height = 13
    Cursor = 1
    Caption = 'Estimativo del espacio ocupado por los intervalos de la funci'#243'n'
  end
  object Label1: TLabel
    Left = 8
    Top = 330
    Width = 14
    Height = 13
    Caption = 'x ='
  end
  object ComboBoxEx1: TComboBoxEx
    Left = 144
    Top = 0
    Width = 145
    Height = 22
    ItemsEx.CaseSensitive = False
    ItemsEx.SortType = stNone
    ItemsEx = <
      item
        ImageIndex = 0
        OverlayImageIndex = 0
        SelectedImageIndex = 0
      end
      item
        ImageIndex = 1
        OverlayImageIndex = 1
        SelectedImageIndex = 1
      end
      item
        ImageIndex = 2
        OverlayImageIndex = 2
        SelectedImageIndex = 2
      end>
    Style = csExDropDownList
    StyleEx = []
    ItemHeight = 16
    TabOrder = 0
    Visible = False
    Images = ilsGrosor
    DropDownCount = 8
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 48
    Width = 137
    Height = 217
    Caption = 'Intervalos de funci'#243'n'
    TabOrder = 1
    object lstIntervalos: TListBox
      Left = 8
      Top = 16
      Width = 121
      Height = 193
      ItemHeight = 13
      Items.Strings = (
        '[Nuevo Intervalo]')
      TabOrder = 0
      OnClick = lstIntervalosClick
    end
  end
  object btnAceptar: TButton
    Left = 196
    Top = 324
    Width = 75
    Height = 25
    Cursor = 1
    Caption = 'Aceptar'
    Default = True
    TabOrder = 2
    OnClick = btnAceptarClick
  end
  object edtValue: TEdit
    Left = 32
    Top = 326
    Width = 65
    Height = 21
    Cursor = 3
    TabOrder = 3
  end
  object btnEvaluar: TButton
    Left = 100
    Top = 326
    Width = 21
    Height = 21
    Cursor = 1
    Caption = '='
    TabOrder = 4
    OnClick = btnEvaluarClick
  end
  object btnCancelar: TButton
    Left = 276
    Top = 324
    Width = 75
    Height = 25
    Cursor = 1
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 5
  end
  object txtNombre: TLabeledEdit
    Left = 8
    Top = 20
    Width = 345
    Height = 21
    Cursor = 3
    EditLabel.Width = 102
    EditLabel.Height = 13
    EditLabel.Caption = 'Nombre - Descripci'#243'n'
    LabelPosition = lpAbove
    LabelSpacing = 3
    MaxLength = 116
    TabOrder = 6
    OnEnter = InFocus
    OnExit = OutFocus
  end
  object GroupBox2: TGroupBox
    Left = 152
    Top = 48
    Width = 201
    Height = 217
    Caption = 'Intervalo'
    TabOrder = 7
    object Label2: TLabel
      Left = 9
      Top = 136
      Width = 56
      Height = 13
      Cursor = 1
      Caption = 'Tipo gr'#225'fico'
    end
    object Label3: TLabel
      Left = 9
      Top = 96
      Width = 24
      Height = 13
      Cursor = 1
      Caption = 'Color'
    end
    object Label4: TLabel
      Left = 106
      Top = 136
      Width = 31
      Height = 13
      Cursor = 1
      Caption = 'Grosor'
    end
    object txtExpresion: TLabeledEdit
      Left = 8
      Top = 32
      Width = 185
      Height = 21
      Cursor = 3
      CharCase = ecLowerCase
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.Caption = 'Expresi'#243'n'
      LabelPosition = lpAbove
      LabelSpacing = 3
      MaxLength = 1001
      PopupMenu = mnuFunciones
      TabOrder = 0
      OnEnter = InFocus
      OnExit = OutFocus
    end
    object txtMin: TLabeledEdit
      Left = 8
      Top = 72
      Width = 89
      Height = 21
      Cursor = 3
      EditLabel.Width = 35
      EditLabel.Height = 13
      EditLabel.Caption = 'M'#237'nimo'
      LabelPosition = lpAbove
      LabelSpacing = 3
      TabOrder = 1
      OnEnter = InFocus
      OnExit = OutFocus
    end
    object txtMax: TLabeledEdit
      Left = 105
      Top = 72
      Width = 88
      Height = 21
      Cursor = 3
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.Caption = 'M'#225'ximo'
      LabelPosition = lpAbove
      LabelSpacing = 3
      TabOrder = 2
      OnEnter = InFocus
      OnExit = OutFocus
    end
    object cboTipoGrafico: TComboBox
      Left = 8
      Top = 152
      Width = 89
      Height = 21
      Cursor = 1
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Continuo'
      Items.Strings = (
        'Continuo'
        'Discreto')
    end
    object clrColor: TColorBox
      Left = 8
      Top = 112
      Width = 185
      Height = 22
      Cursor = 1
      Selected = 4760831
      Style = [cbStandardColors, cbCustomColor]
      ItemHeight = 16
      TabOrder = 4
    end
    object cboGrosor: TComboBox
      Left = 104
      Top = 152
      Width = 89
      Height = 22
      Cursor = 1
      Style = csOwnerDrawFixed
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 5
      OnDrawItem = cboGrosorDrawItem
      Items.Strings = (
        ''
        ''
        '')
    end
    object btnAplicar: TButton
      Left = 72
      Top = 184
      Width = 60
      Height = 25
      Caption = 'Aplicar'
      TabOrder = 6
      OnClick = btnAplicarClick
    end
    object btnEliminar: TButton
      Left = 133
      Top = 184
      Width = 60
      Height = 25
      Caption = 'Eliminar...'
      TabOrder = 7
      OnClick = btnEliminarClick
    end
  end
  object ilsGrosor: TImageList
    Width = 50
    Left = 92
    Top = 180
    Bitmap = {
      494C010103000400040032001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C80000001000000001002000000000000032
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000107B1000BDFFBD00FF2900000000000018524200BDFF
      BD00DE394200BDFFBD00219C4A0010000000E7CE9C00C6FFBD00219C4A001000
      00004252390029298400E7E72100002984009CDE9C00C6FFBD00000000000000
      0000FFFFFF00C6FFBD00E794390029298400425239002929840021CEFF00BD52
      00000000000000000000FFFFFF00FFFFFF00A5C6FF00DEFFBD0000089400BDFF
      BD00FFFFFF00FFFFFF0063FFFF00BD5200002918000000000000420000000000
      00009400000000000000214A3900E78C42000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084949400E7FFBD00FF00BD00BDFFBD00000000000000
      0000080000000000000084B58C001829C60042CEFF00BD520000D694AD00D6FF
      BD0052EF210000298400E7E72100002984000000000000000000DE394200BDFF
      BD0042000000000000007B316B00BDFFBD00009C9400E7FFBD00107B1000BDFF
      BD00FF290000000000007B429C00C6FFBD00E794390029298400420000000010
      00004252390029298400E79439002929840084B58C001829C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000052EF210000298400DE394200BDFFBD00420000000000
      00007B316B00BDFFBD00009C9400E7FFBD0084CEFF00BD520000CE396B00BDFF
      BD00425239002929840084C61000C6FFBD0052EF210000298400E7E721000029
      8400000000000000000084B58C001829C6000000000000000000F7EF310073FF
      7B000842CE003908000063C6FF00BD52000008000000000000004239CE003908
      00009CCE310073FF7B004239CE003908000063C6FF00BD5200000021D600634A
      84006321D600634A84007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B63310000FFFF006329000084840000008418001000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF000000000008000000FFDE1000F7638C0042630000BDFF1000000000000000
      0000FFFFFF00FFFFFF0000000000000000007B63310000FFFF00632900008484
      0000107B1000BDFFBD00846BFF00BD5200000052F700FF298400E7A5C6004239
      840084B58C001829C600846BFF00BD520000F718A500BDFFBD00BD63B500BDFF
      BD00000000004239840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000210000000000000031DE007BFF7B00C629FF00BD52
      00009431DE007BFF7B00E7F7FF00BD520000A5C6FF00DEFFBD0084429400BDFF
      BD00FFFFFF00FFFFFF002131FF00BD520000004A4A00BDFFBD00000000000000
      000084FFBD0039080000427BCE0039080000211829005A0800000039FF00BD52
      0000D673210073FF7B00427BCE00390800006373210073FF7B00FF213900214A
      8C00FFFFFF00FFFFFF00C639FF00BD52000063EFB500BDFFBD00DE394200BDFF
      BD0084949400E7FFBD0039F7B500BDFFBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000031DE007BFF7B0084FFBD003908
      00009431DE007BFF7B004263210073FF7B0084FFBD00390800004263210073FF
      7B000000FF00BD520000635A39002929840084FFBD00390800004A0800000000
      00000008FF00BD520000A5EFFF00BD52000084088400B5FF7B00000000000000
      000094FF4A0073FF7B0084088400B5FF7B0042EF390073FF7B00C631FF00BD52
      0000211829005A080000E7A5FF00BD5200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C8000000100000000100010000000000C00100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFC00000000000
      00000000000003FFFFFFFFFFFF00000000000000000000000000000000000000
      000003FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFF0000000000003FF
      FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      000000000000}
  end
  object mnuFunciones: TPopupMenu
    Left = 40
    Top = 160
    object Trigonomtricas1: TMenuItem
      Caption = 'Trigonom'#233'tricas'
      object Seno1: TMenuItem
        Caption = 'Seno'
        OnClick = InsertarFuncion
      end
      object Coseno1: TMenuItem
        Tag = 1
        Caption = 'Coseno'
        OnClick = InsertarFuncion
      end
      object Tangente1: TMenuItem
        Tag = 2
        Caption = 'Tangente'
        OnClick = InsertarFuncion
      end
    end
    object Trigonomtricasinversas1: TMenuItem
      Caption = 'Trigonom'#233'tricas inversas'
      object Arcoseno1: TMenuItem
        Tag = 3
        Caption = 'Arcoseno'
        OnClick = InsertarFuncion
      end
      object Arcocoseno1: TMenuItem
        Tag = 4
        Caption = 'Arcocoseno'
        OnClick = InsertarFuncion
      end
      object Arcotangente1: TMenuItem
        Tag = 5
        Caption = 'Arcotangente'
        OnClick = InsertarFuncion
      end
    end
    object Trigonomtricashiperblicas1: TMenuItem
      Caption = 'Trigonom'#233'tricas hiperb'#243'licas'
      object Senohiperblico1: TMenuItem
        Tag = 6
        Caption = 'Seno hiperb'#243'lico'
        OnClick = InsertarFuncion
      end
      object Cosenohiperblico1: TMenuItem
        Tag = 7
        Caption = 'Coseno hiperb'#243'lico'
        OnClick = InsertarFuncion
      end
      object Tangentehiperblica1: TMenuItem
        Tag = 8
        Caption = 'Tangente hiperb'#243'lica'
        OnClick = InsertarFuncion
      end
    end
    object Logartmicas1: TMenuItem
      Caption = 'Logar'#237'tmicas'
      object Logartmonatural1: TMenuItem
        Tag = 12
        Caption = 'Logar'#237'tmo natural'
        OnClick = InsertarFuncion
      end
    end
    object Exponenciales1: TMenuItem
      Caption = 'Exponenciales'
      object Exponencialbasee1: TMenuItem
        Tag = 9
        Caption = 'Exponencial base e'
        OnClick = InsertarFuncion
      end
    end
    object Otras1: TMenuItem
      Caption = 'Otras'
      object Raizcuadrada1: TMenuItem
        Tag = 11
        Caption = 'Raiz cuadrada'
        OnClick = InsertarFuncion
      end
      object Valorabsoluto1: TMenuItem
        Tag = 10
        Caption = 'Valor absoluto'
        OnClick = InsertarFuncion
      end
    end
  end
end
