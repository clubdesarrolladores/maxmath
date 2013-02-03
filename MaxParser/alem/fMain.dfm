object Form1: TForm1
  Left = 192
  Top = 114
  Width = 302
  Height = 266
  Caption = 'ALEM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 185
    Caption = 'Analizador l'#233'xico de expresiones matem'#225'ticas v0.0.1'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 190
      Height = 65
      Caption = 
        '2006 (c) DevStudios Software'#13#10'* Datos aceptados:'#13#10'Numeros: [0-9.' +
        ']'#13#10'Operadores: [+-*/]'#13#10'Ingrese una expresi'#243'n en notacion infija:'
    end
    object Edit1: TEdit
      Left = 16
      Top = 96
      Width = 249
      Height = 21
      TabOrder = 0
      Text = '-4*(-5-2)/(-1*x--3)=-1/-2'
    end
    object Panel1: TPanel
      Left = 16
      Top = 120
      Width = 249
      Height = 57
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
    end
  end
  object Button1: TButton
    Left = 208
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Infija/Posfija'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 112
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 3
    OnClick = Button3Click
  end
end
