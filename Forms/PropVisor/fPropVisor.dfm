object frmPropVisor: TfrmPropVisor
  Left = 343
  Top = 215
  Cursor = 1
  BorderStyle = bsDialog
  Caption = 'Caracteristicas del visor'
  ClientHeight = 380
  ClientWidth = 403
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 4
    Top = 348
    Width = 397
    Height = 25
    Shape = bsTopLine
  end
  object pnlCaracteristicas: TPanel
    Left = 4
    Top = 4
    Width = 397
    Height = 269
    Cursor = 1
    TabOrder = 0
    object pgcCaracteristicas: TPageControl
      Left = 4
      Top = 4
      Width = 389
      Height = 261
      Cursor = 1
      ActivePage = TabSheet1
      TabIndex = 3
      TabOrder = 0
      object shtEjes: TTabSheet
        Cursor = 1
        Caption = 'Ejes'
        object bvl1: TBevel
          Left = 4
          Top = 168
          Width = 373
          Height = 61
          Cursor = 1
          Shape = bsFrame
        end
        object lblColorFondo: TLabel
          Left = 96
          Top = 203
          Width = 69
          Height = 13
          Cursor = 1
          Caption = 'Color de fondo'
        end
        object grpEjeX: TGroupBox
          Left = 4
          Top = 4
          Width = 185
          Height = 161
          Cursor = 1
          TabOrder = 1
          object lblDirEjeX: TLabel
            Left = 8
            Top = 48
            Width = 45
            Height = 13
            Cursor = 1
            Caption = 'Direcci'#243'n'
          end
          object lblEstiloX: TLabel
            Left = 8
            Top = 112
            Width = 25
            Height = 13
            Cursor = 1
            Caption = 'Estilo'
          end
          object lblGrosorX: TLabel
            Left = 8
            Top = 136
            Width = 31
            Height = 13
            Cursor = 1
            Caption = 'Grosor'
          end
          object lblColorX: TLabel
            Left = 8
            Top = 88
            Width = 24
            Height = 13
            Cursor = 1
            Caption = 'Color'
          end
          object lblNameX: TLabel
            Left = 8
            Top = 24
            Width = 37
            Height = 13
            Cursor = 1
            Caption = 'Nombre'
          end
          object btnFontNameAxeX: TSpeedButton
            Left = 152
            Top = 20
            Width = 25
            Height = 21
            Cursor = 1
            Flat = True
            Glyph.Data = {
              FE020000424DFE02000000000000FE0100002800000010000000100000000100
              08000000000000010000120B0000120B0000720000007200000000000000FFFF
              FF00FF00FF008A6E7E00AE727400AD727400A66E700090646600FF9A9B00F795
              9700F5949500FF9B9C00D9858700FF9D9E00FD9C9D00FF9E9F00C67C7D00B975
              76009F686900B97A7B0095666700FF9D9D00E18A8A00E08A8A00DD888800BE76
              7500CC7F7F00B5717100BA767600A4686800B9767600B4737300B5747400B373
              7300B0717100B0727200AF717100AD707000A96E6E009764640093626200DA5E
              5900EA868200B37574008D605F0096686700D75E5900FE960100EF9F1400BD92
              3400CC9F3800ABA14D009B944A0002F6F10002F1F20015E2FB0013D7F40013CF
              EE0005B3DC000CA4C90014ADD20021B6DE001B90AF00228FB5003EA9CF00007F
              B4000184B900067DAD0023A6DD00007BAF000071A6000D7BAE001694CC0027A9
              E5002FA6DB00067AB2000978AF000D7EB600167BAE0038AAE50041B1EA005FA6
              C900117FB900147DB400147AB2001478AE001579B200157BB2001980B7001E88
              C000238CC40038A2DA0045B5F2002F78A20047AEE50050BFFA004BAEE600347C
              AB005DA4D50060B0EF006B9BC20050ADFE006585A2006A8EB0003788F5003883
              FB001E5DF90051689E00747F9B007682A2008994B600909AB9000F42FA00979A
              B300020202020202020202020202020202020202020202024D4D535756540202
              02020202020255616C674A443C3B42410202020202025B6F292E6D3935363A3E
              4502020202526563716E6237383D332F34430202025D6A70685F5C504F403230
              314B2721192D6B690323131D6649483F474602200D114E5E642A152B514C0202
              02020202220A061407170804605A020202020202021F18280217080559580202
              020202020202211A2C160822020202020202020202020221100C0B1B02020202
              020202020202020225090F1C02020202020202020202020202240E1E02020202
              0202020202020202020226120202020202020202020202020202020202020202
              0202}
            OnClick = btnFontNameAxeXClick
          end
          object bvl2: TBevel
            Left = 8
            Top = 72
            Width = 169
            Height = 5
            Cursor = 1
            Shape = bsTopLine
          end
          object cboDirEjeX: TComboBox
            Left = 64
            Top = 44
            Width = 113
            Height = 21
            Cursor = 1
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 1
            Text = 'Izquierda a derecha'
            OnChange = cboDirEjeXChange
            Items.Strings = (
              'Izquierda a derecha'
              'Derecha a izquierda')
          end
          object cbxColorEjeX: TColorBox
            Left = 64
            Top = 84
            Width = 113
            Height = 22
            Cursor = 1
            Style = [cbStandardColors, cbExtendedColors, cbCustomColor]
            ItemHeight = 16
            TabOrder = 2
            OnChange = cbxColorEjeXChange
          end
          object txtEjeXNombre: TEdit
            Left = 64
            Top = 20
            Width = 85
            Height = 21
            Cursor = 3
            TabOrder = 0
            OnChange = txtEjeXNombreChange
          end
          object cboEstiloX: TComboBox
            Left = 64
            Top = 108
            Width = 113
            Height = 20
            Cursor = 1
            Style = csOwnerDrawFixed
            ItemHeight = 14
            ItemIndex = 0
            TabOrder = 3
            OnChange = cboEstiloXChange
            OnDrawItem = cboEstiloDrawItems
            Items.Strings = (
              ''
              ''
              ''
              '')
          end
          object edtGrosorX: TCSpinEdit
            Left = 64
            Top = 132
            Width = 113
            Height = 22
            Cursor = 3
            MaxValue = 5
            MinValue = 1
            TabOrder = 4
            Value = 1
            OnChange = edtGrosorXChange
          end
        end
        object grpEjey: TGroupBox
          Left = 192
          Top = 4
          Width = 185
          Height = 161
          Cursor = 1
          TabOrder = 3
          object lblDirEjeY: TLabel
            Left = 8
            Top = 48
            Width = 45
            Height = 13
            Cursor = 1
            Caption = 'Direcci'#243'n'
          end
          object lblEstiloY: TLabel
            Left = 8
            Top = 112
            Width = 25
            Height = 13
            Cursor = 1
            Caption = 'Estilo'
          end
          object lblGrosorY: TLabel
            Left = 8
            Top = 136
            Width = 31
            Height = 13
            Cursor = 1
            Caption = 'Grosor'
          end
          object lblColorY: TLabel
            Left = 8
            Top = 88
            Width = 24
            Height = 13
            Cursor = 1
            Caption = 'Color'
          end
          object lblNameY: TLabel
            Left = 8
            Top = 24
            Width = 37
            Height = 13
            Cursor = 1
            Caption = 'Nombre'
          end
          object btnFontNameAxeY: TSpeedButton
            Left = 148
            Top = 20
            Width = 25
            Height = 21
            Cursor = 1
            Flat = True
            Glyph.Data = {
              FE020000424DFE02000000000000FE0100002800000010000000100000000100
              08000000000000010000120B0000120B0000720000007200000000000000FFFF
              FF00FF00FF008A6E7E00AE727400AD727400A66E700090646600FF9A9B00F795
              9700F5949500FF9B9C00D9858700FF9D9E00FD9C9D00FF9E9F00C67C7D00B975
              76009F686900B97A7B0095666700FF9D9D00E18A8A00E08A8A00DD888800BE76
              7500CC7F7F00B5717100BA767600A4686800B9767600B4737300B5747400B373
              7300B0717100B0727200AF717100AD707000A96E6E009764640093626200DA5E
              5900EA868200B37574008D605F0096686700D75E5900FE960100EF9F1400BD92
              3400CC9F3800ABA14D009B944A0002F6F10002F1F20015E2FB0013D7F40013CF
              EE0005B3DC000CA4C90014ADD20021B6DE001B90AF00228FB5003EA9CF00007F
              B4000184B900067DAD0023A6DD00007BAF000071A6000D7BAE001694CC0027A9
              E5002FA6DB00067AB2000978AF000D7EB600167BAE0038AAE50041B1EA005FA6
              C900117FB900147DB400147AB2001478AE001579B200157BB2001980B7001E88
              C000238CC40038A2DA0045B5F2002F78A20047AEE50050BFFA004BAEE600347C
              AB005DA4D50060B0EF006B9BC20050ADFE006585A2006A8EB0003788F5003883
              FB001E5DF90051689E00747F9B007682A2008994B600909AB9000F42FA00979A
              B300020202020202020202020202020202020202020202024D4D535756540202
              02020202020255616C674A443C3B42410202020202025B6F292E6D3935363A3E
              4502020202526563716E6237383D332F34430202025D6A70685F5C504F403230
              314B2721192D6B690323131D6649483F474602200D114E5E642A152B514C0202
              02020202220A061407170804605A020202020202021F18280217080559580202
              020202020202211A2C160822020202020202020202020221100C0B1B02020202
              020202020202020225090F1C02020202020202020202020202240E1E02020202
              0202020202020202020226120202020202020202020202020202020202020202
              0202}
            OnClick = btnFontNameAxeYClick
          end
          object bvl3: TBevel
            Left = 8
            Top = 72
            Width = 169
            Height = 5
            Cursor = 1
            Shape = bsTopLine
          end
          object cboDirEjeY: TComboBox
            Left = 60
            Top = 44
            Width = 113
            Height = 21
            Cursor = 1
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 1
            Text = 'Abajo hacia arriba'
            OnChange = cboDirEjeYChange
            Items.Strings = (
              'Abajo hacia arriba'
              'Arriba hacia abajo')
          end
          object cbxColorEjeY: TColorBox
            Left = 60
            Top = 84
            Width = 113
            Height = 22
            Cursor = 1
            Style = [cbStandardColors, cbExtendedColors, cbCustomColor]
            ItemHeight = 16
            TabOrder = 2
            OnChange = cbxColorEjeYChange
          end
          object txtEjeYNombre: TEdit
            Left = 60
            Top = 20
            Width = 85
            Height = 21
            Cursor = 3
            TabOrder = 0
            OnChange = txtEjeYNombreChange
          end
          object cboEstiloY: TComboBox
            Left = 60
            Top = 108
            Width = 113
            Height = 20
            Cursor = 1
            Style = csOwnerDrawVariable
            ItemHeight = 14
            ItemIndex = 0
            TabOrder = 3
            OnChange = cboEstiloYChange
            OnDrawItem = cboEstiloDrawItems
            Items.Strings = (
              ''
              ''
              ''
              '')
          end
          object edtGrosorY: TCSpinEdit
            Left = 60
            Top = 132
            Width = 113
            Height = 22
            Cursor = 3
            MaxValue = 5
            MinValue = 1
            TabOrder = 4
            Value = 1
            OnChange = edtGrosorYChange
          end
        end
        object chkEjey: TCheckBox
          Left = 200
          Top = 0
          Width = 81
          Height = 17
          Cursor = 1
          Caption = 'Mostrar eje y'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = chkEjeyClick
        end
        object chkEjex: TCheckBox
          Left = 12
          Top = 0
          Width = 81
          Height = 17
          Cursor = 1
          Caption = 'Mostrar eje x'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = chkEjexClick
        end
        object chkMostrarPuntero: TCheckBox
          Left = 114
          Top = 176
          Width = 153
          Height = 17
          Cursor = 1
          Caption = 'Mostrar punteros de los ejes'
          TabOrder = 4
          OnClick = chkMostrarPunteroClick
        end
        object cbxFondo: TColorBox
          Left = 176
          Top = 198
          Width = 109
          Height = 22
          Cursor = 1
          Style = [cbStandardColors, cbExtendedColors, cbCustomColor]
          ItemHeight = 16
          TabOrder = 5
          OnChange = cbxFondoChange
        end
      end
      object shtMarcas: TTabSheet
        Cursor = 1
        Caption = 'Etiquetas, marcas y zoom'
        ImageIndex = 1
        object bvl4: TBevel
          Left = 4
          Top = 172
          Width = 373
          Height = 57
          Cursor = 1
          Shape = bsFrame
        end
        object lblZoomX: TLabel
          Left = 103
          Top = 181
          Width = 52
          Height = 13
          Cursor = 1
          Caption = 'Zoom eje x'
        end
        object lblZoomY: TLabel
          Left = 103
          Top = 205
          Width = 52
          Height = 13
          Cursor = 1
          Caption = 'Zoom eje y'
        end
        object grpMarksX: TGroupBox
          Left = 4
          Top = 100
          Width = 185
          Height = 69
          Cursor = 1
          TabOrder = 5
          object lblPasoMarksX: TLabel
            Left = 8
            Top = 24
            Width = 24
            Height = 13
            Cursor = 1
            Caption = 'Paso'
          end
          object lblLongMarksX: TLabel
            Left = 8
            Top = 48
            Width = 41
            Height = 13
            Cursor = 1
            Caption = 'Longitud'
          end
          object edtMarksLongX: TEdit
            Tag = 8
            Left = 64
            Top = 44
            Width = 98
            Height = 21
            Cursor = 3
            TabOrder = 2
            Text = '6'
            OnChange = edtMarksLongXChange
            OnKeyPress = KeyPressInt
          end
          object CSpinButton4: TCSpinButton
            Left = 163
            Top = 21
            Width = 15
            Height = 20
            Cursor = 1
            DownGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00}
            FocusControl = edtMarksStepX
            TabOrder = 1
            UpGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
              00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FF00}
            OnDownClick = DownClickDbl
            OnUpClick = UpClickDbl
          end
          object CSpinButton5: TCSpinButton
            Left = 163
            Top = 45
            Width = 15
            Height = 20
            Cursor = 1
            DownGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00}
            FocusControl = edtMarksLongX
            TabOrder = 3
            UpGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
              00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FF00}
            OnDownClick = DownClickInt
            OnUpClick = UpClickInt
          end
          object edtMarksStepX: TEdit
            Left = 64
            Top = 20
            Width = 98
            Height = 21
            Cursor = 3
            TabOrder = 0
            Text = '1'
            OnChange = edtMarksStepXChange
            OnKeyPress = KeyPressDbl
          end
        end
        object chkMarksX: TCheckBox
          Left = 12
          Top = 100
          Width = 61
          Height = 17
          Cursor = 1
          Caption = 'Marcas'
          TabOrder = 4
          OnClick = chkMarksXClick
        end
        object grpLabelsX: TGroupBox
          Left = 4
          Top = 4
          Width = 185
          Height = 93
          Cursor = 1
          TabOrder = 1
          object lblPasoNumX: TLabel
            Left = 8
            Top = 24
            Width = 24
            Height = 13
            Cursor = 1
            Caption = 'Paso'
          end
          object lblTextNumX: TLabel
            Left = 8
            Top = 48
            Width = 27
            Height = 13
            Cursor = 1
            Caption = 'Texto'
          end
          object btnFontNumX: TSpeedButton
            Left = 100
            Top = 67
            Width = 77
            Height = 22
            Cursor = 1
            Caption = 'Fuente'
            Flat = True
            Glyph.Data = {
              FE020000424DFE02000000000000FE0100002800000010000000100000000100
              08000000000000010000120B0000120B0000720000007200000000000000FFFF
              FF00FF00FF008A6E7E00AE727400AD727400A66E700090646600FF9A9B00F795
              9700F5949500FF9B9C00D9858700FF9D9E00FD9C9D00FF9E9F00C67C7D00B975
              76009F686900B97A7B0095666700FF9D9D00E18A8A00E08A8A00DD888800BE76
              7500CC7F7F00B5717100BA767600A4686800B9767600B4737300B5747400B373
              7300B0717100B0727200AF717100AD707000A96E6E009764640093626200DA5E
              5900EA868200B37574008D605F0096686700D75E5900FE960100EF9F1400BD92
              3400CC9F3800ABA14D009B944A0002F6F10002F1F20015E2FB0013D7F40013CF
              EE0005B3DC000CA4C90014ADD20021B6DE001B90AF00228FB5003EA9CF00007F
              B4000184B900067DAD0023A6DD00007BAF000071A6000D7BAE001694CC0027A9
              E5002FA6DB00067AB2000978AF000D7EB600167BAE0038AAE50041B1EA005FA6
              C900117FB900147DB400147AB2001478AE001579B200157BB2001980B7001E88
              C000238CC40038A2DA0045B5F2002F78A20047AEE50050BFFA004BAEE600347C
              AB005DA4D50060B0EF006B9BC20050ADFE006585A2006A8EB0003788F5003883
              FB001E5DF90051689E00747F9B007682A2008994B600909AB9000F42FA00979A
              B300020202020202020202020202020202020202020202024D4D535756540202
              02020202020255616C674A443C3B42410202020202025B6F292E6D3935363A3E
              4502020202526563716E6237383D332F34430202025D6A70685F5C504F403230
              314B2721192D6B690323131D6649483F474602200D114E5E642A152B514C0202
              02020202220A061407170804605A020202020202021F18280217080559580202
              020202020202211A2C160822020202020202020202020221100C0B1B02020202
              020202020202020225090F1C02020202020202020202020202240E1E02020202
              0202020202020202020226120202020202020202020202020202020202020202
              0202}
            OnClick = btnFontNumXClick
          end
          object edtAddTextX: TEdit
            Left = 64
            Top = 44
            Width = 113
            Height = 21
            Cursor = 3
            TabOrder = 2
            OnChange = edtAddTextXChange
          end
          object chkSobreX: TCheckBox
            Left = 8
            Top = 70
            Width = 85
            Height = 17
            Cursor = 1
            Caption = 'Sobre el eje x'
            TabOrder = 3
            OnClick = chkSobreXClick
          end
          object edtLabelStepX: TEdit
            Left = 64
            Top = 20
            Width = 98
            Height = 21
            Cursor = 3
            TabOrder = 0
            Text = '1'
            OnChange = edtLabelStepXChange
            OnKeyPress = KeyPressDbl
          end
          object CSpinButton2: TCSpinButton
            Left = 163
            Top = 21
            Width = 15
            Height = 20
            Cursor = 1
            DownGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00}
            FocusControl = edtLabelStepX
            TabOrder = 1
            UpGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
              00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FF00}
            OnDownClick = DownClickDbl
            OnUpClick = UpClickDbl
          end
        end
        object chkNumX: TCheckBox
          Left = 12
          Top = 0
          Width = 105
          Height = 17
          Cursor = 1
          Caption = 'Numeraci'#243'n eje x'
          TabOrder = 0
          OnClick = chkNumXClick
        end
        object grpLabelsY: TGroupBox
          Left = 192
          Top = 4
          Width = 185
          Height = 93
          Cursor = 1
          TabOrder = 3
          object lblPasoNumY: TLabel
            Left = 8
            Top = 24
            Width = 24
            Height = 13
            Cursor = 1
            Caption = 'Paso'
          end
          object lblTextNumY: TLabel
            Left = 8
            Top = 48
            Width = 27
            Height = 13
            Cursor = 1
            Caption = 'Texto'
          end
          object btnFontNumY: TSpeedButton
            Left = 100
            Top = 67
            Width = 77
            Height = 22
            Cursor = 1
            Caption = 'Fuente'
            Flat = True
            Glyph.Data = {
              FE020000424DFE02000000000000FE0100002800000010000000100000000100
              08000000000000010000120B0000120B0000720000007200000000000000FFFF
              FF00FF00FF008A6E7E00AE727400AD727400A66E700090646600FF9A9B00F795
              9700F5949500FF9B9C00D9858700FF9D9E00FD9C9D00FF9E9F00C67C7D00B975
              76009F686900B97A7B0095666700FF9D9D00E18A8A00E08A8A00DD888800BE76
              7500CC7F7F00B5717100BA767600A4686800B9767600B4737300B5747400B373
              7300B0717100B0727200AF717100AD707000A96E6E009764640093626200DA5E
              5900EA868200B37574008D605F0096686700D75E5900FE960100EF9F1400BD92
              3400CC9F3800ABA14D009B944A0002F6F10002F1F20015E2FB0013D7F40013CF
              EE0005B3DC000CA4C90014ADD20021B6DE001B90AF00228FB5003EA9CF00007F
              B4000184B900067DAD0023A6DD00007BAF000071A6000D7BAE001694CC0027A9
              E5002FA6DB00067AB2000978AF000D7EB600167BAE0038AAE50041B1EA005FA6
              C900117FB900147DB400147AB2001478AE001579B200157BB2001980B7001E88
              C000238CC40038A2DA0045B5F2002F78A20047AEE50050BFFA004BAEE600347C
              AB005DA4D50060B0EF006B9BC20050ADFE006585A2006A8EB0003788F5003883
              FB001E5DF90051689E00747F9B007682A2008994B600909AB9000F42FA00979A
              B300020202020202020202020202020202020202020202024D4D535756540202
              02020202020255616C674A443C3B42410202020202025B6F292E6D3935363A3E
              4502020202526563716E6237383D332F34430202025D6A70685F5C504F403230
              314B2721192D6B690323131D6649483F474602200D114E5E642A152B514C0202
              02020202220A061407170804605A020202020202021F18280217080559580202
              020202020202211A2C160822020202020202020202020221100C0B1B02020202
              020202020202020225090F1C02020202020202020202020202240E1E02020202
              0202020202020202020226120202020202020202020202020202020202020202
              0202}
            OnClick = btnFontNumYClick
          end
          object edtAddTextY: TEdit
            Left = 64
            Top = 44
            Width = 113
            Height = 21
            Cursor = 3
            TabOrder = 2
            OnChange = edtAddTextYChange
          end
          object chkDerY: TCheckBox
            Left = 8
            Top = 70
            Width = 85
            Height = 17
            Cursor = 1
            Caption = 'Derecha eje y'
            TabOrder = 3
            OnClick = chkDerYClick
          end
          object edtLabelStepY: TEdit
            Left = 64
            Top = 20
            Width = 98
            Height = 21
            Cursor = 3
            TabOrder = 0
            Text = '1'
            OnChange = edtLabelStepYChange
            OnKeyPress = KeyPressDbl
          end
          object CSpinButton3: TCSpinButton
            Left = 163
            Top = 21
            Width = 15
            Height = 20
            Cursor = 1
            DownGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00}
            FocusControl = edtLabelStepY
            TabOrder = 1
            UpGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
              00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FF00}
            OnDownClick = DownClickDbl
            OnUpClick = UpClickDbl
          end
        end
        object grpMarksY: TGroupBox
          Left = 192
          Top = 100
          Width = 185
          Height = 69
          Cursor = 1
          TabOrder = 7
          object lblPasoMarksY: TLabel
            Left = 8
            Top = 24
            Width = 24
            Height = 13
            Cursor = 1
            Caption = 'Paso'
          end
          object lblLongMarksY: TLabel
            Left = 8
            Top = 48
            Width = 41
            Height = 13
            Cursor = 1
            Caption = 'Longitud'
          end
          object edtMarksStepY: TEdit
            Left = 64
            Top = 20
            Width = 98
            Height = 21
            Cursor = 3
            TabOrder = 0
            Text = '1'
            OnChange = edtMarksStepYChange
            OnKeyPress = KeyPressDbl
          end
          object edtMarksLongY: TEdit
            Tag = 8
            Left = 64
            Top = 44
            Width = 98
            Height = 21
            Cursor = 3
            TabOrder = 2
            Text = '6'
            OnChange = edtMarksLongYChange
          end
          object CSpinButton6: TCSpinButton
            Left = 163
            Top = 21
            Width = 15
            Height = 20
            Cursor = 1
            DownGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00}
            FocusControl = edtMarksStepY
            TabOrder = 1
            UpGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
              00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FF00}
            OnDownClick = DownClickDbl
            OnUpClick = UpClickDbl
          end
          object CSpinButton7: TCSpinButton
            Left = 163
            Top = 45
            Width = 15
            Height = 20
            Cursor = 1
            DownGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00}
            FocusControl = edtMarksLongY
            TabOrder = 3
            UpGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
              00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FF00}
            OnDownClick = DownClickInt
            OnUpClick = UpClickInt
          end
        end
        object chkMarksY: TCheckBox
          Left = 200
          Top = 100
          Width = 61
          Height = 17
          Cursor = 1
          Caption = 'Marcas'
          TabOrder = 6
          OnClick = chkMarksYClick
        end
        object chkNumY: TCheckBox
          Left = 200
          Top = 0
          Width = 105
          Height = 17
          Cursor = 1
          Caption = 'Numeraci'#243'n eje y'
          TabOrder = 2
          OnClick = chkNumYClick
        end
        object edtZoomX: TEdit
          Tag = 1600
          Left = 163
          Top = 178
          Width = 98
          Height = 21
          Cursor = 3
          TabOrder = 8
          Text = '100'
          OnChange = edtZoomXChange
        end
        object edtZoomY: TEdit
          Tag = 1600
          Left = 163
          Top = 202
          Width = 98
          Height = 21
          Cursor = 3
          TabOrder = 10
          Text = '100'
          OnChange = edtZoomYChange
        end
        object CSpinButton8: TCSpinButton
          Left = 262
          Top = 179
          Width = 15
          Height = 20
          Cursor = 1
          DownGlyph.Data = {
            DE000000424DDE00000000000000360000002800000009000000060000000100
            180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
            000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00}
          FocusControl = edtZoomX
          TabOrder = 9
          UpGlyph.Data = {
            DE000000424DDE00000000000000360000002800000009000000060000000100
            180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
            00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
            000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
            FF00}
          OnDownClick = DownClickInt
          OnUpClick = UpClickInt
        end
        object CSpinButton9: TCSpinButton
          Left = 262
          Top = 203
          Width = 15
          Height = 20
          Cursor = 1
          DownGlyph.Data = {
            DE000000424DDE00000000000000360000002800000009000000060000000100
            180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
            000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00}
          FocusControl = edtZoomY
          TabOrder = 11
          UpGlyph.Data = {
            DE000000424DDE00000000000000360000002800000009000000060000000100
            180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
            00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
            000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
            FF00}
          OnDownClick = DownClickInt
          OnUpClick = UpClickInt
        end
      end
      object shtCuadricula: TTabSheet
        Cursor = 1
        Caption = 'Cuadricula'
        ImageIndex = 3
        object bvl5: TBevel
          Left = 4
          Top = 128
          Width = 373
          Height = 101
          Cursor = 1
          Shape = bsFrame
        end
        object grpGridX: TGroupBox
          Left = 4
          Top = 4
          Width = 185
          Height = 121
          Cursor = 1
          TabOrder = 1
          object lblStyleGridX: TLabel
            Left = 8
            Top = 48
            Width = 25
            Height = 13
            Cursor = 1
            Caption = 'Estilo'
          end
          object lblWidthGridX: TLabel
            Left = 8
            Top = 72
            Width = 31
            Height = 13
            Cursor = 1
            Caption = 'Grosor'
          end
          object lblColorGridX: TLabel
            Left = 8
            Top = 96
            Width = 24
            Height = 13
            Cursor = 1
            Caption = 'Color'
          end
          object lblPasoGridX: TLabel
            Left = 8
            Top = 24
            Width = 24
            Height = 13
            Cursor = 1
            Caption = 'Paso'
          end
          object cboColorGridX: TColorBox
            Left = 64
            Top = 91
            Width = 113
            Height = 22
            Cursor = 1
            Style = [cbStandardColors, cbExtendedColors, cbCustomColor]
            ItemHeight = 16
            TabOrder = 5
            OnChange = cboColorGridXChange
          end
          object cboStyleGridX: TComboBox
            Left = 64
            Top = 44
            Width = 113
            Height = 20
            Cursor = 1
            Style = csOwnerDrawFixed
            ItemHeight = 14
            TabOrder = 2
            OnChange = cboStyleGridXChange
            OnDrawItem = cboEstiloDrawItems
            Items.Strings = (
              ''
              ''
              ''
              '')
          end
          object edtPasoGridX: TEdit
            Left = 64
            Top = 20
            Width = 98
            Height = 21
            Cursor = 3
            TabOrder = 0
            Text = 'edtPasoGridX'
            OnChange = edtPasoGridXChange
          end
          object edtWidthGridX: TEdit
            Tag = 5
            Left = 64
            Top = 68
            Width = 98
            Height = 21
            Cursor = 3
            TabOrder = 3
            Text = 'edtWidthGridX'
            OnChange = edtWidthGridXChange
          end
          object CSpinButton1: TCSpinButton
            Left = 162
            Top = 69
            Width = 15
            Height = 20
            Cursor = 1
            DownGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00}
            FocusControl = edtWidthGridX
            TabOrder = 4
            UpGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
              00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FF00}
            OnDownClick = DownClickInt
            OnUpClick = UpClickInt
          end
          object CSpinButton11: TCSpinButton
            Left = 163
            Top = 21
            Width = 15
            Height = 20
            Cursor = 1
            DownGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00}
            FocusControl = edtPasoGridX
            TabOrder = 1
            UpGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
              00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FF00}
            OnDownClick = DownClickDbl
            OnUpClick = UpClickDbl
          end
        end
        object grpGridY: TGroupBox
          Left = 192
          Top = 4
          Width = 185
          Height = 121
          Cursor = 1
          TabOrder = 3
          object lblStyleGridY: TLabel
            Left = 8
            Top = 48
            Width = 25
            Height = 13
            Cursor = 1
            Caption = 'Estilo'
          end
          object lblWidthGridY: TLabel
            Left = 8
            Top = 72
            Width = 31
            Height = 13
            Cursor = 1
            Caption = 'Grosor'
          end
          object lblColorGridY: TLabel
            Left = 8
            Top = 96
            Width = 24
            Height = 13
            Cursor = 1
            Caption = 'Color'
          end
          object lblPasoGridY: TLabel
            Left = 8
            Top = 24
            Width = 24
            Height = 13
            Cursor = 1
            Caption = 'Paso'
          end
          object cboColorGridY: TColorBox
            Left = 64
            Top = 91
            Width = 113
            Height = 22
            Cursor = 1
            Style = [cbStandardColors, cbExtendedColors, cbCustomColor]
            ItemHeight = 16
            TabOrder = 5
            OnChange = cboColorGridYChange
          end
          object cboStyleGridY: TComboBox
            Left = 64
            Top = 44
            Width = 113
            Height = 20
            Cursor = 1
            Style = csOwnerDrawFixed
            ItemHeight = 14
            TabOrder = 2
            OnChange = cboStyleGridYChange
            OnDrawItem = cboEstiloDrawItems
            Items.Strings = (
              ''
              ''
              ''
              '')
          end
          object edtPasoGridY: TEdit
            Left = 64
            Top = 20
            Width = 98
            Height = 21
            Cursor = 3
            TabOrder = 0
            Text = 'edtPasoGridY'
            OnChange = edtPasoGridYChange
          end
          object edtWidthGridY: TEdit
            Tag = 5
            Left = 64
            Top = 68
            Width = 98
            Height = 21
            Cursor = 3
            TabOrder = 3
            Text = 'edtWidthGridY'
            OnChange = edtWidthGridYChange
          end
          object CSpinButton10: TCSpinButton
            Left = 162
            Top = 69
            Width = 15
            Height = 20
            Cursor = 1
            DownGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00}
            FocusControl = edtWidthGridY
            TabOrder = 4
            UpGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
              00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FF00}
            OnDownClick = DownClickInt
            OnUpClick = UpClickInt
          end
          object CSpinButton12: TCSpinButton
            Left = 163
            Top = 21
            Width = 15
            Height = 20
            Cursor = 1
            DownGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00}
            FocusControl = edtPasoGridY
            TabOrder = 1
            UpGlyph.Data = {
              DE000000424DDE00000000000000360000002800000009000000060000000100
              180000000000A800000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
              00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
              000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FF00}
            OnDownClick = DownClickDbl
            OnUpClick = UpClickDbl
          end
        end
        object chkGridX: TCheckBox
          Left = 12
          Top = 0
          Width = 97
          Height = 17
          Cursor = 1
          Caption = 'Cuadricula eje x'
          TabOrder = 0
          OnClick = chkGridXClick
        end
        object chkGridY: TCheckBox
          Left = 200
          Top = 0
          Width = 97
          Height = 17
          Cursor = 1
          Caption = 'Cuadricula eje y'
          TabOrder = 2
          OnClick = chkGridYClick
        end
      end
      object TabSheet1: TTabSheet
        Cursor = 1
        Caption = 'Vista previa'
        ImageIndex = 3
        object dsgPrevia: TDesigner2D
          Left = 0
          Top = 17
          Width = 381
          Height = 216
          Cursor = 8
          FontAxeX.Charset = DEFAULT_CHARSET
          FontAxeX.Color = clWindowText
          FontAxeX.Height = -11
          FontAxeX.Name = 'MS Sans Serif'
          FontAxeX.Style = []
          FontAxeY.Charset = DEFAULT_CHARSET
          FontAxeY.Color = clWindowText
          FontAxeY.Height = -11
          FontAxeY.Name = 'MS Sans Serif'
          FontAxeY.Style = []
          FontLabelX.Charset = DEFAULT_CHARSET
          FontLabelX.Color = clWindowText
          FontLabelX.Height = -11
          FontLabelX.Name = 'MS Sans Serif'
          FontLabelX.Style = []
          FontLabelY.Charset = DEFAULT_CHARSET
          FontLabelY.Color = clWindowText
          FontLabelY.Height = -11
          FontLabelY.Name = 'MS Sans Serif'
          FontLabelY.Style = []
          AxeX.Color = clNavy
          AxeY.Color = clNavy
          GridX.Color = 14265489
          GridX.Style = psDot
          GridY.Color = 14265489
          GridY.Style = psDot
          BackGround.Color = 13339492
          GridStepX = 0.25
          GridStepY = 0.25
          DiscretStepX = 0.1
          NameAxeX = 'X'
          NameAxeY = 'Y'
          MarksLengthAxeX = 8
          MarksLengthAxeY = 8
          MarksStepX = 0.25
          MarksStepY = 0.25
          LabelsStepX = 1
          LabelsStepY = 0.5
          Align = alClient
          ShowHint = True
        end
        object lblVistaPrevia: TStaticText
          Left = 0
          Top = 0
          Width = 381
          Height = 17
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Vista previa'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object btnAceptar: TButton
    Left = 240
    Top = 352
    Width = 75
    Height = 25
    Caption = '&Aceptar'
    ModalResult = 1
    TabOrder = 2
  end
  object btnCancelar: TButton
    Left = 320
    Top = 352
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 276
    Width = 397
    Height = 69
    Caption = 'Dise'#241'o'
    TabOrder = 1
    object lblAutoOpciones: TLabel
      Left = 16
      Top = 20
      Width = 105
      Height = 13
      Cursor = 1
      Caption = 'Opciones predefinidas'
    end
    object btnSave: TButton
      Left = 310
      Top = 32
      Width = 75
      Height = 25
      Caption = '&Guardar...'
      TabOrder = 1
      OnClick = btnSaveClick
    end
    object cboAutoOpciones: TComboBox
      Left = 16
      Top = 34
      Width = 289
      Height = 21
      Cursor = 1
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cboAutoOpcionesChange
      Items.Strings = (
        'Dise'#241'o trigonom'#233'trico'
        'Dise'#241'o de interfaz discreta'
        'Dise'#241'o profesional'
        'Dise'#241'o moderno'
        'Dise'#241'o impactante'
        'Dise'#241'o de impresi'#243'n'
        'Cargar desde archivo...')
    end
  end
  object imgLista: TImageList
    Left = 304
    Top = 220
  end
  object fntFuente: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 336
    Top = 224
  end
  object dlgOpenDSG: TOpenDialog
    DefaultExt = 'dsg'
    Filter = 'Archivos de dise'#241'o|*.dsg'
    Options = [ofNoChangeDir, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Abrir dise'#241'o'
    Left = 24
    Top = 344
  end
  object dlgSaveDSG: TSaveDialog
    DefaultExt = 'dsg'
    Filter = 'Archivos de dise'#241'o|*.dsg'
    Title = 'Guardar dise'#241'o'
    Left = 72
    Top = 352
  end
end
