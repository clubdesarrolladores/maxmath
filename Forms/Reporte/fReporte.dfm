object frmReporte: TfrmReporte
  Left = 291
  Top = 250
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Reporte'
  ClientHeight = 267
  ClientWidth = 213
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefaultSizeOnly
  PixelsPerInch = 96
  TextHeight = 13
  object shpHoja: TShape
    Left = 0
    Top = 0
    Width = 213
    Height = 225
    Cursor = 1
  end
  object Bevel1: TBevel
    Left = 4
    Top = 228
    Width = 205
    Height = 9
    Cursor = 1
    Shape = bsTopLine
  end
  object lblConfFx: TLabel
    Left = 4
    Top = 8
    Width = 26
    Height = 13
    Cursor = 1
    Caption = 'F(x) ='
    Transparent = True
  end
  object lblConfIntervaloFx: TLabel
    Left = 16
    Top = 24
    Width = 70
    Height = 13
    Cursor = 1
    Caption = 'Intervalo F(x) ='
    Transparent = True
  end
  object lblConfGx: TLabel
    Left = 4
    Top = 44
    Width = 28
    Height = 13
    Cursor = 1
    Caption = 'G(x) ='
    Transparent = True
  end
  object lblConfIntervaloGx: TLabel
    Left = 16
    Top = 60
    Width = 72
    Height = 13
    Cursor = 1
    Caption = 'Intervalo G(x) ='
    Transparent = True
  end
  object lblIngresoDirecto: TLabel
    Left = 4
    Top = 80
    Width = 147
    Height = 13
    Cursor = 1
    Caption = 'Intervalo (a, b) (Ingreso directo)'
    Enabled = False
    Transparent = True
  end
  object lblConfa: TLabel
    Left = 16
    Top = 96
    Width = 15
    Height = 13
    Cursor = 1
    Caption = 'a ='
    Enabled = False
    Transparent = True
  end
  object lblConfb: TLabel
    Left = 108
    Top = 96
    Width = 15
    Height = 13
    Cursor = 1
    Caption = 'b ='
    Enabled = False
    Transparent = True
  end
  object lblNombreFx: TLabel
    Left = 36
    Top = 8
    Width = 173
    Height = 13
    Cursor = 1
    AutoSize = False
    Caption = 'Error!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblNombreGx: TLabel
    Left = 36
    Top = 44
    Width = 173
    Height = 13
    Cursor = 1
    AutoSize = False
    Caption = 'Error!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblIntFx: TLabel
    Left = 92
    Top = 24
    Width = 117
    Height = 13
    Cursor = 1
    AutoSize = False
    Caption = 'Error!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblIntGx: TLabel
    Left = 92
    Top = 60
    Width = 117
    Height = 13
    Cursor = 1
    AutoSize = False
    Caption = 'Error!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblVala: TLabel
    Left = 36
    Top = 96
    Width = 65
    Height = 13
    Cursor = 1
    AutoSize = False
    Caption = 'Error!'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblValb: TLabel
    Left = 131
    Top = 96
    Width = 65
    Height = 13
    Cursor = 1
    AutoSize = False
    Caption = 'Error!'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape2: TShape
    Left = 8
    Top = 124
    Width = 197
    Height = 1
    Cursor = 1
  end
  object lblLimSup: TLabel
    Left = 4
    Top = 136
    Width = 76
    Height = 13
    Cursor = 1
    Caption = 'Limite superior ='
    Transparent = True
  end
  object lblLimInf: TLabel
    Left = 4
    Top = 152
    Width = 70
    Height = 13
    Cursor = 1
    Caption = 'Limite inferior ='
    Transparent = True
  end
  object lblLimIzq: TLabel
    Left = 4
    Top = 168
    Width = 83
    Height = 13
    Cursor = 1
    Caption = 'L'#237'mite izquierdo ='
    Transparent = True
  end
  object lblLimDer: TLabel
    Left = 4
    Top = 184
    Width = 80
    Height = 13
    Cursor = 1
    Caption = 'L'#237'mite derecho ='
    Transparent = True
  end
  object lblSimple: TLabel
    Left = 4
    Top = 200
    Width = 84
    Height = 13
    Cursor = 1
    Caption = 'Margen de error ='
    Transparent = True
  end
  object lblValLimSup: TLabel
    Left = 92
    Top = 136
    Width = 117
    Height = 13
    Cursor = 1
    AutoSize = False
    Caption = 'Error!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblValLimInf: TLabel
    Left = 92
    Top = 152
    Width = 117
    Height = 13
    Cursor = 1
    AutoSize = False
    Caption = 'Error!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblValLimIzq: TLabel
    Left = 92
    Top = 168
    Width = 117
    Height = 13
    Cursor = 1
    AutoSize = False
    Caption = 'Error!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblValLimDer: TLabel
    Left = 92
    Top = 184
    Width = 117
    Height = 13
    Cursor = 1
    AutoSize = False
    Caption = 'Error!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblValSimple: TLabel
    Left = 92
    Top = 200
    Width = 117
    Height = 13
    Cursor = 1
    AutoSize = False
    Caption = 'Error!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblError: TLabel
    Left = 4
    Top = 236
    Width = 117
    Height = 29
    Cursor = 1
    AutoSize = False
    Caption = 'Todo est'#225' en orden, puede realizar el c'#225'lculo'
    WordWrap = True
  end
  object btnCerrar: TButton
    Left = 128
    Top = 236
    Width = 75
    Height = 25
    Cursor = 1
    Cancel = True
    Caption = 'Cerrar'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
end
