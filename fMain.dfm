object frmMain: TfrmMain
  Left = 241
  Top = 179
  Cursor = 1
  ActiveControl = tbrArchivo
  Caption = 'MaxMath 1.0'
  ClientHeight = 450
  ClientWidth = 624
  Color = clAppWorkSpace
  Constraints.MinHeight = 480
  Constraints.MinWidth = 640
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  Menu = mnuMain
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  WindowMenu = mitVentana
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object sbrEstado: TStatusBar
    Left = 0
    Top = 431
    Width = 624
    Height = 19
    Cursor = 1
    Panels = <
      item
        Alignment = taCenter
        Width = 75
      end
      item
        Width = 296
      end
      item
        Alignment = taCenter
        Width = 120
      end
      item
        Alignment = taCenter
        Width = 125
      end
      item
        Bevel = pbNone
        Width = 50
      end>
    ExplicitTop = 423
    ExplicitWidth = 632
  end
  object ControlBar: TControlBar
    Left = 0
    Top = 0
    Width = 624
    Height = 56
    Cursor = 1
    Align = alTop
    AutoSize = True
    Color = clBtnFace
    ParentColor = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    ExplicitWidth = 632
    object tbrArchivo: TToolBar
      Left = 11
      Top = 2
      Width = 100
      Height = 22
      Cursor = 1
      Caption = 'tbrArchivo'
      DisabledImages = imlDisabled
      HotImages = imlHot
      Images = imlMain
      TabOrder = 0
      Transparent = True
      object btnNuevo: TToolButton
        Left = 0
        Top = 0
        Action = actNuevo
      end
      object btnAbrir: TToolButton
        Left = 23
        Top = 0
        Action = actAbrir
      end
      object btnGuardar: TToolButton
        Left = 46
        Top = 0
        Hint = 'Guarda los cambios del proyecto actual'
        Caption = 'Guardar'
        Enabled = False
        ImageIndex = 13
      end
      object ToolButton4: TToolButton
        Left = 69
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object btnImprimir: TToolButton
        Left = 77
        Top = 0
        Hint = 'Imprime la gr'#225'fica actual'
        Caption = 'Imprimir...'
        Enabled = False
        ImageIndex = 18
      end
    end
    object tbrFunciones: TToolBar
      Left = 191
      Top = 2
      Width = 123
      Height = 22
      Cursor = 1
      Caption = 'tbrFunciones'
      DisabledImages = imlDisabled
      HotImages = imlHot
      Images = imlMain
      TabOrder = 1
      Transparent = True
      Visible = False
      object btnAdd: TToolButton
        Left = 0
        Top = 0
        Hint = 'Crea una nueva funci'#243'n'
        Caption = 'Nueva funci'#243'n...'
        ImageIndex = 19
      end
      object btnModify: TToolButton
        Left = 23
        Top = 0
        Hint = 'Permite realizar cambios a una funci'#243'n existente'
        Caption = 'Modificar funci'#243'n...'
        Enabled = False
        ImageIndex = 20
      end
      object btnDelete: TToolButton
        Left = 46
        Top = 0
        Hint = 'Elimina una funci'#243'n'
        Caption = 'Eliminar funci'#243'n...'
        Enabled = False
        ImageIndex = 21
      end
      object ToolButton5: TToolButton
        Left = 69
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object btnTree: TToolButton
        Left = 77
        Top = 0
        Hint = 'Visualiza en forma de arbol las funciones definidas'
        Caption = 'Arbol de funciones...'
        Enabled = False
        ImageIndex = 22
      end
      object btnTrace: TToolButton
        Left = 100
        Top = 0
        Hint = 'Permite evaluar una funci'#243'n punto a punto'
        Caption = 'Camino de funci'#243'n...'
        ImageIndex = 23
      end
    end
    object tbrOperaciones: TToolBar
      Left = 11
      Top = 28
      Width = 492
      Height = 22
      Cursor = 1
      Caption = 'tbrOperaciones'
      HotImages = imlHot
      Images = imlMain
      TabOrder = 2
      Transparent = True
      Visible = False
      object btnLimite: TToolButton
        Left = 0
        Top = 0
        Hint = 'Permite calcular el l'#237'mite de una funci'#243'n'
        Caption = 'L'#237'mite...'
        ImageIndex = 34
      end
      object ToolButton1: TToolButton
        Left = 23
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object btnDerivada: TToolButton
        Left = 31
        Top = 0
        Hint = 'Calcula y permite declarar la primera derivada'
        Caption = 'Derivada...'
        ImageIndex = 35
      end
      object btnTangente: TToolButton
        Left = 54
        Top = 0
        Hint = 'Calcula la recta tangente de una funci'#243'n en un punto'
        Caption = 'Tangente...'
        ImageIndex = 37
      end
      object btnNormal: TToolButton
        Left = 77
        Top = 0
        Hint = 'Calcula la recta normal en un punto'
        Caption = 'Normal...'
        ImageIndex = 38
      end
      object btnSecante: TToolButton
        Left = 100
        Top = 0
        Hint = 'Permite calcular una recta secante'
        Caption = 'Secante...'
        ImageIndex = 39
      end
      object btnTaylor: TToolButton
        Left = 123
        Top = 0
        Hint = 'Calcula el polinomio de Taylor para una expresi'#243'n'
        Caption = 'Polinomio de Taylor...'
        ImageIndex = 40
      end
      object ToolButton2: TToolButton
        Left = 146
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object btnAreaBajoCurva: TToolButton
        Left = 154
        Top = 0
        Hint = 'Calcula el area bajo una funci'#243'n'
        Caption = 'bajo la curva...'
        ImageIndex = 41
      end
      object btnAreaEntre2Curvas: TToolButton
        Left = 177
        Top = 0
        Hint = 'Calcula el area entre dos funciones'
        Caption = 'entre dos curvas...'
        ImageIndex = 42
      end
      object btnMetodoDiscos: TToolButton
        Left = 200
        Top = 0
        Hint = 'Calcula un vol'#250'men  por el m'#233'todo de discos'
        Caption = 'M'#233'todo de discos...'
        ImageIndex = 44
      end
      object btnMetodoArandelas: TToolButton
        Left = 223
        Top = 0
        Hint = 'Calcula un vol'#250'men  por el m'#233'todo de arandelas'
        Caption = 'M'#233'todo de arandelas...'
        ImageIndex = 45
      end
      object btnMetodoCapas: TToolButton
        Left = 246
        Top = 0
        Hint = 'Calcula un vol'#250'men  por el m'#233'todo de tubos o capas'
        Caption = 'M'#233'todo de capas o tubos...'
        ImageIndex = 46
      end
      object btnLongArco: TToolButton
        Left = 269
        Top = 0
        Hint = 'Calcula la longitud de arco'
        Caption = 'Longitud de arco...'
        ImageIndex = 47
      end
      object btnCentroGravedad: TToolButton
        Left = 292
        Top = 0
        Hint = 'Calcula el centro de gravedad de una superficie'
        Caption = 'Centro de gravedad...'
        ImageIndex = 48
      end
      object ToolButton3: TToolButton
        Left = 315
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object btnEstCompleto: TToolButton
        Left = 323
        Top = 0
        Hint = 'Realiza el estudio completo'
        Caption = 'Estudio completo...'
        ImageIndex = 49
      end
      object btnIntEjes: TToolButton
        Left = 346
        Top = 0
        Hint = 'Calcula las intersecciones con los ejes coordenados'
        Caption = 'Intersecciones con los ejes...'
        ImageIndex = 50
      end
      object btnParidad: TToolButton
        Left = 369
        Top = 0
        Hint = 'Identifica la paridad de la funci'#243'n'
        Caption = 'Paridad...'
        ImageIndex = 51
      end
      object btnMaxMin: TToolButton
        Left = 392
        Top = 0
        Hint = 'Calcula los m'#225'ximos y los m'#237'nimos de una funci'#243'n'
        Caption = 'M'#225'ximos y m'#237'nimos...'
        ImageIndex = 54
      end
      object btnPtsInflexion: TToolButton
        Left = 415
        Top = 0
        Hint = 'Calcula los puntos de inflexi'#243'n'
        Caption = 'Puntos de inflexi'#243'n...'
        ImageIndex = 57
      end
      object btnAsintotas: TToolButton
        Left = 438
        Top = 0
        Hint = 'Calcula las asintotas horizontales y oblicuas'
        Caption = 'As'#237'ntotas...'
        ImageIndex = 58
      end
      object ToolButton6: TToolButton
        Left = 461
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 38
        Style = tbsSeparator
      end
      object btnIntCurvas: TToolButton
        Left = 469
        Top = 0
        Hint = 'Calcula las intersecciones entre dos funciones'
        Caption = 'Intersecciones entre 2 curvas...'
        ImageIndex = 59
      end
    end
    object tbrVer: TToolBar
      Left = 327
      Top = 2
      Width = 246
      Height = 22
      Cursor = 1
      Caption = 'tbrVer'
      DisabledImages = imlDisabled
      HotImages = imlHot
      Images = imlMain
      TabOrder = 3
      Transparent = True
      Visible = False
      object btnVisor: TToolButton
        Left = 0
        Top = 0
        Hint = 'Permite configurar las caracteristicas visuales'
        Caption = 'Caracter'#237'sticas del visor...'
        ImageIndex = 25
      end
      object btnSelectorGraficas: TToolButton
        Left = 23
        Top = 0
        Hint = 'Permite seleccionar que funci'#243'n graficar'
        Caption = 'Selector de gr'#225'ficas...'
        ImageIndex = 26
      end
      object ToolButton21: TToolButton
        Left = 46
        Top = 0
        Width = 8
        Caption = 'ToolButton21'
        ImageIndex = 11
        Style = tbsSeparator
      end
      object btnZoomMenos: TToolButton
        Left = 54
        Top = 0
        Hint = 'Aplica un alejamiento en el visor'
        Caption = 'Alejamiento'
        ImageIndex = 28
      end
      object btnZoomMas: TToolButton
        Left = 77
        Top = 0
        Hint = 'Aplica un acercamiento en el visor'
        Caption = 'Acercamiento'
        ImageIndex = 27
      end
      object btnMove: TToolButton
        Left = 100
        Top = 0
        Caption = 'actMove'
        ImageIndex = 60
      end
      object btnMira: TToolButton
        Left = 123
        Top = 0
        Caption = 'actMira'
        Down = True
        ImageIndex = 61
      end
      object ToolButton22: TToolButton
        Left = 146
        Top = 0
        Width = 8
        Caption = 'ToolButton22'
        ImageIndex = 10
        Style = tbsSeparator
      end
      object btnIzquierda: TToolButton
        Left = 154
        Top = 0
        Hint = 'Mueve el visor hacia la izquierda'
        Caption = 'Ver izquierda'
        ImageIndex = 29
      end
      object btnArriba: TToolButton
        Left = 177
        Top = 0
        Hint = 'Mueve el visor hacia arriba'
        Caption = 'Ver arriba'
        ImageIndex = 30
      end
      object btnAbajo: TToolButton
        Left = 200
        Top = 0
        Hint = 'Mueve el visor hacia abajo'
        Caption = 'Ver abajo'
        ImageIndex = 31
      end
      object btnDerecha: TToolButton
        Left = 223
        Top = 0
        Hint = 'Mueve el visor hacia la derecha'
        Caption = 'Ver derecha'
        ImageIndex = 32
      end
    end
    object tbrEntretenimiento: TToolBar
      Left = 124
      Top = 2
      Width = 54
      Height = 22
      Cursor = 1
      DisabledImages = imlDisabled
      HotImages = imlHot
      Images = imlMain
      TabOrder = 4
      Transparent = True
      object ToolButton9: TToolButton
        Left = 0
        Top = 0
        Action = actFullScreen
      end
      object ToolButton10: TToolButton
        Left = 23
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 31
        Top = 0
        Action = actTextEditor
      end
    end
  end
  object mnuMain: TMainMenu
    Images = imlMain
    Left = 12
    Top = 68
    object mitArchivo: TMenuItem
      Caption = '&Archivo'
      object Nuevo1: TMenuItem
        Action = actNuevo
      end
      object mitAbrir: TMenuItem
        Action = actAbrir
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mitConfImpresora: TMenuItem
        Action = actConfImpres
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mitSalir: TMenuItem
        Action = actSalir
      end
    end
    object mitVer: TMenuItem
      Caption = 'V&er'
      GroupIndex = 1
      object Pantallacompleta1: TMenuItem
        Action = actFullScreen
        AutoCheck = True
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object mitBHerramientas: TMenuItem
        Action = actHerramientas
      end
      object mitBEstado: TMenuItem
        Action = actEstado
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object mitTextEditor: TMenuItem
        Action = actTextEditor
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object btnConfiguracion: TMenuItem
        Action = actConfiguracion
      end
    end
    object mitVentana: TMenuItem
      Caption = '&Ventana'
      GroupIndex = 2
      object mitCascada: TMenuItem
        Action = actCascada
      end
      object mitMosaico: TMenuItem
        Caption = 'Mosaico'
        object mitHorizontal: TMenuItem
          Action = actTileHoriz
        end
        object mitVertical: TMenuItem
          Action = actTileVert
        end
      end
      object mitAgrupar: TMenuItem
        Action = actArrange
      end
      object mitMinimizar: TMenuItem
        Action = actMinimizeAll
      end
      object mitCerrarTodas: TMenuItem
        Action = actCerrarTodas
      end
    end
    object mitAyuda: TMenuItem
      Caption = 'A&yuda'
      GroupIndex = 2
      object mitRegistrarse: TMenuItem
        Action = actRegistrarse
      end
      object mitContenido: TMenuItem
        Action = actManual
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object mitAcerca: TMenuItem
        Action = actAcerca
      end
      object mitMail: TMenuItem
        Action = actMail
      end
    end
  end
  object ApplicationEvents: TApplicationEvents
    OnHint = ApplicationEventsHint
    Left = 76
    Top = 132
  end
  object alsMain: TActionList
    Images = imlMain
    Left = 44
    Top = 68
    object actNuevo: TAction
      Category = 'Archivo'
      Caption = 'Nuevo proyecto...'
      Hint = 'Crea un nuevo proyecto de MaxMath'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = actNuevoExecute
    end
    object actAbrir: TAction
      Category = 'Archivo'
      Caption = 'Abrir...'
      Hint = 'Abre un proyecto residente en disco'
      ImageIndex = 1
      ShortCut = 16449
      OnExecute = actAbrirExecute
    end
    object actCerrar: TWindowClose
      Category = 'Archivo'
      Caption = 'Cerrar proyecto'
      Enabled = False
      Hint = 'Cierra el proyecto actual'
      ShortCut = 16499
    end
    object actConfImpres: TAction
      Category = 'Archivo'
      Caption = 'Configurar impresora...'
      Hint = 'Permite elegir la impresora y configurarla'
      OnExecute = actConfImpresExecute
    end
    object actSalir: TAction
      Category = 'Archivo'
      Caption = 'Salir'
      Hint = 'Cierra la aplicaci'#243'n'
      ShortCut = 32883
      OnExecute = actSalirExecute
    end
    object actHerramientas: TAction
      Category = 'Ver'
      Caption = 'Barras de herramientas'
      Checked = True
      Hint = 'Muestra / oculta las barras de herramientas'
      ShortCut = 16456
      OnExecute = actHerramientasExecute
    end
    object actEstado: TAction
      Category = 'Ver'
      Caption = 'Barra de estado'
      Checked = True
      Hint = 'Muestra / oculta la barra de estado'
      ShortCut = 16453
      OnExecute = actEstadoExecute
    end
    object actCascada: TWindowCascade
      Category = 'Ventana'
      Caption = 'Cascada'
      Enabled = False
      Hint = 'Ordenaci'#243'n en forma de cascada'
      ImageIndex = 8
    end
    object actTileHoriz: TWindowTileHorizontal
      Category = 'Ventana'
      Caption = 'Horizontal'
      Enabled = False
      Hint = 'Ordenaci'#243'n en forma de mosaico horizontal'
      ImageIndex = 9
    end
    object actTileVert: TWindowTileVertical
      Category = 'Ventana'
      Caption = 'Vertical'
      Enabled = False
      Hint = 'Ordenaci'#243'n en forma de mosaico vertical'
      ImageIndex = 10
    end
    object actMinimizeAll: TWindowMinimizeAll
      Category = 'Ventana'
      Caption = 'Minimizar todas'
      Enabled = False
      Hint = 'Minimiza todos los proyectos'
    end
    object actArrange: TWindowArrange
      Category = 'Ventana'
      Caption = 'Agrupar'
      Enabled = False
      Hint = 'Agrupa los iconos'
    end
    object actRegistrarse: TAction
      Category = 'Ayuda'
      Caption = 'Registrarse...'
      Hint = 'Registrarse como usuario'
      OnExecute = actRegistrarseExecute
    end
    object actMail: TAction
      Category = 'Ayuda'
      Caption = 'Comunicarse con el autor'
      ImageIndex = 12
      Visible = False
      OnExecute = actMailExecute
    end
    object actAcerca: TAction
      Category = 'Ayuda'
      Caption = 'Acerca de...'
      Hint = 'Muestra informaci'#243'n sobre la aplicaci'#243'n'
      OnExecute = actAcercaExecute
    end
    object actCalculadora: TAction
      Category = 'Herramientas'
      Caption = 'Calculadora'
      Hint = 'Muestra la calculadora'
      ImageIndex = 4
      ShortCut = 16451
    end
    object actComplejos: TAction
      Category = 'Herramientas'
      Caption = 'N'#250'meros complejos...'
      Hint = 'Miniaplicaci'#243'n de manejo de n'#250'meros complejos'
      ImageIndex = 5
      ShortCut = 16457
    end
    object actConicas: TAction
      Category = 'Herramientas'
      Caption = 'C'#243'nicas...'
      Hint = 'Tratamiento de figuras c'#243'nicas'
      ImageIndex = 6
      ShortCut = 16450
    end
    object actRegresion: TAction
      Category = 'Herramientas'
      Caption = 'Regresi'#243'n muestral...'
      Hint = 'Regresi'#243'n de datos'
      ImageIndex = 7
      ShortCut = 16466
    end
    object actConfiguracion: TAction
      Category = 'Ver'
      Caption = 'Configuraci'#243'n de la aplicaci'#243'n...'
      Hint = 'Permite configurar MaxMath'
      OnExecute = actConfiguracionExecute
    end
    object actCerrarTodas: TAction
      Category = 'Ventana'
      Caption = 'Cerrar todas'
      Enabled = False
      Hint = 'Cierra todas las ventanas abiertas'
      OnExecute = actCerrarTodasExecute
    end
    object actTextEditor: TAction
      Category = 'Ver'
      Caption = 'Ventana del Editor de texto'
      Hint = 'Muestra/oculta la ventana de textos'
      ImageIndex = 2
      ShortCut = 16471
      OnExecute = actTextEditorExecute
    end
    object actFullScreen: TAction
      Category = 'Ver'
      AutoCheck = True
      Caption = 'Pantalla completa'
      Hint = 'Maximiza para abarcar todo el area disponible / Restaura'
      ImageIndex = 24
      ShortCut = 122
      SecondaryShortCuts.Strings = (
        'Esc')
      OnExecute = actFullScreenExecute
    end
    object actManual: TAction
      Category = 'Ayuda'
      Caption = 'Manual del &usuario'
      ImageIndex = 11
      ShortCut = 112
      OnExecute = actManualExecute
    end
  end
  object PrinterSetupDialog: TPrinterSetupDialog
    Left = 76
    Top = 100
  end
  object imlMain: TImageList
    Left = 76
    Top = 68
    Bitmap = {
      494C01013E004000080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000000001000001002000000000000000
      0100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000006464640064646400646464006464640064646400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000006464
      6400646464000000000000000000646464000000000000000000646464006464
      6400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000646464000000
      0000000000000000000000000000646464000000000000000000000000000000
      0000646464000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000064646400000000000000
      0000000000000000000000000000646464000000000000000000000000000000
      0000000000006464640000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000064646400000000000000
      0000000000000000000064646400646464006464640000000000000000000000
      0000000000006464640000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000006464640000000000000000000000
      0000000000006464640000000000646464000000000064646400000000000000
      0000000000000000000064646400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000006464640000000000000000000000
      0000646464000000000000000000646464000000000000000000646464000000
      0000000000000000000064646400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000006464640064646400646464006464
      6400646464006464640064646400646464006464640064646400646464006464
      6400646464006464640064646400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000006464640000000000000000000000
      0000646464000000000000000000646464000000000000000000646464000000
      0000000000000000000064646400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000006464640000000000000000000000
      0000000000006464640000000000646464000000000064646400000000000000
      0000000000000000000064646400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00000000000000000064646400000000000000
      0000000000000000000064646400646464006464640000000000000000000000
      0000000000006464640000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000064646400000000000000
      0000000000000000000000000000646464000000000000000000000000000000
      0000000000006464640000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000646464000000
      0000000000000000000000000000646464000000000000000000000000000000
      0000646464000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      6400646464000000000000000000646464000000000000000000646464006464
      6400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006464640064646400646464006464640064646400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF0000000000000000000000FF000000FF
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF00000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      000000FF0000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      00000000000000000000000000000000000000000000000000000000000000FF
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF00000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000840000000000
      0000000000008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF0000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000008400
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF0000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084000000000000008400
      0000000000008484840000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000FF00000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF00000000000000FF
      00000000000000FF00000000000000FF00000000000000FF00000000000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      000000000000C6C6C60084848400C6C6C60084848400C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000008484
      8400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6C6008484
      8400C6C6C6000000000000000000000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6008484840000000000000000000000000000000000FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C60084848400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6
      C60084848400C6C6C6000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C600C6C6C60084848400000000000000000000000000C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000C6C6C6008484
      8400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6C6008484
      8400C6C6C6008484840000000000000000000000000000000000C6C6C600C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000C6C6C600FFFF
      FF00C6C6C600FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000000000000000000000000000000000C6C6C60084848400C6C6
      C60084848400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6
      C60084848400C6C6C60084848400000000000000000084848400C6C6C600C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000C6C6C600FFFF
      FF00C6C6C600C6C6C60084848400000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000084848400C6C6C6008484
      8400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6C6008484
      8400C6C6C60084848400C6C6C600000000000000000084848400C6C6C600FFFF
      FF00C6C6C600000000000000000000000000000000000000000000000000C6C6
      C600FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      00008484840084848400C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000000000000000000000000000000000C6C6C60084848400C6C6
      C60084848400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6
      C60084848400C6C6C60084848400000000000000000084848400C6C6C600FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      0000000000008484840084848400C6C6C600C6C6C600C6C6C600FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000084848400C6C6C6008484
      8400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6C6008484
      8400C6C6C60084848400C6C6C600000000000000000084848400C6C6C600FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      000000000000000000008484840084848400C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60084848400C6C6
      C60084848400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6
      C60084848400C6C6C60084848400000000000000000084848400C6C6C600FFFF
      FF00C6C6C600000000000000000000000000000000000000000000000000C6C6
      C600FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      00000000000000000000000000008484840084848400C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C6008484
      8400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6C6008484
      8400C6C6C60084848400C6C6C600000000000000000084848400C6C6C600C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000C6C6C600FFFF
      FF00C6C6C600C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C60084848400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6
      C60084848400C6C6C60000000000000000000000000000000000C6C6C600C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840084848400C6C6
      C600C6C6C600C6C6C600FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6008484
      8400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6C6008484
      8400C6C6C600848484000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60084848400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6
      C600848484000000000000000000000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400C6C6C60084848400C6C6C60084848400C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      00000000000000FF00000000000000FF00000000000000FF00000000000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF0000000000000000000000FF000000FF
      00000000000000000000000000000000000000000000000000000000000000FF
      00000000000000FF00000000000000FF00000000000000FF00000000000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400C6C6C600000000000000000000000000000000000000000000000000C6C6
      C6008484840084848400000000000000000000FF000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000000FF000000000000000000000000000000000000000000000000000000FF
      00000000000000FF00000000000000FF00000000000000FF00000000000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000FF00000000000000FF00000000000000FF00000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400C6C6C600C6C6C60000000000000000000000000000000000C6C6C600C6C6
      C6008484840084848400000000000000000000FF000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      00000000000000FF0000000000000000000000000000000000000000000000FF
      00000000000000FF00000000000000FF00000000000000FF00000000000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      000000FF00000000000000FF00000000000000FF00000000000000FF00000000
      000000FF00000000000000000000000000000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C6000000000000000000C6C6C600C6C6C600C6C6
      C600848484008484840000000000000000000000000000FF000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000FF00000000000000FF00000000000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      000000FF00000000000000FF00000000000000FF00000000000000FF00000000
      000000FF00000000000000000000000000000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF0000000000000000000000000000000000000000
      00000000000000FF00000000000000FF00000000000000FF00000000000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000FF00000000000000FF00000000000000FF00000000
      000000FF00000000000000FF0000000000000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF00000000000000FF00000000
      000000FF00000000000000000000000000000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600FFFFFF00FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF0000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000864200008240
      0000783B00006E3600006A3400006A3400006A3400006A3400006A3400006A34
      00006A3400005A2C000000000000000000000000000099330000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AC550000CA640000C461
      0000BC5D0000B4590000AE560000AC550000AC550000AE560000AE560000AC55
      0000B2580000944900005A2C0000000000000000000099330000FFC27900FFBE
      6E00FFBB6100FFB65400FFB24900FFAE3B00FFA92F00FFA52300FFA11900FF9D
      0E00FF9B0500FF99010099330000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C8630000EA740000DE6E
      0000D86B0000D2680000CA640000C2600000C05F0000C05F0000C05F0000C05F
      0000C6620000B25800006A340000000000000000000099330000FFC68600FFC2
      7D00FFBF7100FFBA6400FFB65900FFB24C00FFAE3E00FFA93200FFA52700FFA2
      1A00FF9F0F00FF9B0700993300000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4690000F4790000E873
      0000DC6D0000D4690000CE660000C6620000C05F0000BC5D0000BA5C0000B85B
      0000C05F0000AE5600006C350000000000000000000099330000FFCA8F00FFC7
      8800FFC47F00FFC07300FFBC6800FFB85D00FFB34F00FFAF4200FFAB3500FFA6
      2800FFA31C00FF9F120099330000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D66A0000FF820700F87B
      0000EA740000DE6E0000D66A0000D0670000CA640000C2600000BC5D0000BA5C
      0000C05F0000AE5600006A340000000000000000000099330000FFCA9300FFCA
      9200FFC88A00FFC48100FFC07800FFBD6C00FFB95F00FFB55200FFB14600FFAC
      3800FFA82B00FFA4200099330000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D66A0000FF932900FF86
      0F00FFFFFF00FFFFFF00E06F0000DA6C0000D4690000CC650000FFFFFF00FFFF
      FF00C05F0000AE5600006A340000000000000000000099330000FFCA9300FFCA
      9300FFCA9200FFC88C00FFC58400FFC27900FFBF6E00FFBB6200FFB55500FFB1
      4900FFAC3C00FFA82F0099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D66A0000FFA64F00FF8E
      1F00FFFFFF00FFFFFF00FFFFFF00E4710000DE6E0000FFFFFF00FFFFFF00FFFF
      FF00C6620000B05700006C35000000000000000000009933000085CBC7009FCB
      BC00C0CAAE00E5CA9E00FBC99000FFC68600FFC37B00FFBF7100FFBB6600FFB7
      5900FFB24B00FFAE3D0099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D66A0000FFB36900FF95
      2D00FF840B00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D067
      0000CE660000B65A00007439000000000000000000009933000000CCFF0000CC
      FF0000CCFF000FCCF90034CCE90052CBDA0078C9C6009BC6B0009AC4AA00A5C2
      9D00E6B96C00FFB3500099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D66A0000FFB97500FF9A
      3700FF881300FF800300FEFEFE00FFFFFF00FFFFFF00FFFFFF00E2700000DA6C
      0000D86B0000C26000008441000000000000000000009933000000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0037C8DD0080C2AD0099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D66A0000FFBF8100FFA1
      4500FF912500FF8C1B00FF830900FFFFFF00FFFFFF00F2780000EC750000E672
      0000E2700000CC6500009248000000000000000000009933000021B884002FC4
      B50035C9CB0023B884000EA635001DB36F0037CBD3003BCEE10037CBD2002BC0
      A4001DB4700020B77F0099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D66A0000FFC68F00FFAC
      5B00FF962F00FF932900FF8B1900FF850D00FF840B00FF7E0000F4790000EE76
      0000EC750000D46900009E4E0000000000000000000099330000478C47006387
      63006E846E00488C48001D941D003C8E3C00738473007A827A007F8D78005988
      59003D8E3D00458C450099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D66A0000FFCA9700FFC4
      8B00FFB77100FFAF6100FFA64F00FF9C3B00FF932900FF850D00FA7C0000F479
      0000F4790000E2700000AE5600000000000000000000993300009D968C008F8C
      870087868300818181008181810081818100AAA19200DEC9A700F4D9B000DCC7
      A700AEA494009C968C0099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D66A0000FFB87300FFCA
      9700FFCC9B00FFC68F00FFBE7F00FFB16500FF9E3F00FF8D1D00FF800300FA7C
      0000FC7D0000EA740000B85B0000000000000000000099330000E5CEAA00DBC6
      A600CAB99F009F988D00948F8900B0A59400EDD4AE00FFE2B500FFE2B500FFE2
      B500F1D7AF00E5CEAA0099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2780000FF8A
      1700FF8B1900FF8A1700FF860F00FF800300F2780000E6720000DC6D0000D86B
      0000DA6C0000C863000000000000000000000000000099330000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A667C00BE9596000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B9CC3001E89E8004B7AA300C896
      9300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000864200008240
      0000783B00006E3600006A3400006A3400006A3400006A3400006A3400006A34
      00006A3400005A2C000000000000000000000000000000000000864200008240
      0000783B00006E3600006A3400006A3400006A3400006A3400006A3400006A34
      00006A3400005A2C000000000000000000000000000000000000864200008240
      0000783B00006E3600006A3400006A3400006A3400006A3400006A3400006A34
      00006A3400005A2C000000000000000000004BB4FE0051B5FF002089E9004B7A
      A200C69592000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AC550000CA640000C461
      0000BC5D0000B4590000AE560000AC550000AC550000AE560000AE560000AC55
      0000B2580000944900005A2C00000000000000000000AC550000CA640000C461
      0000BC5D0000B4590000AE560000AC550000AC550000AE560000AE560000AC55
      0000B2580000944900005A2C00000000000000000000AC550000CA640000C461
      0000BC5D0000B4590000AE560000AC550000AC550000AE560000AE560000AC55
      0000B2580000944900005A2C0000000000000000000051B7FE0051B3FF001D87
      E6004E7AA000CA97920000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C8630000EA740000DE6E
      0000D86B0000D2680000CA640000C2600000C05F0000C05F0000C05F0000C05F
      0000C6620000B25800006A3400000000000000000000C8630000EA740000DE6E
      0000D86B0000D2680000CA640000C2600000C05F0000C05F0000C05F0000C05F
      0000C6620000B25800006A3400000000000000000000C8630000EA740000DE6E
      0000D86B0000D2680000CA640000C2600000C05F0000C05F0000C05F0000C05F
      0000C6620000B25800006A34000000000000000000000000000051B7FE004EB2
      FF001F89E6004E7BA200B9949700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4690000F4790000E873
      0000DC6D0000D4690000CE660000C6620000FFFFFF00FFFFFF00BA5C0000B85B
      0000C05F0000AE5600006C3500000000000000000000D4690000F4790000E873
      0000DC6D0000D4690000FFFFFF00FFFFFF00C05F0000BC5D0000BA5C0000B85B
      0000C05F0000AE5600006C3500000000000000000000D4690000F4790000E873
      0000DC6D0000D4690000CE660000C6620000C05F0000BC5D0000BA5C0000B85B
      0000C05F0000AE5600006C3500000000000000000000000000000000000052B8
      FE004BB1FF002787D9005F6A760000000000A8787500C4A39800D5B6A700D0A5
      9F000000000000000000000000000000000000000000D66A0000FF820700F87B
      0000EA740000DE6E0000D66A0000FEFEFE00FFFFFF00FFFFFF00BC5D0000BA5C
      0000C05F0000AE5600006A3400000000000000000000D66A0000FF820700F87B
      0000EA740000DE6E0000FFFFFF00FFFFFF00FEFEFE00C2600000BC5D0000BA5C
      0000C05F0000AE5600006A3400000000000000000000D66A0000FF820700F87B
      0000EA740000DE6E0000D66A0000FFFFFF00FFFFFF00C2600000BC5D0000BA5C
      0000C05F0000AE5600006A340000000000000000000000000000000000000000
      000055BDFF00B5D6ED00A3908E00B3978800F0E7C800FEFDDA00FEFDD900FDFC
      D800EAD8C200CEAEA300000000000000000000000000D66A0000FF932900FF86
      0F00F87B0000EA740000FEFEFE00FFFFFF00FFFFFF00CC650000C4610000BE5E
      0000C05F0000AE5600006A3400000000000000000000D66A0000FF932900FF86
      0F00F87B0000EA740000E06F0000FFFFFF00FFFFFF00FEFEFE00C4610000BE5E
      0000C05F0000AE5600006A3400000000000000000000D66A0000FF932900FF86
      0F00F87B0000EA740000FEFEFE00FFFFFF00FFFFFF00FFFFFF00C4610000BE5E
      0000C05F0000AE5600006A340000000000000000000000000000000000000000
      000000000000CCB7B700D9B8A500FEF0C200FFFDD600FFFFDA00FFFFDA00FFFF
      DF00FFFFEE00F6F0EB00B48D89000000000000000000D66A0000FFA64F00FF8E
      1F00FF800300FFFFFF00FFFFFF00FFFFFF00DE6E0000D66A0000D0670000C863
      0000C6620000B05700006C3500000000000000000000D66A0000FFA64F00FF8E
      1F00FF800300F87B0000EC750000E4710000FFFFFF00FFFFFF00FFFFFF00C863
      0000C6620000B05700006C3500000000000000000000D66A0000FFA64F00FF8E
      1F00FF800300FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C863
      0000C6620000B05700006C350000000000000000000000000000000000000000
      000000000000C6978F00F6E0B500FFE1A700FDF7D000FFFFDA00FFFFE100FFFF
      F200FFFFFA00FFFFFF00DFD0BE000000000000000000D66A0000FFB36900FF95
      2D00FF840B00FFFFFF00FFFFFF00FFFFFF00E6720000DE6E0000D86B0000D067
      0000CE660000B65A0000743900000000000000000000D66A0000FFB36900FF95
      2D00FF840B00FC7D0000F2780000EC750000FFFFFF00FFFFFF00FFFFFF00D067
      0000CE660000B65A0000743900000000000000000000D66A0000FFB36900FF95
      2D00FFFFFF00FFFFFF00FFFFFF00EC750000E6720000FFFFFF00FFFFFF00FFFF
      FF00CE660000B65A000074390000000000000000000000000000000000000000
      000000000000DBBAA800FFE9AC00A99AB3007E97E6006584FB006584FB006584
      FB007F98FD00DAE3EE00F2EFD000C79C960000000000D66A0000FFB97500FF9A
      3700FF881300FF800300FFFFFF00FFFFFF00FFFFFF00E8730000E2700000DA6C
      0000D86B0000C2600000844100000000000000000000D66A0000FFB97500FF9A
      3700FF881300FF800300F4790000FFFFFF00FFFFFF00FFFFFF00E2700000DA6C
      0000D86B0000C2600000844100000000000000000000D66A0000FFB97500FF9A
      3700FFFFFF00FFFFFF00F4790000F2780000F0770000E8730000FFFFFF00FFFF
      FF00D86B0000C260000084410000000000000000000000000000000000000000
      000000000000E4C7AF00FFEBA4005661CE00002CFF000235FC000335FB000134
      FB00002AFD00B0C1E800FAF8D700C6AC9A0000000000D66A0000FFBF8100FFA1
      4500FF912500FF8C1B00FF830900FFFFFF00FFFFFF00FFFFFF00EC750000E672
      0000E2700000CC650000924800000000000000000000D66A0000FFBF8100FFA1
      4500FF912500FF8C1B00FFFFFF00FFFFFF00FFFFFF00F2780000EC750000E672
      0000E2700000CC650000924800000000000000000000D66A0000FFBF8100FFA1
      4500FF912500FF8C1B00FF830900FF7E0000FA7C0000F2780000EC750000E672
      0000E2700000CC65000092480000000000000000000000000000000000000000
      000000000000DEBEAA00FFECB400CFA99500C3AEAD009AAFEA009AAFEA009AAF
      EA00C4D1E300EFF2DE00F6F2D200C8A2980000000000D66A0000FFC68F00FFAC
      5B00FF962F00FF932900FF8B1900FF850D00FFFFFF00FFFFFF00F4790000EE76
      0000EC750000D46900009E4E00000000000000000000D66A0000FFC68F00FFAC
      5B00FF962F00FF932900FFFFFF00FFFFFF00FF840B00FF7E0000F4790000EE76
      0000EC750000D46900009E4E00000000000000000000D66A0000FFC68F00FFAC
      5B00FF962F00FF932900FF8B1900FF850D00FF840B00FF7E0000F4790000EE76
      0000EC750000D46900009E4E0000000000000000000000000000000000000000
      000000000000CA9F9700FDEFC200FFECC000F4D3A600F4D09D00F9E4B800FEF6
      CF00FFFFD100FFFFDA00E5D9BB000000000000000000D66A0000FFCA9700FFC4
      8B00FFB77100FFAF6100FFA64F00FF9C3B00FF932900FF850D00FA7C0000F479
      0000F4790000E2700000AE5600000000000000000000D66A0000FFCA9700FFC4
      8B00FFB77100FFAF6100FFA64F00FF9C3B00FF932900FF850D00FA7C0000F479
      0000F4790000E2700000AE5600000000000000000000D66A0000FFCA9700FFC4
      8B00FFB77100FFAF6100FFA64F00FF9C3B00FF932900FF850D00FA7C0000F479
      0000F4790000E2700000AE560000000000000000000000000000000000000000
      00000000000000000000DDC4AE00FFFFFF00FFF7E900F3CC9800F0BD8900F4CE
      9D00FCE6B600FDF6C800BE9D8F000000000000000000D66A0000FFB87300FFCA
      9700FFCC9B00FFC68F00FFBE7F00FFB16500FF9E3F00FF8D1D00FF800300FA7C
      0000FC7D0000EA740000B85B00000000000000000000D66A0000FFB87300FFCA
      9700FFCC9B00FFC68F00FFBE7F00FFB16500FF9E3F00FF8D1D00FF800300FA7C
      0000FC7D0000EA740000B85B00000000000000000000D66A0000FFB87300FFCA
      9700FFCC9B00FFC68F00FFBE7F00FFB16500FF9E3F00FF8D1D00FF800300FA7C
      0000FC7D0000EA740000B85B0000000000000000000000000000000000000000
      0000000000000000000000000000D3BFBA00F6F0DC00FFF2C000FDE6B100FEE9
      B500F4DEB700D0AD9D0000000000000000000000000000000000F2780000FF8A
      1700FF8B1900FF8A1700FF860F00FF800300F2780000E6720000DC6D0000D86B
      0000DA6C0000C863000000000000000000000000000000000000F2780000FF8A
      1700FF8B1900FF8A1700FF860F00FF800300F2780000E6720000DC6D0000D86B
      0000DA6C0000C863000000000000000000000000000000000000F2780000FF8A
      1700FF8B1900FF8A1700FF860F00FF800300F2780000E6720000DC6D0000D86B
      0000DA6C0000C863000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CAAD9600CFAE9B00DDBFA900DCB8
      A800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000046474700464747004647470046474700464747000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000020A1C9002CAACF001082AC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A667C00BE9596000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6C6D0046474700E6E4E700CBC8CC00B1AAB000A4999B00948A8C004647
      4700000000000000000000000000000000000000000000000000000000002BA3
      C90024A5CC000F84AE00149AC30024AED60033B1D500188BB4001787AF0043AB
      CC003DA8CB00000000000000000000000000A67A7500A67A7500A67A7500A67A
      7500A67A7500A67A7500A67A7500A67A7500A67A7500A67A7500000000000000
      0000000000000000000000000000000000006B9CC3001E89E8004B7AA300C896
      9300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000046474700FFFFFF00AFAFAF0054515100545151006E6C6D008E8687004745
      45000000000000000000000000000000000000000000000000000000000032A5
      C90037B8DC0014AED90011A1CB001DC7F00048D7F80034A6CA005CC1DD0067C4
      DE003FA4C600000000000000000000000000A67A7500F1E1D600EEDBCD00ECD6
      C500EAD1BD00E7CCB500E5C8AD00E3C3A500E0BF9D00A67A7500000000000000
      0000000000000335FB0000000000000000004BB4FE0051B5FF002089E9004B7A
      A200C69592000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000060606100A6A5A70054515100988B8E00A593950054515100545151004647
      47000000000000000000000000000000000000000000208CB4002C98BD004EB5
      D50085DBEF0051C0DE0039C8EC001ED7FF003ADBFF005FD4F10075C6DF00B0E1
      EC0090CEE1001B8BB5000000000000000000A67A7500FCF7F200FAF1E700F9EC
      DC00F7E7D200F5E2C800F4DDBE00F3D8B400F1D4A900A67A7500000000000000
      00000335FB000335FB0000000000000000000000000051B7FE0051B3FF001D87
      E6004E7AA000CA97920000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004647
      4700B1B5C100A6A7B200918E9500757073005F5858005B515100413F3F000000
      0000000000000000000000000000000000000000000060BAD70048B0D20053BE
      E00095EDFF008DEFFF005AE5FF0027DAFF001CD8FF0052E2FF0079E8FF007DEB
      FF003FCBEE0031B1D9002CA4CE0000000000A67A7500A67A7500A67A7500A67A
      7500A67A7500A67A7500A67A7500A67A7500A67A7500A67A7500000000000000
      000000000000000000000330E20000000000000000000000000051B7FE004EB2
      FF001F89E6004E7BA200B9949700000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000046474700A39B
      9B00FFC86A00FFD08100F6D19900E9D3B600D5CFCE00B5AFB10089858B006160
      670046494B00000000000000000000000000000000001391C00022A6D7004EC3
      EA0081DFF70092EFFF0071D3E8005CB8CC0050B2C9002AC7EB0007D1FF0004CF
      FE0009D0FE0008C9F5000EB4E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000335FB0000000000000000000000000052B8
      FE004BB1FF002787D9005F6A760000000000A8787500C4A39800D5B6A700D0A5
      9F0000000000000000000000000000000000000000000000000050505000A6A0
      9F00FA9F0E00FFA71500FFAD2200FFB22B00FFB73B00F8C16500E8C28900CBB2
      9500978B8300515051000000000000000000000000001C8EB80028ADDE003FBB
      E7006DD7F60091C7D3009796960097969600979696009796960045BCD80002D2
      FF0014D3FE001ED2FB000C9ECB0000000000A67A7500A67A7500A67A7500A67A
      7500A67A7500A67A7500A67A7500A67A7500A67A7500A67A7500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000055BDFF00B5D6ED00A3908E00B3978800EDE4C600FFFFD700FFFFD600FFFE
      D700EAD8C200CEAEA300000000000000000000000000000000005C5C5C00A8A4
      A300F9A92500FEB43400FEB94000FFBD4700FFBD4600FFB93A00FFB22800FFB0
      2800E8A741006E6558000000000000000000000000001E92BC0027ADDF0031B4
      E3005ACFF40097969600E9E3E200B2B3B300ACA2A200E1B7B5009796960059DC
      FA009CF0FF00B5EFFC003D9BBD0000000000A67A7500F1E1D600EEDBCD00ECD6
      C500EAD1BD00E7CCB500E5C8AD00E3C3A500E0BF9D00A67A7500000000000000
      0000000000000335FB0000000000000000000000000000000000000000000000
      000000000000CCB7B700D9B8A500FEF0C200FFFFD500B5C4E4006887EE00DDE4
      E200FFFFEE00F6F0EB00B48D89000000000000000000000000005C5C5C00AAA7
      A600F9B53C00FFC14F00FFC85D00FFCC6400FFCC6400FFC85D00FFC25100FFBC
      3B00F0A82F0064584600000000000000000000000000148CB8001F9DCD0027AC
      DD0047C5EF0097969600E9E2E000B1B2B200ACA2A200DCB5B400979696007CE4
      FB00ACECF9008ACBE00048A5C40000000000A67A7500FCF7F200FAF1E700F9EC
      DC00F7E7D200F5E2C800F4DDBE00F3D8B400F1D4A900A67A7500000000000000
      00000335FB000335FB0000000000000000000000000000000000000000000000
      000000000000C6978F00F6E0B500FFE1A700FFFFCA00839CEB00002BFC00CED8
      F500FFFFFA00FFFFFF00DFD0BE0000000000000000000000000066666600ABA8
      A600FABE5000FFCC6600FFD47600FFD87E00FFD87E00FFD57700FFCE6800FFC6
      5200E9AD45005D564B00000000000000000000000000000000000E80AA0020A2
      D30036BCEB0097969600E9E2E000B1B2B200ACA2A200DDB6B4009796960065E1
      FD0068CAE6000579A4000000000000000000A67A7500A67A7500A67A7500A67A
      7500A67A7500A67A7500A67A7500A67A7500A67A7500A67A7500000000000000
      000000000000000000000330E200000000000000000000000000000000000000
      000000000000DBBAA800FFE9AC00A99AB3007E97E600456AF3000435FB006584
      FB007F98FD00DAE3EE00F2EFD000C79C9600000000000000000066666600AAA7
      A600FAC76100FFD77900FFDE8A00FFE39400FFE49500FFDF8C00FFD87C00FFCF
      6400E5B259005956530000000000000000000000000000000000000000001389
      B4000D8FBE0097969600ECE5E200B1B2B200ACA2A200E0B8B600979696001E9A
      C1002293BA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000335FB000000000000000000000000000000
      000000000000E4C7AF00FFEBA4005661CE00002CFF000235FC000335FB000134
      FB00002AFD00B0C1E800FAF8D700C6AC9A00000000000000000066666600A8A6
      A500FCCE6C00FFDD8600FFE69A00FEEDA800FEEEAA00FFE79C00FFDD8800FFD5
      7100E6B661005956530000000000000000000000000000000000000000000000
      00000000000097969600E5E3E200AEAFAF00ABA1A100D8B6B600979696000000
      000000000000000000000000000000000000A67A7500A67A7500A67A7500A67A
      7500A67A7500A67A7500A67A7500A67A7500A67A7500A67A7500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEBEAA00FFECB400CFA99500C3AEAD00647BE1000336FD009AAF
      EA00C4D1E300EFF2DE00F6F2D200C8A29800000000000000000066666600A7A5
      A300EFC66D00FEDC8500FFF2A400FFFBBA00FFFABC00FFEFA600FFE18D00FFD9
      7500E7BA67005A58540000000000000000000000000000000000000000000000
      00000000000097969600B2B2B200A0A0A00099969600ABA0A000979696000000
      000000000000000000000000000000000000A67A7500F1E1D600EEDBCD00ECD6
      C500EAD1BD00E7CCB500E5C8AD00E3C3A500E0BF9D00A67A7500000000000000
      0000000000000335FB0000000000000000000000000000000000000000000000
      000000000000CA9F9700FDEFC200FFECC000FFE39D007B82CB00002FFF00CAD0
      DA00FFFFD100FFFFDA00E5D9BB0000000000000000000000000066666600A2A2
      A100A2998700ACA38D00B0A88F00BFB99B00CBC49F00D9C99400E5C98100FBD2
      7000E9BB68005D5A580000000000000000000000000000000000000000000000
      00000000000097969600E1E0E000C6C7C700A5A3A300B3A5A500979696000000
      000000000000000000000000000000000000A67A7500FCF7F200FAF1E700F9EC
      DC00F7E7D200F5E2C800F4DDBE00F3D8B400F1D4A900A67A7500000000000000
      00000335FB000335FB0000000000000000000000000000000000000000000000
      00000000000000000000DDC4AE00FFFFFF00FFF9E800CFB6A900A790A800E3C3
      A300FCE6B600FDF6C800BE9D8F00000000000000000000000000000000004647
      470046474700464747007473750095949900969498009B979B00A39EA2009891
      9200A3948A005D5A5A0000000000000000000000000000000000000000000000
      00000000000097969600E5E4E400EAE9E900BCBCBC00A39E9E00979696000000
      000000000000000000000000000000000000A67A7500A67A7500A67A7500A67A
      7500A67A7500A67A7500A67A7500A67A7500A67A7500A67A7500000000000000
      000000000000000000000330E200000000000000000000000000000000000000
      0000000000000000000000000000D3BFBA00F6F0DE00FFF6BD00FFEDAB00FEE9
      B500F4DEB700D0AD9D0000000000000000000000000000000000000000000000
      0000000000000000000000000000626263005F5F600063626300696869006B6A
      6D00615F62000000000000000000000000000000000000000000000000000000
      0000000000000000000097969600979696009796960097969600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000335FB000000000000000000000000000000
      000000000000000000000000000000000000CAAD9600CFAE9B00DDBFA900DCB8
      A800000000000000000000000000000000000000000000000000CC6701000000
      000000000000000000009C3B0D009C3B0D009C3B0D009C3B0D009C3B0D000000
      0000000000000000000000000000000000000000000000000000CC6701000000
      000000000000000000009C3B0D009C3B0D009C3B0D009C3B0D009C3B0D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000391C9000391
      C9000391C9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC670100CC67
      0100CC670100D06A00009C3B0D00FFCF9200EBA45A00DD882E009C3B0D000000
      0000000000000000000000000000000000000000000000000000CC670100CC67
      0100CC670100D06A00009C3B0D00FFCF9200EBA45A00DD882E009C3B0D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6701000000000000000000000000009C3B0D009C3B0D009C3B0D009C3B
      0D009C3B0D000000000000000000000000000391C9000391C90012C9F4000391
      C90000CDFC000391C9000391C900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC6701000000
      000000000000000000009B390B009C3B0D009C3A0D009B3A0C009C3B0D000000
      0000000000000000000000000000000000000000000000000000CC6701000000
      000000000000000000009B390B009C3B0D009C3A0D009B3A0C009C3B0D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC670100CC670100CC670100D06A00009C3B0D00FFCF9200EBA45A00DD88
      2E009C3B0D000000000000000000000000000391C900A5FFFF0050DEF3000391
      C90000CEFE0000D5FF000391C900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC6701000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC6701000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6701000000000000000000000000009B390B009C3B0D009C3A0D009B3A
      0C009C3B0D000000000000000000000000000391C90049CFEC0036C7E90023B8
      E10002ABDE0000BAEF00318DA100A12E0D000000000000000000000000000000
      0000000000009A351400942C1300000000000000000000000000CC6701000000
      000000000000000000009C3B0D009C3B0D009C3B0D009C3B0D009C3B0D000000
      0000000000000000000000000000000000000000000000000000CC6701000000
      000000000000000000009C3B0D009C3B0D009C3B0D009C3B0D009C3B0D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6701000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000187FA4003B8798001EBE
      E60000B1F3000097DE00717E8800604999000111BE00001DC000000FB800000A
      B3000A0CA6003919710037196F00070D9B000000000000000000CC670100CC67
      0100CC670100CC6701009C3B0D00FFCF9200EBA45A00DD882E009C3B0D000000
      0000000000000000000000000000000000000000000000000000CC670100CC67
      0100CC670100CC6701009C3B0D00FFCF9200EBA45A00DD882E009C3B0D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6701000000000000000000000000009C3B0D009C3B0D009C3B0D009C3B
      0D009C3B0D000000000000000000000000000000000000000000AF502E007D41
      35007B5B4B008F674600772A2C00461D71000049F9000289F500002BEC00001F
      DE000018D7000013D0000289F5000036B7000000000000000000CC6701000000
      000000000000000000009B390B009C3B0D009C3A0D009B3A0C009C3B0D000000
      0000000000000000000000000000000000000000000000000000CC6701000000
      000000000000000000009B390B009C3B0D009C3A0D009B3A0C009C3B0D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC670100CC670100CC670100CC6701009C3B0D00FFCF9200EBA45A00DD88
      2E009C3B0D0000000000000000000000000000000000B4482700A83C13009E20
      0000A72D0000AA42000036126C000B0AA200000BB900000BB5000004AE000D13
      AF00191BAC000208A80000059C00000000000000000000000000CC6701000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC6701000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6701000000000000000000000000009B390B009C3B0D009C3A0D009B3A
      0C009C3B0D00000000000000000000000000000000003E872D0039872E00388B
      2F00209A3400209A3400174D94002F25B5001B25BB000010C500415AE6007C87
      DC00757CD6006D70D0001016AD00000000000000000000000000CC6701000000
      000000000000000000009C3B0D009C3B0D009C3B0D009C3B0D009C3B0D000000
      0000000000000000000000000000000000000000000000000000CC6701000000
      000000000000000000009C3B0D009C3B0D009C3B0D009C3B0D009C3B0D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6701000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000209A340038E27B0033DB
      740037DE7A00209A3400448D7900DCA89E002329BE000004C5001C2DCB00121E
      BF00000FBA002322AB000307A400000000000000000000000000CC670100CC67
      0100CC670100CC6701009C3B0D00FFCF9200EBA45A00DD882E009C3B0D000000
      0000000000000000000000000000000000000000000000000000CC670100CC67
      0100CC670100CC6701009C3B0D00FFCF9200EBA45A00DD882E009C3B0D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6701000000000000000000000000009C3B0D009C3B0D009C3B0D009C3B
      0D009C3B0D0000000000000000000000000000000000209A340045DC79003ED5
      71003AD16D00209A34004D937E00E0B3AE00514AB2008477B5007C67A1007C66
      9A007F6898007F699A00000D9300000000000000000000000000CC6701000000
      000000000000000000009B390B009C3B0D009C3A0D009B3A0C009C3B0D000000
      0000000000000000000000000000000000000000000000000000CC6701000000
      000000000000000000009B390B009C3B0D009C3A0D009B3A0C009C3B0D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC670100CC670100CC670100CC6701009C3B0D00FFCF9200EBA45A00DD88
      2E009C3B0D0000000000000000000000000000000000209A34004AE3800043DB
      78003FD97600209A34004C958400D1B7CE00958BBE00FFFFD400FFEDB400FFE1
      9E00FFDC9700FFE99A00000D9300000000009C3B0D009C3B0D009C3B0D009C3B
      0D009C3B0D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C3B0D009C3B0D009C3B0D009C3B
      0D009C3B0D000000000000000000000000000000000000000000000000000017
      DD000017DD00000000000017DD000017DD000000000000000000000000000000
      0000CC6701000000000000000000000000009B390B009C3B0D009C3A0D009B3A
      0C009C3B0D0000000000000000000000000000000000209A34004FEA850049E1
      7D0044DE7B00209A34003C888900B5A7DE00908DCA00FFFFF300FDEDD300FEDF
      B700FFD2A000FDDC9B00000D9300000000009C3B0D00FFCF9200EBA45A00DD88
      2E009C3B0D000000000000000000000000000000000000000000000000000000
      000000000000033DFF0000000000000000009C3B0D00FFCF9200EBA45A00DD88
      2E009C3B0D000000000000000000000000000000000000000000000000000017
      DD000017DD000017DD000017DD000017DD0000000000000000009C3B0D009C3B
      0D009C3B0D009C3B0D009C3B0D00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000209A340057F08C0050E8
      84004CE58200209A3400238B7D000C1ECE002026BF004040BF003D3AB1004038
      A8004138A300584A9E0000000000000000009B390B009C3B0D009C3A0D009B3A
      0C009C3B0D000000000000000000000000000000000000000000000000000000
      0000033DFF0000000000033DFF00000000009B390B009C3B0D009C3A0D009B3A
      0C009C3B0D000000000000000000000000000000000000000000000000000000
      00000017DD000017DD000017DD000000000000000000000000009C3B0D00FFCF
      9200EBA45A00DD882E009C3B0D00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000209A34005EF8950058F1
      8D0054EC8A00209A34002C9D70000017E200000AD3000000B5000000A7000000
      A200000191000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000033DFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000017
      DD000017DD000017DD000017DD000017DD0000000000000000009B390B009C3B
      0D009C3A0D009B3A0C009C3B0D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000209A3400209A
      340058F28D00209A34003DC37500164CBD000B25C8000B22B6000C28A9000E2F
      A500176B62000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000033DFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000017
      DD000017DD00000000000017DD000017DD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000209A3400209A3400209A3400209A3400209A3400209A3400209A3400209A
      3400209A34000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0585900A5787800CBBE
      BC00F1EEEB00E5E6E500A3575600A53F3F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000868484008684840000000000000000008684840086848400000000000000
      0000000000000000000000000000000000000000000000000000CC6701000000
      000000000000000000009C3B0D009C3B0D009C3B0D009C3B0D009C3B0D000000
      000000000000000000000000000000000000A0502700954B2500944A2500944A
      2400944A2400944A2400944A2400944A2400944A2400944A2400944A2400944A
      2400944A2400944A2400964C2500A1512700C4716D00CD646400A46868009D45
      4400E5D9D800FFFFFF00A9585700A63B3A00B55C5D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008684
      8400BCBABA00B5B3B300868484008684840086848400EBEAEA00868484008684
      8400868484000000000000000000000000000000000000000000CC670100CC67
      0100CC670100D06A00009C3B0D00FFCF9200EBA45A00DD882E009C3B0D000000
      00000000000000000000000000000000000083422100FFF6ED00FFF3E7008886
      8400FCEDDA00FDEBD50088868400FFE6CA00FFE6CA0088868400FEDEBA00FCD9
      B00088868400FDD7AC00FDD7AC0091492300C3726E00CB606100B57A7A009F55
      5400B1A1A000F1EDEB00AD585900A6393A00B55C5D0000000000000000000000
      000000000000000000000000000000000000000000000000000086848400E3E2
      E200B5B3B300B5B3B300B5B3B300515050004F4F4F0086878700CDCDCD00E8E9
      E900C7C6C6008684840086848400868484000000000000000000CC6701000000
      000000000000000000009B390B009C3B0D009C3A0D009B3A0C009C3B0D000000
      0000000000000000000000000000000000007F402000F3EDE500888684008886
      8400888684008886840088868400888684008886840088868400888684008886
      84008886840088868400888684008F482300C16F6B00C5595A00C8717100CB80
      7F00C3727200CA787800C76D6D00C8656500B258590000000000000000000000
      0000000000000000000000000000000000000000000086848400DEDDDD00D6D6
      D600A4A3A300A4A3A300A4A3A300565555001615160012121200181818001212
      120093939300CACACA0086848400000000000000000000000000CC6701000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008040200088868400888684005675
      F9001BA21A0086C77700FEEEDD00FEECD600FEE9D100FEE6CA00FEE3C400FDE0
      BF00FDDDBA00EED8AA00FDDAB1008F482300B6635E00D09C9A00EEDCDC00EEDC
      DA00EFDAD800EED8D700EFE3E100D38D8C00AE4E4F0000000000000000000000
      00000000000000000000000000000000000086848400D6D6D600D6D6D600A4A3
      A300E0DEDE00D9D7D700CDCBCB00C2C0C000B6B4B4009F9D9D00797677001212
      12001414140013131300868484008F8C8C000000000000000000CC6701000000
      000000000000000000009C3B0D009C3B0D009C3B0D009C3B0D009C3B0D000000
      00000000000000000000000000000000000080402000FEF6ED0088868400385E
      FC004B88B3001EA31B008CC97B00FFEDDA00FEEAD500FEE8CE00FEE5C800FEE2
      C20062B449001FA1160029A41D006B5D1A00B6635D00E6CCCA00F3F8F700EAE8
      E800EBEAE900EBEBEA00F2F6F500D28F8E00AD4C4D007B2F070095390800A53F
      0900A9410900AA410900AA410900AC400E0086848400D6D6D600A4A3A300F3F2
      F200FFFEFE00FCFBFB00EAE7E800E6E6E600E6E5E500DAD9D900CCCBCB00BFBD
      BD00A2A0A00073717100939191008E8C8C000000000000000000CC670100CC67
      0100CC670100CC6701009C3B0D00FFCF9200EBA45A00DD882E009C3B0D000000
      0000000000000000000000000000000000007F401F008886840088868400D3D8
      F5001E4AFD00FEF5E90047B23F00FFEFDE00FEECD800FEE9D200FEE6CB0099C6
      78001CA11500FEDCB600FEDCB6007A541E00B6635E00E4C5C400E6E7E600DBD7
      D700DDD9D900DBD9D800E8E9E900D28E8E00AD4C4D00B9B9B900DFDFDF00F7F7
      F700FEFEFE00FFFFFF00FFFFFF00AA41090086848400A4A3A300FFFFFF00FEFD
      FD00FBFBFB00DFDEDF00ADA7A900B4ADAE00C3BDBE00D1CECF00E0E0E000E1E1
      E100D4D3D300C7C6C600A7A5A500868383000000000000000000CC6701000000
      000000000000000000009B390B009C3B0D009C3A0D009B3A0C009C3B0D000000
      0000000000000000000000000000000000007F401F00FFF9F20088868400FEFB
      F5006883F900296DB90026A52600F2EBDD00CDCAE300DFD5DA00CBD8A60017A0
      12009BBE8B000D3CFC006376E4008F482300B7645E00E6C7C700EFEFEE00E4E1
      E000E6E2E100E5E2E100F0EFEE00D5918F00AD4C4D00BC884600E19D4300F7A7
      3600FEA52500FF9F1400FFFFFF00AA410900000000008684840086848400F1F0
      F000C2B9BA0093898B00A19B9F00ABA8AA00ABA6A700B1ACAD00AFA9AA00B2AD
      AE00CAC9C900DCDCDC00D0D0D000868484000000000000000000CC6701000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000804020008886840088868400FFFC
      F700FEF9F4004064FB000B7F53000E884200244EFA001A46FB00199C22005BB5
      4A00284FF6006F84D700224AF6007945460000000000D2B6B500E6E7E700E2DC
      DC00E2DDDD00E2DDDE00E5E5E400C2858400AE875B00C7975D00E7A85D00F9B0
      5000FFAE3E00FFA62A00FFFFFF00AA4109000000000000000000000000008684
      8400CAA09700BA9E8700A2897E0095817B00897C7F00928C9200A5A2A400BBB6
      B700D7D6D600CFCFCF0086848400000000000000000000000000CC6701000000
      000000000000000000009C3B0D009C3B0D009C3B0D009C3B0D009C3B0D000000
      0000000000000000000000000000000000007F3F1F00FFFDFB0088868400FEFD
      F900FFFBF600FFF8F200E8E5EF00219F2C00FEF2E200FEEEDC00048F1F001755
      CF005A75E600FDE3C500A7A7D0007E453B000000000000000000000000000000
      00000000000083291E00B9B9B90098957A00B49E7900DDAC7400F2B86E00FCBA
      6100FFB54F00FFAF3800FFFFFF00AA4109000000000000000000000000000000
      0000CC9A9900FFEAC400FFDDB300EEC39900D5AE8C00C9A78600CC9A99009895
      9600868484008684840000000000000000000000000000000000CC670100CC67
      0100CC670100CC6701009C3B0D00FFCF9200EBA45A00DD882E009C3B0D000000
      000000000000000000000000000000000000854523008886840088868400FFFD
      FB00FFFBF800FFFAF500FFF7F000E4EBD20032AA2D0018A115005BAA6E006179
      EE00F2DFCF00FEE4C700FEE2C200944D29000000000000000000000000000000
      0000000000009E322400DFDFDF0014B6DD0028BBDA0052C3D50080C9C800A3C8
      B000ABC5A400D5BC7D00FFFFFF00AA4109000000000000000000000000000000
      0000CC9A9900FFE7C800FFDDBA00FFDBB100FFD9A600FFD39F00CC9A99000000
      0000000000000000000000000000000000000000000000000000CC6701000000
      000000000000000000009B390B009C3B0D009C3A0D009B3A0C009C3B0D000000
      00002C7E1A00307C1A000000000000000000B26C3900D7A96100D3A35D00D3A3
      5C00D3A35C00D3A35C00D3A35C00D3A35C00D3A35C00D4A45D00D8AE6D00D7A9
      6200D9AE6C00CFA76900CAAA7700B56D38000000000000000000000000000000
      000000000000AF372800F7F7F70000C5CD0000C6D40000CAD10000CBD80000C8
      E00000C7DB0014C9CE00FFFFFF00AA410900000000000000000000000000CE9D
      9B00FFEDDA00FFE7CE00FFE2C300FFDDB800FFDBAE00CC9A9900000000000000
      0000000000000000000000000000000000009C3B0D009C3B0D009C3B0D009C3B
      0D009C3B0D000000000000000000000000000000000000000000000000000000
      0000307F1C0030801D000000000000000000AE5C2700D87E2600DB7F2600DA7F
      2600DA7F2600DA7F2600DA7F2600DA7F2600DA7F2600DC822C00F6BB8000E78A
      2100F6BB8000B37D53004E6ED400B95D19000000000000000000000000000000
      000000000000B03C1E00FEFEFE0041864D0049865400428E49003F894D00598D
      630060976000388B4A00FFFFFF00A8430300000000000000000000000000CC9A
      9900FEF0E100FFECD800FFE6CC00FFE1C200FEDDB700CC9A9900000000000000
      0000000000000000000000000000000000009C3B0D00FFCF9200EBA45A00DD88
      2E009C3B0D0000000000000000000000000000000000000000002F811E002C8D
      28002C912B002C8F2A002E872300307F1C0000000000A95A2E00AA5A2F00AA5A
      2F00AA5A2F00AA5A2F00AA5A2F00AA5A2F00AA5A2F00AA5B2F00AE5F3200AA58
      2700AF603100A3562E009C573B00000000000000000000000000000000000000
      000000000000B13C1E00FFFFFF00C8AFA000AF9E9500887C8600A9989400EBCE
      AE00FBDCB700DFC0A900FFFFFF00A84303000000000000000000CC9A9900FFFF
      F500FFFFF500FFF0E100FFEBD600FFE8CC00F6D4BA00CC9A9900000000000000
      0000000000000000000000000000000000009B390B009C3B0D009C3A0D009B3A
      0C009C3B0D0000000000000000000000000000000000000000002F811E002D8C
      28002B9630002C942F002E862200307F1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B13C1E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A84303000000000000000000CC9A9900CC9A
      9900CC9A9900FCF3E900FCEADA00FCE5D000CC9A990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002C922D002C922D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0314800B5392900B5392900B5392900B5392900B5392900A843
      0300A8430300A8430300A8430300A84303000000000000000000000000000000
      000000000000CC9A9900CC9A9900CC9A99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002F8320002F8320000000000000000000CC989900D2A09800E5B69900E4B2
      9700E4B29800E4B29800E4B29800E4B29800E4B29800E4B29800E4B29800E4B2
      9800E4B39700E6B39800CE9A9600C89494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B9838500B9838500B983
      8500B9838500B9838500B9838500B98385000000000000000000000000000000
      00000000000000000000000000000000000000000000B9838500B9838500B983
      8500B9838500B9838500B9838500B9838500D3A09A00D8A79A00F1C7A700FFDB
      AD00FED8AB00FFD8AC00FFD8AC00FFD8AC00FFD8AC00FFD8AC00FFD8AC00FFD8
      AB00FFDDAE00EEC3A500D5A39B00CE9B9600000000000000000097433F009743
      3F00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B009330
      300097433F000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B9838500F6DDB700F4D7
      AC00F3D3A100F1CF9800F0CA8F00B98385000000000000000000000000000000
      00000000000000000000000000000000000000000000B9838500F6DDB700F4D7
      AC00F3D3A100F1CF9800F0CA8F00B9838500D1A29C00ECC1A500D4A59E00F4D9
      BE00F7DDC000F5DABF00F5DBBF00F5DBBF00F5DBBF00F5DBBF00F5DABF00F7DD
      C000F0D1B900D3A29C00EFCAB000D1A09A000000000097433F00D6686800C660
      6000E5DEDF0092292A0092292A00E4E7E700E0E3E600D9DFE000CCC9CC008F20
      1F00AF46460097433F0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BA8E8500F8E5C9008A94
      D9001E47F600888ECD00F2D19C00B98385000000000000000000000000000000
      00000000000000000000000000000000000000000000BA8E8500F8E5C9008A94
      D9001E47F600888ECD00F2D19C00B9838500CE9F9D00F4DDC600E5B7A100D9B4
      AF00F3E6D500F1E1D100F1E1D100F1E1D100F1E1D100F1E1D100F1E1D100F3E5
      D400D5ACA700E3BBAB00F3E1CF00CE9E9C000000000097433F00D0656600C25F
      5F00E9E2E20092292A0092292A00E2E1E300E2E6E800DDE2E400CFCCCF008F22
      2200AD46460097433F0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CB9A8200FAEDD9001E49
      F9000033FF001E48F600F4D8AB00B98385000000000000000000000000000000
      00000000000000000000000000000000000000000000CB9A8200FAEDD9001E49
      F9000033FF001E48F600F4D8AB00B9838500CE9F9D00EFE4DB00F6E0C700D4A3
      9700E5D3CC00F3EDE200F2E9E000F2E9E000F2E9E000F2E9E000F5EFE400DFC5
      BF00D7A89E00F7E9D800EFE4DB00CE9F9E000000000097433F00D0656500C15D
      5D00ECE4E40092292A0092292A00DFDDDF00E1E6E800E0E5E700D3D0D2008A1E
      1E00AB44440097433F0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCA88700FCF5E9008D9D
      ED001E49FA008B97E000F6E0BD00B98385000000000000000000000000000000
      00000000000000000000000000000000000000000000DCA88700FCF5E9008D9D
      ED001E49FA008B97E000F6E0BD00B9838500CFA09F00F3EAE500FAF6ED00F5D5
      BC00CDA09A00EEE0DB00F5EBE400F3E9E200F3E9E200F4EAE300EBD7D200D2A1
      9D00F4E1D200F9F7EF00F4EAE400CFA09F000000000097433F00D0656500C15B
      5C00EFE6E600EDE5E500E5DEDF00E0DDDF00DFE0E200E0E1E300D6D0D200962A
      2A00B24A4A0097433F0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3B18E00FEFBF600FCF7
      ED00FBF2E400FAEDDA00F8E8CE00B98385000000000000000000000000000000
      00000000000000000000000000000000000000000000E3B18E00FEFBF600FCF7
      ED00FBF2E400FAEDDA00F8E8CE00B9838500CFA19F00F9F5F200FBFAF600E0BC
      B500D0A09C00D2A7A700CF9E9D00CF9F9E00CF9F9D00D1A4A400D1AAA900D09D
      9B00EDD8D300FFFFFE00F8F3F100D0A29F000000000097433F00CD626300C860
      6000C9676700CC727200CA727100C6696900C4646400CC6D6C00CA666700C55D
      5D00CD65650097433F0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDBD9200FFFFFF00FEFC
      FA00FDF9F200B9838400B9838400BE8675000000000000000000000000000000
      00000000000000000000000000000000000000000000EDBD9200FFFFFF00FEFC
      FA00FDF9F200B9838400B9838400BE867500D2A5A400F0DDDD00D6ACAB00D9B5
      B600F5F2F200F4F4F400EDE9EA00ECEAEB00EAEAEA00E9EEEF00EEF9F900E2DD
      DC00CFA6A600DDB8B800F4E9E900D1A4A3000000000097433F00B6555300C27B
      7800D39D9C00D7A7A500D8A7A600D8A6A500D7A09F00D5A09F00D7A9A700D8AB
      AB00CC66670097433F000000000000000000B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300B781830000000000EDBD9200FFFFFF00FFFF
      FF00FEFDFC00B9838400D397690000000000B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300B781830000000000EDBD9200FFFFFF00FFFF
      FF00FEFDFC00B9838400D397690000000000CD9B9A00CDA6A700E8D3D300FFFF
      FF00FCFFFF00FAFFFF00F7FFFF00F5FFFF00F2FFFF00F0FFFF00EFFFFF00F0FF
      FF00ECF8F800DAC5C400D5AAA800CC9A99000000000097433F00CC666700F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900CC66670097433F000000000000000000B7818300EED1B100E1B89400E1B6
      8C00DFB18000DCAB7500EFC68600B781830000000000EDBD9200DCA88700DCA8
      8700DCA88700B98384000000000000740400B7818300EED1B100E1B89400E1B6
      8C00DFB18000DCAB7500EFC68600B781830000000000EDBD9200DCA88700DCA8
      8700428A3E00B98384000000000000000000C7989700B6E4E700FFFFFF00FDFF
      FF00FBFFFF00FBFFFF00FBFFFF00F9FFFF00F9FFFF00F4FEFD00F0FAFA00E8F7
      F700DFF1F200D2F1F500BDCBCF00C59796000000000097433F00CC666700F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900CC66670097433F000000000000000000B7818300CA8F6B00952B00009A34
      01009934010099330000E4B57C00B7818300000000000000000045812C000000
      0000000000000000000000000000057E0E00B7818300CA8F6B00952B00009A34
      01009934010099330000E4B57C00B78183000000000000000000000000000375
      0F0044D2730030AB4A000000000000000000CB989600C4B6B700FFFFFF00FFFF
      FF00FFFFFF00F4F9FA00E8F1F200D5E9EB00B9D8DC00A9CFD6009CC8D30093C2
      D20088C0D7008BB5CD00B49B9F00C89594000000000097433F00CC666700F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900CC66670097433F000000000000000000BA8E8500F8EEE500A1421300972E
      000094290000BD764900FDE5B300B78183000000000001780900109726000000
      0000000000000000000004901200087F1000BA8E8500F8EEE500A1421300972E
      000094290000BD764900FDE5B300B781830000000000000000000178090049CC
      72005CE78E0038C65800138E21000000000000000000CE8F8E00CEA7A600BAE1
      E600A2FDFF0095E6EF008CDEE80086E1EA0084E3EE0086E1F20087E1F50086E3
      FD009EC9DD00C7A1A400D1979500000000000000000097433F00CC666700F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900CC66670097433F000000000000000000CB9A8200FFFFFF00D5A992009226
      0000A0411200ECCCAE00FFEFC500B781830003750F0049CC72002EA848000370
      0800097B11000C9116000D9C190005730B00CB9A8200FFFFFF00D5A992009226
      0000A0411200ECCCAE00FFEFC500B78183000000000045812C00109726002EA8
      48003ECA600026AF3D00199F29000A7D1200000000000000000000000000C39B
      9B00A8C7CC008AF4FD0088F9FF008CF5FF008CF6FF0089F9FF008FECFB00B0BC
      C600CE9998000000000000000000000000000000000097433F00CC666700F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900CC66670097433F000000000000000000DCA88700FFFFFF00FCF7F500AE5B
      3300CD957400FBF1DE00DECBB400428A3E0044D273005CE78E003ECA600027B8
      400014AB25000EA31B0007800F0000000000DCA88700FFFFFF00FCF7F500AE5B
      3300CD957400FBF1DE00DECBB400B78183000000000000000000000000000370
      080027B840000D8A180000000000000000000000000000000000000000000000
      0000D1939100BDB0B2009AE1E7008CF4FB008DF3FA009BE0E700C0ACAD00D194
      9100000000000000000000000000000000000000000097433F00CC666700F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900CC66670097433F000000000000000000E3B18E00FFFFFF00FFFFFF00EDDB
      D100F9F2EA00B7818300B7818300B784750030AB4A0038C6580026AF3D000D8A
      180009861100077B0D000000000000000000E3B18E00FFFFFF00FFFFFF00EDDB
      D100F9F2EA00B7818300B7818300B7847500000000000000000000000000097B
      110014AB25000986110000000000000000000000000000000000000000000000
      00000000000000000000CD999800C1A9AA00C2A8A900CD989800000000000000
      000000000000000000000000000000000000000000000000000097433F00F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90097433F00000000000000000000000000EDBD9200FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00B7818300DC9D64000000000000000000138E2100199F29000000
      000000000000000000000000000000000000EDBD9200FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00B7818300DC9D64000000000000000000000000000A8812000C91
      16000EA31B00077B0D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDBD9200DCA88700DCA88700DCA8
      8700DCA88700B7818300000000000000000000000000000000000A7D12000000
      000000000000000000000000000000000000EDBD9200DCA88700DCA88700DCA8
      8700DCA88700B7818300000000000000000007800F0007800F00049012000D9C
      190007800F000000000000000000000000000000000000000000000000000000
      0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D
      0000CA5D0000CA5D0000CA5D0000CA5D0000CF670000CF670000CF670000CF67
      0000CF670000CF670000CF670000CF670000CF670000CF670000CF670000CF67
      0000CF670000CF670000CF670000CF670000D24E2D00D24E2D00D24E2D00D24E
      2D00D24E2D00D24E2D00D24E2D00D24E2D00D24E2D00D24E2D00D24E2D00D24E
      2D00D24E2D00D24E2D00D24E2D00D24E2D00000000000000000000000000EFEF
      EF00C2C2C2006D6D6D00505050004D4D4D004D4D4D004D4D4D00535353007D7D
      7D00D2D2D200F7F7F70000000000000000000000000000000000000000000000
      0000CA5D0000FFFFFF00FFFFFB00FFFBEF00FFF3E000FFEDD400FFE8C800FFE3
      BF00FFE2BB00FFE1BA00FFEFD000CA5D0000CF670000FFFFFF00FFFFFF00FFFE
      F900FFF9EE00FFF5E400FFEFDA00FFEBD000FFE6C700FFE2C000FFE0BA00FFDF
      B700FFDFB700FFDFB700FFE8C500CF670000D24E2D00FFFFFF00FFF7E400FFEF
      D100FFE6BF00FFE1B400FFEFC300D24E2D00D24E2D00FFFFFF00FFF7E400FFEF
      D100FFE6BF00FFE1B400FFEFC300D24E2D000000000000000000E7E7E700B1AC
      AA00E3D0C700F3E1D700F4E3D900F4E3DA00F3E2D800F3E1D700CABBB1005B5A
      590070707000B3B3B300F2F2F200000000000000000000000000000000000000
      0000CA5D0000FFFFFF00FFF8F300FEF4E900FFEFDC00FEE9D100FEE3C400FEDD
      B800FED9B000FED6AA00FFE3BD00CA5D0000CF670000FFFFFF00FFFDFD00FFFC
      F700FFF7EF00FFF4E700FEEFDE00FFEAD400FEE6CB00FEE2C200FEDDB800FED9
      B100FED7AC00FED7AA00FFDEB700CF670000D24E2D00FFFFFF00FEECD600FEE4
      C600FEDCB500FED7AB00FFE4B900D24E2D00D24E2D00FFFFFF00FEECD600FEE4
      C600FEDCB500FED7AB00FFE4B900D24E2D0000000000F1F1F100CFC1BA00F4E3
      D800F8FAFB00E4E2E200CFB1A200D4AB9600DDC6BB00ECF1F000F6F3F200F2E1
      D60089817D006C6C6C00BBBBBB00FAFAFA000000000000000000CA5D0000CA5D
      0000CA5D0000FFFFFF00FFFEFC00FFFAF500FFF5EB00FFF0DF00FFEAD200FFE4
      C600FFDEBB00FFD9B000FFE4BE00CA5D0000CF670000FFFFFF00FFFFFF00FFFF
      FF00FFFDFC00FFFAF700FFF8EF00FFF3E500FEEFDC00FFEBD300FEE5C900FEE1
      C000FEDDB700FED9B000FFE0B900CF670000D24E2D00FFFFFF00FFEEDC00FFE6
      C900FEDDB800FED7AC00FFE4B900D24E2D00D24E2D00FFFFFF00FFEEDC00FFE6
      C900FEDDB800FED7AC00FFE4B900D24E2D00FDFDFD00E0D4CD00F5EAE200F4FF
      FF00CF9A8100B74D1600B9653D00D9AF9A00C0592400B9572500D5AF9F00F7FF
      FF00F4E2D90079736F0074747400DEDEDE000000000000000000CA5D0000FFFF
      FF00CA5D0000FFFFFF00FFFFFF00FFFFFE00FFFBF700FFF6ED00FEF0E100FFEB
      D500FEE5C800FEDFBC00FFE8C500CA5D0000CF670000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFDFC00FFFAF600FEF6ED00FEF2E500FFEDDB00FEE8
      D200FEE4C700FEE0BF00FFE5C200CF670000D24E2D00FFFFFF00FFF3E500FEEA
      D300FEE1C100FED9B000FFE4B900D24E2D00D24E2D00FFFFFF00FFF3E500FEEA
      D300FEE1C100FED9B000FFE4B900D24E2D00EDEAE800F2E1D700F8FFFF00C77E
      5900BB460D00C64F1400C2A49500FFFFFF00D9927000C14B1000B8460C00CE9A
      8100F8FFFF00F2E0D600585858009A9A9A000000000000000000CA5D0000FFFF
      FF00CA5D0000FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFCF800FEF6ED00FEF2
      E200FFECD600FEE5C900FFEDD100CA5D0000CF670000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFDF800FFF9
      F000FFF4E500FFEFDC00FFF3DF00CF670000D24E2D00FFFFFF00FFF7ED00FFEE
      DB00FFE4C900FEDCB800FFE5BA00D24E2D00D24E2D00FFFFFF00FFF7ED00FFEE
      DB00FFE4C900FEDCB800FFE5BA00D24E2D00F0DED500FAFAF900D8A89000BD49
      0E00CD632F00CD612A00CB6C3B00D88E6900CA5F2A00CC632E00C95E2A00B948
      1100E0C9BD00F6EDE800A599930063636300CA5D0000CA5D0000CA5D0000FFFF
      FF00CA5D0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFCF900FFF7
      EF00FFF1E400FEEBD600FFF3E000CA5D0000CF670000CF670000CF670000CF67
      0000CF670000CF670000CF670000CF670000CF670000CF670000CF670000CF67
      0000CF670000CF670000CF670000CF670000D24E2D00FFFFFF00FFFAF400FFF3
      E400FFE9D200FEE1C000FFE7BE00D24E2D00D24E2D00FFFFFF00FFFAF400FFF3
      E400FFE9D200FEE1C000FFE7BE00D24E2D00F3E0D700F8FAFB00C5633300CA5D
      2700CE683400CB5C2400CA896A00F7E7DF00D06C3900CA5B2400CD663200C354
      1C00C7795100F8FCFD00E1CFC60051515100CA5D0000FFFFFF00CA5D0000FFFF
      FF00CA5D0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFBF300FFFFFF00CA5D000000000000D0680000CF670000CF67
      0000CF670000CF670000CF670000CF670000CF670000CF670000CF670000CF67
      0000CF670000CF670000D067000000000000D24E2D00FFFFFF00FFFCFA00FFF5
      ED00FEECDA00FEE3C700FFE9C500D24E2D00D24E2D00FFFFFF00FFFCFA00FFF5
      ED00FEECDA00FEE3C700FFE9C500D24E2D00F3E1D800F2DED600C5571F00CE67
      3300CC663200CC5B2200C2866A00FFFFFF00E8AD9100C44B1000CC632E00CB60
      2900C35F2C00F3F2F100F2E0D6004F4F4F00CA5D0000FFFFFF00CA5D0000FFFF
      FF00CA5D0000EEB67C00ECB07400ECB07400ECB07400ECB07400ECB07400ECB1
      7400ECB07100ECAE6D00EEB37300CA5D0000CF670000CF670000CF670000CF67
      0000CF670000CF670000CF670000CF670000CF670000CF670000CF670000CF67
      0000CF670000CF670000CF670000CF670000D24E2D00FFFFFF00FFFEFE00FFFA
      F500FEF1E300FFE9D000FFEDCD00D24E2D00D24E2D00FFFFFF00FFFEFE00FFFA
      F500FEF1E300FFE9D000FFEDCD00D24E2D00F2E1D900F3D8CA00CD5C2300CF67
      3300CC653000CC612C00C4562000CFB5A800FFFFFF00E09C7B00C7541B00CD61
      2C00C65F2A00F5F1ED00F0DFD50053535300CA5D0000FFFFFF00CA5D0000FFFF
      FF00FFFFFF00CA5C0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D
      0000CA5D0000CA5D0000CA5D000000000000CF670000FFFFFF00FFFFFF00FFFE
      F900FFF9EE00FFF5E400FFEFDA00FFEBD000FFE6C700FFE2C000FFE0BA00FFDF
      B700FFDFB700FFDFB700FFE8C500CF670000D24E2D00FFFFFF00FFFFFF00FFFC
      FA00FEF6EB00FEEED900FFF1D500D24E2D00D24E2D00FFFFFF00FFFFFF00FFFC
      FA00FEF6EB00FEEED900FFF1D500D24E2D00F1E0D700FBEDE600DB6B3300D369
      3400CA5F2900C9592200C9551A00C14C1100E2D0C600FFFFFF00D0714000CD5B
      2100CE6B3900FCFBFB00EFDED3006C6C6C00CA5D0000FFFFFF00CA5D0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFB
      F300FFFFFF00CA5D00000000000000000000CF670000FFFFFF00FFFDFD00FFFC
      F700FFF7EF00FFF4E700FEEFDE00FFEAD400FEE6CB00FEE2C200FEDDB800FED9
      B100FED7AC00FED7AA00FFDEB700CF670000D24E2D00FFFFFF00FFFFFF00FFFE
      FE00FFF9F300FEF0E100FFF6DF00D24E2D00D24E2D00FFFFFF00FFFFFF00FFFE
      FE00FFF9F300FEF0E100FFF6DF00D24E2D00F1DED400FFFFFF00F5986B00E267
      2B00C88B6E00F0EAE300D77F5200BD310100D79C7F00FFFFFF00DA8C6600D154
      1500E29A7700FEFDFE00DBC9C000ACACAC00CA5D0000FFFFFF00CA5D0000EEB6
      7C00ECB07400ECB07400ECB07400ECB07400ECB07400ECB17400ECB07100ECAE
      6D00EEB37300CA5D00000000000000000000CF670000FFFFFF00FFFFFF00FFFF
      FF00FFFDFC00FFFAF700FFF8EF00FFF3E500FEEFDC00FFEBD300FEE5C900FEE1
      C000FEDDB700FED9B000FFE0B900CF670000D24E2D00FFFFFF00FFFFFF00FFFF
      FF00FFFCF800FFF4E900FFFAE700D24E2D00D24E2D00FFFFFF00FFFFFF00FFFF
      FF00FFFCF800FFF4E900FFFAE700D24E2D00F4E3DB00F6F1EF00FFEADB00FF8A
      4A00DE875D00EEFFFF00FEFCFD00E7B9A100FAFFFF00F3F9FE00E0733D00E671
      3600FFF3EE00F4E7E000A69D9800E1E1E100CA5D0000FFFFFF00FFFFFF00CA5C
      0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D
      0000CA5D0000000000000000000000000000CF670000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFDFC00FFFAF600FEF6ED00FEF2E500FFEDDB00FEE8
      D200FEE4C700FEE0BF00FFE5C200CF670000D24E2D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FFF9F300FFFFF400D24E2D00D24E2D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FFF9F300FFFFF400D24E2D0000000000F1DED400FFFFFF00FFE9
      CE00FFB27100ECAF8700ECE2DF00EBF0F400F1E4E000F6A47900FE8C4E00FFDE
      CA00FDFFFF00F0DDD200CACACA00FEFEFE00CA5D0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFBF300FFFFFF00CA5D
      000000000000000000000000000000000000CF670000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFDF800FFF9
      F000FFF4E500FFEFDC00FFF3DF00CF670000D24E2D00FFFFFC00FFFFFB00FFFF
      FB00FFFFFC00FFFFFA00FFFFFB00D24E2D00D24E2D00FFFFFC00FFFFFB00FFFF
      FB00FFFFFC00FFFFFA00FFFFFB00D24E2D0000000000FAF2ED00F0DFD600FFFF
      FF00FFFFFB00FFF3C600FEDDA800FCCF9800FFC99100FFD4A900FFFEF800FCFF
      FF00F1DFD400CAC8C600FAFAFA0000000000CA5D0000EEB67C00ECB07400ECB0
      7400ECB07400ECB07400ECB07400ECB17400ECB07100ECAE6D00EEB37300CA5D
      000000000000000000000000000000000000CF670000CF670000CF670000CF67
      0000CF670000CF670000CF670000CF670000CF670000CF670000CF670000CF67
      0000CF670000CF670000CF670000CF670000D24E2D00E58D3D00E4893C00E489
      3C00E4893C00E4883C00E58B3B00D24E2D00D24E2D00E58D3D00E4893C00E489
      3C00E4893C00E4883C00E58B3B00D24E2D000000000000000000FBF3EF00F1DC
      D300F5E8E400FDFCFD00FFFFFF00FFFFFF00FFFFFF00FCFBFD00F3E6E000F1DD
      D200DFDCDA00FCFCFC00000000000000000000000000CA5C0000CA5D0000CA5D
      0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D00000000
      00000000000000000000000000000000000000000000D0680000CF670000CF67
      0000CF670000CF670000CF670000CF670000CF670000CF670000CF670000CF67
      0000CF670000CF670000D06700000000000000000000D24E2D00D24E2D00D24E
      2D00D24E2D00D24E2D00D24E2D000000000000000000D24E2D00D24E2D00D24E
      2D00D24E2D00D24E2D00D24E2D00000000000000000000000000000000000000
      0000F5E5DD00F1DCD100EFDBD000EFDBD100EFDCD100F1DBD000EDE1DA00F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A667C00BE9596000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E0E0009894A100D2B8BE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B9CC3001E89E8004B7AA300C896
      9300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5C2D7004979C700837CA400D2B8
      BE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A0502700954B2500944A2500944A
      2400944A2400944A2400944A2400944A2400944A2400944A2400944A2400944A
      2400944A2400944A2400964C2500A151270000000000AE602A00AE602A00AE60
      2A00AE602A00AE602A00AE602A00AE602A00AE602A00AE602A00AE602A00AE60
      2A00AE602A00AE602A00AE602A00000000004BB4FE0051B5FF002089E9004B7A
      A200C69592000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8E8FF004FB4FE004B7AC700837C
      A400D2B8BE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000083422100FFF6ED00FFF3E7008886
      8400FCEDDA00FDEBD50088868400FFE6CA00FFE6CA0088868400FEDEBA00FCD9
      B00088868400FDD7AC00FDD7AC0091492300DAA03900FFD19500EAB77700E4AE
      6700FFBD6000F1AE4F00DC9C3E00FCAA3200FFA92200FB9F1400FB9A0500FB98
      0000FB980100FC990000FF9F0000AE602A000000000051B7FE0051B3FF001D87
      E6004E7AA000CA97920000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BAE2FF0052B7FE004B7A
      C700837CA400D2B8BE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F402000F3EDE500888684008886
      8400888684008886840088868400888684008886840088868400888684008886
      84008886840088868400888684008F482300E7AC1D00EEC09300584E4400534A
      4100D39D5B00866A4600433E3900BA833800D5902F005043300054452F005243
      300055442B00624A2800F6970200AE602A00000000000000000051B7FE004EB2
      FF001F89E6004E7BA200B9949700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BAE2FF0053B7
      FE004A7DCB00837CA400E9DEE100000000000000000000000000000000000000
      0000000000000000000000000000000000008040200088868400888684000066
      0000FEF5E800FFF1E300FEEEDD00FEECD600FEE9D100FEE6CA00FEE3C400FDE0
      BF00FDDDBA00FEDCB500FDDAB1008F482300E7AC1D00FFD0A000CAA27600C097
      6800FBBD6D00D69F5800B9884700EDA54000E9A14200AF7F5600C5853800E08D
      1200B6793700B97B3700FE9D0200AE602A0000000000000000000000000052B8
      FE004BB1FF002787D9005F6A760000000000A8787500C4A39800D5B6A700D0A5
      9F0000000000000000000000000000000000000000000000000000000000B9E0
      FF0053B7FE00568BD000BFC0C400E2CDC600CDA18C00CA998100CB9B8300D3AA
      9600E2CAC40000000000000000000000000080402000FEF6ED0088868400FFF8
      F000FFF5EB00FEF2E600FFF0E000FFEDDA00FEEAD5000033FF00FEE5C800FEE2
      C200FDDFBD00FDDDB7000033FF008F482300E7AC1D00EDC2990060554C005C51
      4700D2A268008B704F004F463C00B5843F00977D92002E42DE006D64A100CA8A
      48003047D3003649CC00EB931700AE602A000000000000000000000000000000
      000055BDFF00B5D6ED00A3908E00B3978800F0E7C800FEFDDA00FEFDD900FDFC
      D800EAD8C200CEAEA30000000000000000000000000000000000000000000000
      0000D2ECFF00DADFE100B98F8100D7AB8E00EDD6AF00FAF4CC00FAF5D400EDDC
      BD00D9B6A100D7B6AA0000000000000000007F401F0088868400888684000033
      FF00FFF7EF00FEF5E900FEF2E300FFEFDE00FEECD800FEE9D200FEE6CB00FEE3
      C600FDE1C000FEDCB600FEDCB6008F482300E7AC1D00FED1A200BC9B7800B391
      6C00FDC47F00D3A16500A17B4D00EFAA4D00E9A6570088739400C78D5500FEA3
      17009C746900A1745F00FE9D0100AE602A000000000000000000000000000000
      000000000000CCB7B700D9B8A500FEF0C200FFFDD600FFFFDA00FFFFDA00FFFF
      DF00FFFFEE00F6F0EB00B48D8900000000000000000000000000000000000000
      000000000000E8D5CF00D8A98C00FFF5C400FFF6C300FFFFD900FFFFE900FFFF
      F80000000000D9B6A000DDC5C000000000007F401F00FFF9F20088868400FEFB
      F500FFF8F100FEF6ED0000660000FEF1E100FEEEDC0000660000FEE8CF00FEE5
      CA000033FF00FDDFBE00006600008F482300E7AC1D00E9BF970063584D005A51
      4900CDA574008A71550047413C00B38649009D839700263EE3006E66A500CE90
      4B003148D2003448CC00E3911E00AE602A000000000000000000000000000000
      000000000000C6978F00F6E0B500FFE1A700FDF7D000FFFFDA00FFFFE100FFFF
      F200FFFFFA00FFFFFF00DFD0BE00000000000000000000000000000000000000
      000000000000D6AB9700EDD3AA00FFE5B300FFF9C600FFFFDC00FFFFEC00FFFF
      FB00FFFFF600EDDCBD00CCA38F0000000000804020008886840088868400FFFC
      F700FEF9F400FFF7F000FEF5EA00FEF2E400FFF0DF00FEECD800FEE9D200FEE7
      CD0000660000FEE1C000FDDFBB008F482300E7AC1D00FFD4A500FCC79400F5C1
      9000FFCF9200FEC07D00EFB06A00FFBD6100FFB74F00E3A45B00FCAB3C00FFAC
      2400EE9B2C00F2981B00FF9F0000AE602A000000000000000000000000000000
      000000000000DBBAA800FFE9AC00A99AB3007E97E6006584FB006584FB006584
      FB007F98FD00DAE3EE00F2EFD000C79C96000000000000000000000000000000
      000000000000CC9A8200FAEFC400FFDBA800FFF2BF00FFFFD600FFFFE400FFFF
      EB00FFFFE500FAF5D100C9998100000000007F3F1F00FFFDFB0088868400FEFD
      F900FFFBF600FFF8F2000033FF00FEF4E800FEF2E200FEEEDC00FEEBD600FDE8
      D000FEE6CA00FDE3C500FDE0BE008E472200E7AC1D00F5CAA000E1DEC000E2E0
      C100DEDBBC00E1DCB900E3DAB100DED5A800E6D39F00FFBF5D00FCAB3C00F3A3
      3300F69F2000F89D1300FF9F0400AE602A000000000000000000000000000000
      000000000000E4C7AF00FFEBA4005661CE00002CFF000235FC000335FB000134
      FB00002AFD00B0C1E800FAF8D700C6AC9A000000000000000000000000000000
      000000000000CC9A8200FAEFC400FFE7BC00FFF3C100FFFFCD00FFFFD400FFFF
      D600FFFFD500FAF3C900C998800000000000854523008886840088868400FFFD
      FB00FFFBF800FFFAF500FFF7F000FFF5EB00FEF2E600FEF0E000FFEEDA00FEEA
      D300FEE7CD00FEE4C700FEE2C200944D2900E7AC1D00D4AF8C006BD3CA006CD7
      CE006CD7CE006CD7CF006CD7CF0066D7D1008DE0D900FCC57B00CA8D3D00B581
      3900AD7A3100C1822500FFA20B00AE602A000000000000000000000000000000
      000000000000DEBEAA00FFECB400CFA99500C3AEAD009AAFEA009AAFEA009AAF
      EA00C4D1E300EFF2DE00F6F2D200C8A298000000000000000000000000000000
      000000000000D7B09E00EDD8B600FFF2DB00FFE1B900FFEFBD00FFF1BF00FFF5
      C300FFF4C100EDD5AC00CDA38F0000000000B26C3900D7A96100D3A35D00D3A3
      5C00D3A35C00D3A35C00D3A35C00D3A35C00D3A35C00D4A45D00D8AE6D00D7A9
      6200D9AE6C00CFA76900CAAA7700B56D3800EFB53E00F8C9A200D1AC8600D1AD
      8600D1AD8600D1AC8500D1AA7B00CFA46E00DCAB6B00FFBD6A00F6AF5200FCAF
      4600E79D3700F3A02800FFA71600AE602A000000000000000000000000000000
      000000000000CA9F9700FDEFC200FFECC000F4D3A600F4D09D00F9E4B800FEF6
      CF00FFFFD100FFFFDA00E5D9BB00000000000000000000000000000000000000
      000000000000EEDDD900D7B0970000000000FFF9EE00FFF1C800FFDAA700FFE6
      B400FFF5C600D6A88A00E6D3CE0000000000AE5C2700D87E2600DB7F2600DA7F
      2600DA7F2600DA7F2600DA7F2600DA7F2600DA7F2600DC822C00F6BB8000E78A
      2100F6BB8000B37D53004E6ED400B95D190000000000E4A70A00EDB33900F0B8
      4D00EEB64D00E9B24D00F2BA6200F2B65A00EEB04F00EAA94500E9A43A00E79F
      3100E89B2700E6971F00D2851A00000000000000000000000000000000000000
      00000000000000000000DDC4AE00FFFFFF00FFF7E900F3CC9800F0BD8900F4CE
      9D00FCE6B600FDF6C800BE9D8F00000000000000000000000000000000000000
      00000000000000000000DDBFB400D6AF9B00EDD8BF00FAF1CC00FAEDC200EDD5
      AE00D6A68A00D6B4A900000000000000000000000000A95A2E00AA5A2F00AA5A
      2F00AA5A2F00AA5A2F00AA5A2F00AA5A2F00AA5A2F00AA5B2F00AE5F3200AA58
      2700AF603100A3562E009C573B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3BFBA00F6F0DC00FFF2C000FDE6B100FEE9
      B500F4DEB700D0AD9D0000000000000000000000000000000000000000000000
      0000000000000000000000000000EEE0DC00D1AA9900C99A8200CB9C8300D6AD
      9C00ECDCD7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CAAD9600CFAE9B00DDBFA900DCB8
      A800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7818300B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300B78183000000000000000000078DBE00078DBE00078D
      BE00078DBE00078DBE00078DBE00078DBE00078DBE00078DBE00078DBE00078D
      BE00078DBE00078DBE0000000000000000000000000000000000A5938000A593
      8000A59380000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A87D7800B7818300B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B781830000000000000000000000000000000000C7A79C00FEEE
      D400F7E3C500F6DFBC00F5DBB400F3D7AB00F3D3A200F1CF9A00F0CF9700F0CF
      9800F0CF9800F5D49A00B781830000000000078DBE0025A1D10072C7E70085D7
      FA0066CDF90065CDF90065CDF90065CDF90065CDF80065CDF90065CDF80066CE
      F90039ADD800078DBE00000000000000000018741D00CAC5AA00DBCFC800DBD0
      C400F2DFCB00A5938000A5938000A5938000A593800000000000000000000000
      00000000000000000000000000000000000000000000AB7F7900F6E6CA00F6E3
      C500F5E1C000F5DFBB00F4DDB700F3DBB300F3D9AF00F2D7AB00F1D6A800F1D3
      A500F1D3A200B3897B0000000000000000000000000000000000C7A79E00FDEF
      D900F6E3CB00F5DFC200F4DBBA00F2D7B200F1D4A900F1D0A200EECC9900EECC
      9700EECC9700F3D19900B781830000000000078DBE004CBCE70039A8D100A0E2
      FB006FD4FA006FD4F9006ED4FA006FD4F9006FD4FA006FD4FA006FD4FA006ED4
      F9003EB1D90084D7EB00078DBE0000000000158A2D00CADABB00DDD1CC00D2CF
      CC00FFF2E000FFF0DA00FFEBD000FFE8C600FFE6BE00A5938000A5938000A593
      80000000000000000000000000000000000000000000AE827A00F7E8CE000066
      0000F6E4C600F6E1C10099330000993300009933000099330000993300009933
      0000F2D4A500B3897B0000000000000000000000000000000000C7A9A100FEF3
      E300F8E7D300F5E3CB00F5DFC300F3DBBB00F2D7B200F1D4AB00F0D0A300EECC
      9A00EECC9700F3D19900B781830000000000078DBE0072D6FA00078DBE00AEEA
      FC0079DCFB0079DCFB0079DCFB0079DCFB0079DCFB007ADCFB0079DCFA0079DC
      FA0044B5D900AEF1F900078DBE000000000000710E00BBD5B400D7CCCB00D2CF
      CC00F1E7DA0070685F0070685F00D2B9A500E2C6AA00E5C6A300FFDDAF00A593
      80000000000000000000000000000000000000000000B2857C00F9EBD500F8E8
      D000F7E6CB00F7E4C600F5E1C200F5E0BD00F4DDB900F3DBB500F3DAB100F2D7
      AD00F2D5A900B3897B0000000000000000000000000000000000C9ACA500FFF7
      EB00F9EBDA00F7E7D200F6E3CA00F5DFC200F4DBB900F2D7B200F1D4AA00F0D0
      A100EFCD9900F3D19800B781830000000000078DBE0079DDFB001899C7009ADF
      F30092E7FB0084E4FB0083E4FC0083E4FC0084E4FC0083E4FC0083E4FB0084E5
      FC0048B9DA00B3F4F900078DBE0000000000006F030098BA9500D9CFD200D2CF
      CC00E9E3DA00D4C9BD00D0C9B20070685F0070685F0070685F00F9D2AF00A593
      80000000000000000000000000000000000000000000B68A7E00F9EDDA00F9EB
      D500F8E8D000F7E7CC00F6E4C700F5E2C200F5E0BF00F5DEBA00F4DCB600F4DA
      B100F2D8AD00B3897B0000000000000000000000000000000000CEB2AA00FFFC
      F400FAEFE400F8EADA00F7E7D300F5E2CB00F5DFC200F4DBBB00F1D7B200F1D3
      AA00F0D0A100F3D29B00B781830000000000078DBE0082E3FC0043B7DC0065C3
      E000ACF0FD008DEBFC008DEBFC008DEBFD008DEBFD008DEBFC008DEBFD000C85
      18004CBBDA00B6F7F9006DCAE000078DBE000068000082A98000D5CED100D2CF
      CC00EAE6E20070685F003B7F3400105F1000105C10001B671800105D10000F5E
      0F000F5F0F0000000000000000000000000000000000BB8E8000FAF0DF000066
      0000F9ECD600F9E9D10099330000993300009933000099330000993300009933
      0000AA987C007D60560000000000000000000000000000000000D3B7AF00FFFF
      FD00FBF4EC00FAEFE300F9EBDA00F7E7D200F5E3C900F5DFC200F4DBBA00F2D7
      B100F0D4A900F5D5A300B781830000000000078DBE008AEAFC0077DCF300229C
      C600FDFFFF00C8F7FE00C9F7FE00C9F7FE00C9F7FE00C8F7FE000C8518003CBC
      5D000C851800DEF9FB00D6F6F900078DBE0000620000699C6A00D3CFD200D2CF
      CC00D9D5D6008CA185000C690D00087C080000970000038C0300067B06000970
      09000C660C000F5F0F000F5E0F000961090000000000C0928200FBF3E400FAF0
      E000FAEEDB00F8ECD700F8EAD200F8E7CD00F7E5C900F6E3C400B4A5AD005C55
      8E00756B7E007A5E570000000000000000000000000000000000D7BBB200FFFF
      FF00FEF9F500FBF3EC00FAEFE200F9EADA00F8E7D200F5E3CA00F5DEC200F4DB
      BA00F2D8B200F6D9AC00B781830000000000078DBE0093F0FE0093F0FD001697
      C500078DBE00078DBE00078DBE00078DBE00078DBE000C85180052D97F0062ED
      970041C465000C851800078DBE00078DBE000000000046834700D2CFCC00D2CF
      CC00D7D6D500257928000E6D12000AA21400049D080000990000009A0000009B
      0000009D0000009D0000017A01000263020000000000C6978400FCF5E900FBF2
      E500FAF0E100F9EEDC00F9ECD700F9EAD300F8E8CE00F7E5C9002A2AD3002727
      E0001313B0001B17630000000000000000000000000000000000DABEB300FFFF
      FF00FFFEFD00FDF8F400FBF3EC00F9EFE300F8EADA00F7E7D200F6E2CA00F6DE
      C100F4DBB900F8DDB400B781830000000000078DBE009BF5FE009AF6FE009AF6
      FE009BF5FD009BF6FE009AF6FE009BF5FE000C85180046CE6C0059E4880058E1
      880061EB940040C165000C851800000000000000000031753100D2CFCC00FFFB
      FF006B986A000F6111001AAC320013AC28000DA61B0007A00D00029B03000099
      0000009C000000850000006500000000000000000000CB9C8600FCF7EE000066
      0000FBF3E600FAF1E100993300009933000099330000993300008A8AF7008F8F
      FE002424D6001210680000000000000000000000000000000000DEC1B500FFFF
      FF00FFFFFF00FFFEFD00FEF9F400FBF3EB00FAEFE200F9EBD900F8E6D100F6E2
      C800F7E1C200F0DAB700B781830000000000078DBE00FEFEFE00A0FBFF00A0FB
      FE00A0FBFE00A1FAFE00A1FBFE000C8518000C8518000C8518000C85180056E1
      840047CD6E000C8518000C8518000C851800000000000E5E0E00D2CFCC00EBF2
      E9001466170020A03D0024BC48001DB63B0017B02F0011AA22000BA3150005A1
      0A00008A000000660000000000000000000000000000CFA08900FDF9F200FDF7
      EE00FBF5EB00FCF4E600FBF2E200FAF0DE00F9ECD900F8EAD5007D79CF007E7A
      D500776EAC00211C740000000000000000000000000000000000E2C5B500FFFF
      FF00FFFFFF00FFFFFF00FFFEFD00FDF9F400FBF3EB00FAEEE200FAEDDC00FCEF
      D900E6D9C400C6BCA900B78183000000000000000000078DBE00FEFEFE00A5FE
      FF00A5FEFF00A5FEFF00078CB60043B7DC0043B7DC0043B7DC000C8518004EDD
      790036BA54000C851800000000000000000000000000055D0500B9B4B8003E83
      3F00157C260033CD68002DC55C0027BF4F0021B941001AB3350015B02B000B9B
      17000168010000000000000000000000000000000000D4A48A00FDFAF600FDF9
      F300FDF7EF00FCF6EB00FCF3E800FAF2E300FAF0DE00F9EDDA00F1E4D500E9DA
      CD00F1E0CA002822770000000000000000000000000000000000E5C7B700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FDF8F300FDF6EC00F1E1D500C6A1
      9400B5948900B08F8100B7818300000000000000000000000000078DBE00078D
      BE00078DBE00078DBE00000000000000000000000000000000000C85180040D0
      65000C851800000000000000000000000000000000000464040051734F001464
      17002FC7620033CB670032CF68002FCC62002AC9570026BF4C001BAC3500046F
      07000000000000000000000000000000000000000000D8A88C00FEFCFA000066
      0000FDF9F300FCF8F00099330000993300009933000099330000993300009933
      0000F3E5D0003028780000000000000000000000000000000000E9CBB800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FFFEF900E3CFC900BF8C
      7600E8B27000ECA54A00C5876800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C8518002AB743002DBA
      49000C8518000000000000000000000000000000000000000000156D1C002A72
      39003BA060003A975A00399A5A0037AA600037A25C002BC55900087810000000
      00000000000000000000000000000000000000000000DBAB8D00FEFEFC00FEFD
      FA00FEFCF700FDF9F400FDF8F000FDF6EC00FCF4E900FBF3E500FBF0E000FAEE
      DC00F6E8D600352B7A00000000000D0D6F000000000000000000ECCDBA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4D4D200C89A
      7F00FAC57700CD93770000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C85180021B538000C85
      1800000000000000000000000000000000000000000000000000454A43003F57
      42002D5A30002F62350033603A0032734100376B430011822000000000000000
      00000000000000000000000000000000000000000000DEAD8E00FFFFFF00FEFE
      FD00FEFDFA00FEFBF700FDFAF400FDF9F100FCF7ED00FBF5EA00FBF3E500FAF1
      E200FAEEDC0030297B00000000000D0D6F000000000000000000EACAB600FCF7
      F400FCF7F300FBF6F300FBF6F300FAF5F300F9F5F300F9F5F300E1D0CE00C797
      7C00CF9B86000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C8518000C8518000C8518000C8518000000
      000000000000000000000000000000000000000000000000000000000000454A
      4300454A4300454A4300435045004351450038563A0000000000000000000000
      00000000000000000000000000000000000000000000DEAD8E00DAA48200DAA4
      8200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200DAA482000E0E7A0010108F00000000000000000000000000E9C6B100EBCC
      B800EBCCB800EBCCB800EBCBB800EACBB800EACBB800EACCB900DABBB000B885
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000C8518000C8518000C8518000C85180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000000100000100010000000000000800000000000000000000
      000000000000000000000000FFFFFF00F807FFFF00000000F807F83F00000000
      F007E6CF00000000E003DEF700000000C003BEFB00000000C001BC7B00000000
      80017ABD00000000000176DD000000000000000100000000900076DD00000000
      E0007ABD00000000E000BC7B00000000C005BEFB00000000C007DEF700000000
      E40FE6CF00000000FE7FF83F00000000FFFFFFFFFCFFFFFFFFFFFFFFFCFFFFFF
      FFFFFFC7FCFFFF21BFFD7FBBFAFFFC0F8001BF7DFAFF78F7BFFDBE7DE6FF73FB
      FFFFDE7E1EFF87FBFFFFDEFE0000EFF98FF1EDFFFEF8EFFDAFF5F3FFFEE7DFFD
      8FF1FFFFFEDFDFFDEFF7FFFFFEBFDFFD8FF7FFFFFEBFBFFFFFFFFFFFFE7FBFFF
      FFFFFFFFFE7FBFFFFFFFFFFFFE7FFFFFFFFDFFFFFFFFFFFDDFFBFFFFFFE7DFFB
      8001FFFFFFC78001DFF7BFFD7FBBDFF7DFEF8001BF7DDFEFDFEFBFFDBF7DDFEF
      DFDFFFFFDEFEDFDF1FBFFFFFDEFE1FBFCE7F8FF1EDFFCE7FD1FFAFF5F3FFD1FF
      DFFF8FF1F3FFDFFFDFFFEFF7FFFFDFFFDFFF8FF7FFFFDFFFDFFFFFFFFFFFDFFF
      DFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFDFFFFFFFDFFB0001
      8001FFFE8001F83FDC0FFFFCDFF7F6DFDBF7FF80DFEFEEEFD7FBFF31DFEFDEF7
      CDED7C59DFDFDEF7CEDD7AED1FBFBEFBCF3D7AADCE7FBEFBCEDD7A29D1FFBEFB
      CDED1B23DFFFBEFBD7FB7A87DFFF7EFDDBF77AAFDFFF7EFDDC0F7BEFDFFF7EFD
      DFFF0DDFDFFF7EFDFFFFFFFFFFFF7EFDF81FF81FC3FFAAABE007E00781FF8001
      C003C00300FFFFFF80018001007FBFF180018001803FBFF700000000C01FDFF7
      000003C0E00FDFF7000007E0F007EFF7000007E0F803F7FF000003C0FC01F81F
      00000000FE00FFE780018001FF00FFFB80018001FF81FFFBC003C003FFC3FFFB
      E007E007FFFFFFFDF81FF81FFFFFFFFDFFFFFFFFFFFF9FF9FFFFFFFFFFFF8FF1
      FF21AAABFE3F87E1FC0FAAABF94F83C178F7CAABF557818173FBCAABE5538001
      87FBEAAB95558001EFF9F2ABC1548001EFFDF80BBC558001DFFDFFE3FF138001
      DFFDFFFBFFCF8001DFFDFFFBFFFF8001BFFFFFFBFFFFE007BFFFFFFDFFFFF00F
      BFFFFFFDFFFFF81FFFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFF15FFFDF7FFFFFFF
      F5BFFFBFBFFFFFFFF953FF7FDFFFFFFFFDF7FE0FEF0FFF0FFDFBFCF7F6F7FEF4
      FDF3F9FBF9FBFDFBFFFFF3FDF9FDFBE5E00FE7FDF6FDF79DFFFFD7FFF77FF77F
      F1BFAFFFEFBFECFFF5BF6FFFEFDFEBFFF993DFFFDFEFC7FFFDB7DFFFDFF79FFF
      FDBBBFFFBFFB3FFFFDD3BFFFBFFFBFFFFFFFFFFFFFFFFFFFC0038001FFDFF15F
      80018001FFCFF5BF80018001E007F95F80018001FFCFFDFF80018001FFDFFDFF
      80018001FFFFFDFF80018001FFFFFFFF800180018557E00F80018001DD67FFFF
      80018001DE03F1BF80018001DEABF5BF80018001EFFFF99F80018001EF7FFDBF
      C0038001FFFFFDBFFFFFFFFFFFFFFDDF9FFFFFFFFFFFFFFF0FFFC003C003C003
      07FF80018001800183FF800180018001C1FF800180018001E10F800180018001
      F003800180018001F801800180018001F801800180018001F800800180018001
      F800800180018001F800800180018001F801800180018001FC01800180018001
      FE03C003C003C003FF0FFFFFFFFFFFFFFC1FFE3FFFFF9FFFF00FE00700210FFF
      F00FE007002907FFF00F8003002183FFE01F80010021C1FFC0078001FFFEE10F
      C00380010021F003C00380010029F801C00380010021F801C003C0030021F800
      C003E007FFFEF800C003F81F0021F800C003F81F0029F801C003F81F0021FC01
      E003F81F0021FE03FE07FC3FFFFEFF0FDC1FDC1FFFFFC7FFC01FC01FF70701FF
      DC1FDC1FF00701FFDFFFDFFFF70700F9DC1FDC1FF7FF8000C01FC01FF707C000
      DC1FDC1FF0078001DFFFDFFFF7078001DC1FDC1FF7FF8001C01FC01FF7078001
      DC1FDC1FF007800107E107E4F707800107E907E0C1FF800307E507F1C1FF8007
      FFE0FFE0C1FFC007FFFEFFE4FFFFF007FFFF80FFF33FDC1F0000007FE007C01F
      0000007FC000DC1F0000007F8001DFFF0000007F0000DC1F000000000000C01F
      000000000000DC1F000000008000DFFF00008000E001DC1F0000F800F003C01F
      0000F800F01FDC130000F800E03F07F30000F800E03F07C08001F800C03F07C0
      FFFFF800C07FFFF3FFFFF800F8FFFFF30000FFFFFF80FF800000C007FF80FF80
      00008003FF80FF8000008003FF80FF8000008003FF80FF8000008003FF80FF80
      00008003FF80FF80000080030081008100008003008200830000800300DE00E3
      00008003009C00C18001800300000080E0078003000100E3F00F8003000300E3
      FC3FC007019F01C3FFFFFFFF03DF0307F00000000000E003F00000000000C001
      F000000000008000C000000000000000C000000000000000C000000000000000
      0000000000000000000080010000000000000000000000000001000000000000
      000300000000000000030000000000000007000000008000000F000000008001
      000F00000000C003801F80018181F00FFFFF9FFF1FFFFFFFFFFF0FFF0FFF0000
      800107FF07FF0000000083FF83FF00000000C1FFC1FF00000000E10FE0070000
      0000F003F00300000000F801F80900000000F801F80100000000F800F8010000
      0000F800F80100000000F800F80100000000F801F90100008001FC01FC038001
      FFFFFE03FE07FFFFFFFFFF0FFFFFFFFFC0018003C7FF8003C0010003007F8003
      C0010001000F8003C0010001000F8003C0010001000F8003C001000000078003
      C001000000008003C001000080008003C001000180018003C001000080038003
      C001800380078003C001C3C7800F8003C001FF87C01F8002C003FF8FC03F8002
      C007FE1FE07F8001C00FF87FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'mmf'
    Filter = 'Archivos MaxMath|*.mmf'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist]
    Left = 12
    Top = 100
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'mmf'
    Filter = 'Archivo de MaxMath|*.cfm'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofNoReadOnlyReturn]
    Left = 44
    Top = 100
  end
  object icnTrayIcon: TTrayIcon
    Hint = 'MaxMath'
    PopupMenu = mnuTray
    Visible = True
    Left = 44
    Top = 132
  end
  object pdgPrint: TPrintDialog
    Options = [poPrintToFile, poDisablePrintToFile]
    Left = 108
    Top = 100
  end
  object imlHot: TImageList
    Left = 140
    Top = 68
    Bitmap = {
      494C01013E004000080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000000001000001002000000000000000
      0100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000006464640064646400646464006464640064646400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000006464
      6400646464000000000000000000646464000000000000000000646464006464
      6400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000646464000000
      0000000000000000000000000000646464000000000000000000000000000000
      0000646464000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000064646400000000000000
      0000000000000000000000000000646464000000000000000000000000000000
      0000000000006464640000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000064646400000000000000
      0000000000000000000064646400646464006464640000000000000000000000
      0000000000006464640000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000006464640000000000000000000000
      0000000000006464640000000000646464000000000064646400000000000000
      0000000000000000000064646400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000006464640000000000000000000000
      0000646464000000000000000000646464000000000000000000646464000000
      0000000000000000000064646400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000006464640064646400646464006464
      6400646464006464640064646400646464006464640064646400646464006464
      6400646464006464640064646400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000006464640000000000000000000000
      0000646464000000000000000000646464000000000000000000646464000000
      0000000000000000000064646400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000006464640000000000000000000000
      0000000000006464640000000000646464000000000064646400000000000000
      0000000000000000000064646400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00000000000000000064646400000000000000
      0000000000000000000064646400646464006464640000000000000000000000
      0000000000006464640000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000064646400000000000000
      0000000000000000000000000000646464000000000000000000000000000000
      0000000000006464640000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000646464000000
      0000000000000000000000000000646464000000000000000000000000000000
      0000646464000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      6400646464000000000000000000646464000000000000000000646464006464
      6400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006464640064646400646464006464640064646400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF0000000000000000000000FF000000FF
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF00000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      000000FF0000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      00000000000000000000000000000000000000000000000000000000000000FF
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF00000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000840000000000
      0000000000008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF0000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000008400
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF0000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084000000000000008400
      0000000000008484840000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000FF00000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF00000000000000FF
      00000000000000FF00000000000000FF00000000000000FF00000000000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      000000000000C6C6C60084848400C6C6C60084848400C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000008484
      8400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6C6008484
      8400C6C6C6000000000000000000000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6008484840000000000000000000000000000000000FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C60084848400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6
      C60084848400C6C6C6000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C600C6C6C60084848400000000000000000000000000C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000C6C6C6008484
      8400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6C6008484
      8400C6C6C6008484840000000000000000000000000000000000C6C6C600C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000C6C6C600FFFF
      FF00C6C6C600FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000000000000000000000000000000000C6C6C60084848400C6C6
      C60084848400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6
      C60084848400C6C6C60084848400000000000000000084848400C6C6C600C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000C6C6C600FFFF
      FF00C6C6C600C6C6C60084848400000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000084848400C6C6C6008484
      8400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6C6008484
      8400C6C6C60084848400C6C6C600000000000000000084848400C6C6C600FFFF
      FF00C6C6C600000000000000000000000000000000000000000000000000C6C6
      C600FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      00008484840084848400C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000000000000000000000000000000000C6C6C60084848400C6C6
      C60084848400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6
      C60084848400C6C6C60084848400000000000000000084848400C6C6C600FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      0000000000008484840084848400C6C6C600C6C6C600C6C6C600FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000084848400C6C6C6008484
      8400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6C6008484
      8400C6C6C60084848400C6C6C600000000000000000084848400C6C6C600FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      000000000000000000008484840084848400C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60084848400C6C6
      C60084848400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6
      C60084848400C6C6C60084848400000000000000000084848400C6C6C600FFFF
      FF00C6C6C600000000000000000000000000000000000000000000000000C6C6
      C600FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      00000000000000000000000000008484840084848400C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C6008484
      8400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6C6008484
      8400C6C6C60084848400C6C6C600000000000000000084848400C6C6C600C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000C6C6C600FFFF
      FF00C6C6C600C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C60084848400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6
      C60084848400C6C6C60000000000000000000000000000000000C6C6C600C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840084848400C6C6
      C600C6C6C600C6C6C600FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6008484
      8400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6C6008484
      8400C6C6C600848484000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60084848400C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6
      C600848484000000000000000000000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400C6C6C60084848400C6C6C60084848400C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      00000000000000FF00000000000000FF00000000000000FF00000000000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF0000000000000000000000FF000000FF
      00000000000000000000000000000000000000000000000000000000000000FF
      00000000000000FF00000000000000FF00000000000000FF00000000000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400C6C6C600000000000000000000000000000000000000000000000000C6C6
      C6008484840084848400000000000000000000FF000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000000FF000000000000000000000000000000000000000000000000000000FF
      00000000000000FF00000000000000FF00000000000000FF00000000000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000FF00000000000000FF00000000000000FF00000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400C6C6C600C6C6C60000000000000000000000000000000000C6C6C600C6C6
      C6008484840084848400000000000000000000FF000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      00000000000000FF0000000000000000000000000000000000000000000000FF
      00000000000000FF00000000000000FF00000000000000FF00000000000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      000000FF00000000000000FF00000000000000FF00000000000000FF00000000
      000000FF00000000000000000000000000000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C6000000000000000000C6C6C600C6C6C600C6C6
      C600848484008484840000000000000000000000000000FF000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000FF00000000000000FF00000000000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      000000FF00000000000000FF00000000000000FF00000000000000FF00000000
      000000FF00000000000000000000000000000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF0000000000000000000000000000000000000000
      00000000000000FF00000000000000FF00000000000000FF00000000000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000FF00000000000000FF00000000000000FF00000000
      000000FF00000000000000FF0000000000000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF00000000000000FF00000000
      000000FF00000000000000000000000000000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600FFFFFF00FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF0000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006C2A00006828
      00005D240000532000004F1F00004F1F00004F1F00004F1F00004F1F00004F1F
      00004F1F000040180000000000000000000000000000811E0000811E0000811E
      0000811E0000811E0000811E0000811E0000811E0000811E0000811E0000811E
      0000811E0000811E0000811E0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000973B0000BB490000B446
      0000AA420000A03F0000993C0000973B0000973B0000993C0000993C0000973B
      00009E3E00007B300000401800000000000000000000811E0000FFB15E00FFAC
      5300FFA94600FFA33A00FF9E3000FF992400FF931B00FF8F1200FF8A0C00FF86
      0500FF830100FF810000811E0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B8480000E3590000D453
      0000CC500000C54D0000BB490000B1450000AF440000AF440000AF440000AF44
      0000B64700009E3E00004F1F00000000000000000000811E0000FFB66C00FFB1
      6300FFAD5600FFA74900FFA33F00FF9E3300FF992700FF931D00FF8F1500FF8B
      0C00FF880600FF830200811E00000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C74E0000F05E0000E158
      0000D1520000C74E0000C04B0000B6470000AF440000AA420000A7410000A541
      0000AF440000993C0000511F00000000000000000000811E0000FFBB7600FFB7
      6E00FFB46500FFAF5800FFAA4D00FFA54200FF9F3500FF9A2A00FF961F00FF90
      1600FF8C0D00FF880700811E0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000FF680200F660
      0000E3590000D4530000CA4F0000C24C0000BB490000B1450000AA420000A741
      0000AF440000993C00004F1F00000000000000000000811E0000FFBB7A00FFBB
      7900FFB87000FFB46700FFAF5D00FFAB5100FFA64400FFA13800FF9D2D00FF97
      2200FF921800FF8E1000811E0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000FF7A1600FF6C
      0600FFFFFF00FFFFFF00D7540000CF510000C74E0000BD4A0000FFFFFF00FFFF
      FF00AF440000993C00004F1F00000000000000000000811E0000FFBB7A00FFBB
      7A00FFBB7900FFB87300FFB56A00FFB15E00FFAD5300FFA94700FFA13B00FF9D
      3000FF972500FF921B00811E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000FF903500FF75
      0F00FFFFFF00FFFFFF00FFFFFF00DC560000D4530000FFFFFF00FFFFFF00FFFF
      FF00B64700009C3D0000511F00000000000000000000811E00006BBCB70088BC
      AA00AFBB9900DDBB8700FABA7700FFB66C00FFB26000FFAD5600FFA94B00FFA4
      3F00FF9E3200FF992600811E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000FF9F4E00FF7D
      1900FF6A0400FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C24C
      0000C04B0000A3400000592300000000000000000000811E000000BDFF0000BD
      FF0000BDFF0006BDF7001FBDE20038BCCF005DBAB60083B69C0082B495008FB1
      8600DEA65100FF9F3600811E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000FFA65A00FF82
      2100FF6E0800FF660100FEFEFE00FFFFFF00FFFFFF00FFFFFF00D9550000CF51
      0000CC500000B14500006A2900000000000000000000811E000000BDFF0000BD
      FF0000BDFF0000BDFF0000BDFF0000BDFF0000BDFF0000BDFF0000BDFF0000BD
      FF0021B8D30066B19800811E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000FFAD6700FF8A
      2D00FF781300FF730D00FF690300FFFFFF00FFFFFF00EE5D0000E65A0000DE57
      0000D9550000BD4A0000792F00000000000000000000811E000011A56A001BB4
      A1001FBABC0012A56A0005901F000E9F540021BCC60024C0D80021BCC50018AF
      8E000EA0550010A46500811E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000FFB67600FF97
      4100FF7E1B00FF7A1600FF720C00FF6B0500FF6A0400FF640000F05E0000E95B
      0000E65A0000C74E0000873500000000000000000000811E00002E732E00486D
      4800536A53002F732F000E7B0E0025752500586A58005F685F0065745D003F6E
      3F00267526002D732D00811E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000FFBB7F00FFB4
      7200FFA45600FF9A4600FF903500FF842400FF7A1600FF6B0500F8620000F05E
      0000F05E0000D9550000993C00000000000000000000811E0000867E73007673
      6D006D6C6900676767006767670067676700958A7900D4BA9100F0CE9C00D1B7
      9100998E7B00847E7300811E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000FFA55800FFBB
      7F00FFBD8300FFB67600FFAC6500FF9D4A00FF872800FF740E00FF660100F862
      0000FB630000E3590000A54100000000000000000000811E0000DDC09500D0B6
      9000BBA68800888074007B766F009C8F7B00E7C79900FFD9A100FFD9A100FFD9
      A100EDCB9A00DDC09500811E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EE5D0000FF70
      0A00FF720C00FF700A00FF6C0600FF660100EE5D0000DE570000D1520000CC50
      0000CF510000B8480000000000000000000000000000811E0000811E0000811E
      0000811E0000811E0000811E0000811E0000811E0000811E0000811E0000811E
      0000811E0000811E0000811E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000314B6200AC7D7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005084B2000F6FE100325F8C00B87E
      7A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006C2A00006828
      00005D240000532000004F1F00004F1F00004F1F00004F1F00004F1F00004F1F
      00004F1F000040180000000000000000000000000000000000006C2A00006828
      00005D240000532000004F1F00004F1F00004F1F00004F1F00004F1F00004F1F
      00004F1F000040180000000000000000000000000000000000006C2A00006828
      00005D240000532000004F1F00004F1F00004F1F00004F1F00004F1F00004F1F
      00004F1F000040180000000000000000000032A0FE0037A1FF00106FE200325F
      8B00B67D79000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000973B0000BB490000B446
      0000AA420000A03F0000993C0000973B0000973B0000993C0000993C0000973B
      00009E3E00007B300000401800000000000000000000973B0000BB490000B446
      0000AA420000A03F0000993C0000973B0000973B0000993C0000993C0000973B
      00009E3E00007B300000401800000000000000000000973B0000BB490000B446
      0000AA420000A03F0000993C0000973B0000973B0000993C0000993C0000973B
      00009E3E00007B30000040180000000000000000000037A4FE00379FFF000E6D
      DE00355F8900BB7F790000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B8480000E3590000D453
      0000CC500000C54D0000BB490000B1450000AF440000AF440000AF440000AF44
      0000B64700009E3E00004F1F00000000000000000000B8480000E3590000D453
      0000CC500000C54D0000BB490000B1450000AF440000AF440000AF440000AF44
      0000B64700009E3E00004F1F00000000000000000000B8480000E3590000D453
      0000CC500000C54D0000BB490000B1450000AF440000AF440000AF440000AF44
      0000B64700009E3E00004F1F000000000000000000000000000037A4FE00359E
      FF000F6FDE0035608B00A67B7F00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C74E0000F05E0000E158
      0000D1520000C74E0000C04B0000B6470000FFFFFF00FFFFFF00A7410000A541
      0000AF440000993C0000511F00000000000000000000C74E0000F05E0000E158
      0000D1520000C74E0000FFFFFF00FFFFFF00AF440000AA420000A7410000A541
      0000AF440000993C0000511F00000000000000000000C74E0000F05E0000E158
      0000D1520000C74E0000C04B0000B6470000AF440000AA420000A7410000A541
      0000AF440000993C0000511F00000000000000000000000000000000000038A5
      FE00329DFF00156DCE00444F5B0000000000925D5A00B48C8000C9A39100C28F
      88000000000000000000000000000000000000000000CA4F0000FF680200F660
      0000E3590000D4530000CA4F0000FEFEFE00FFFFFF00FFFFFF00AA420000A741
      0000AF440000993C00004F1F00000000000000000000CA4F0000FF680200F660
      0000E3590000D4530000FFFFFF00FFFFFF00FEFEFE00B1450000AA420000A741
      0000AF440000993C00004F1F00000000000000000000CA4F0000FF680200F660
      0000E3590000D4530000CA4F0000FFFFFF00FFFFFF00B1450000AA420000A741
      0000AF440000993C00004F1F0000000000000000000000000000000000000000
      00003BABFF00A1CAE7008C7775009F7F6E00EBE0B800FEFCCF00FEFCCE00FCFB
      CC00E3CCB100C0998C00000000000000000000000000CA4F0000FF7A1600FF6C
      0600F6600000E3590000FEFEFE00FFFFFF00FFFFFF00BD4A0000B4460000AC43
      0000AF440000993C00004F1F00000000000000000000CA4F0000FF7A1600FF6C
      0600F6600000E3590000D7540000FFFFFF00FFFFFF00FEFEFE00B4460000AC43
      0000AF440000993C00004F1F00000000000000000000CA4F0000FF7A1600FF6C
      0600F6600000E3590000FEFEFE00FFFFFF00FFFFFF00FFFFFF00B4460000AC43
      0000AF440000993C00004F1F0000000000000000000000000000000000000000
      000000000000BDA4A400CEA58F00FEEBB100FFFCCA00FFFFCF00FFFFCF00FFFF
      D500FFFFE900F3EBE500A0746F000000000000000000CA4F0000FF903500FF75
      0F00FF660100FFFFFF00FFFFFF00FFFFFF00D4530000CA4F0000C24C0000B848
      0000B64700009C3D0000511F00000000000000000000CA4F0000FF903500FF75
      0F00FF660100F6600000E65A0000DC560000FFFFFF00FFFFFF00FFFFFF00B848
      0000B64700009C3D0000511F00000000000000000000CA4F0000FF903500FF75
      0F00FF660100FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B848
      0000B64700009C3D0000511F0000000000000000000000000000000000000000
      000000000000B67F7600F3D7A100FFD89100FCF4C200FFFFCF00FFFFD800FFFF
      EE00FFFFF800FFFFFF00D5C2AC000000000000000000CA4F0000FF9F4E00FF7D
      1900FF6A0400FFFFFF00FFFFFF00FFFFFF00DE570000D4530000CC500000C24C
      0000C04B0000A3400000592300000000000000000000CA4F0000FF9F4E00FF7D
      1900FF6A0400FB630000EE5D0000E65A0000FFFFFF00FFFFFF00FFFFFF00C24C
      0000C04B0000A3400000592300000000000000000000CA4F0000FF9F4E00FF7D
      1900FFFFFF00FFFFFF00FFFFFF00E65A0000DE570000FFFFFF00FFFFFF00FFFF
      FF00C04B0000A340000059230000000000000000000000000000000000000000
      000000000000D0A79200FFE2970093829F00647FDE004A6AFA004A6AFA004A6A
      FA006580FC00CFDAE900EEEAC200B7847E0000000000CA4F0000FFA65A00FF82
      2100FF6E0800FF660100FFFFFF00FFFFFF00FFFFFF00E1580000D9550000CF51
      0000CC500000B14500006A2900000000000000000000CA4F0000FFA65A00FF82
      2100FF6E0800FF660100F05E0000FFFFFF00FFFFFF00FFFFFF00D9550000CF51
      0000CC500000B14500006A2900000000000000000000CA4F0000FFA65A00FF82
      2100FFFFFF00FFFFFF00F05E0000EE5D0000EB5C0000E1580000FFFFFF00FFFF
      FF00CC500000B14500006A290000000000000000000000000000000000000000
      000000000000DCB79A00FFE58E003C46C0000003EA00000AE600000AE500000A
      E5000002E7009CB0E100F8F6CB00B697820000000000CA4F0000FFAD6700FF8A
      2D00FF781300FF730D00FF690300FFFFFF00FFFFFF00FFFFFF00E65A0000DE57
      0000D9550000BD4A0000792F00000000000000000000CA4F0000FFAD6700FF8A
      2D00FF781300FF730D00FFFFFF00FFFFFF00FFFFFF00EE5D0000E65A0000DE57
      0000D9550000BD4A0000792F00000000000000000000CA4F0000FFAD6700FF8A
      2D00FF781300FF730D00FF690300FF640000F8620000EE5D0000E65A0000DE57
      0000D9550000BD4A0000792F0000000000000000000000000000000000000000
      000000000000D4AC9500FFE6A000C1937D00B2999800829AE300829AE300829A
      E300B4C4DA00EAEED400F3EEC500B88B800000000000CA4F0000FFB67600FF97
      4100FF7E1B00FF7A1600FF720C00FF6B0500FFFFFF00FFFFFF00F05E0000E95B
      0000E65A0000C74E0000873500000000000000000000CA4F0000FFB67600FF97
      4100FF7E1B00FF7A1600FFFFFF00FFFFFF00FF6A0400FF640000F05E0000E95B
      0000E65A0000C74E0000873500000000000000000000CA4F0000FFB67600FF97
      4100FF7E1B00FF7A1600FF720C00FF6B0500FF6A0400FF640000F05E0000E95B
      0000E65A0000C74E000087350000000000000000000000000000000000000000
      000000000000BB887F00FCEAB100FFE6AF00F0C69000F0C28600F7DCA500FEF3
      C100FFFFC400FFFFCF00DDCEA9000000000000000000CA4F0000FFBB7F00FFB4
      7200FFA45600FF9A4600FF903500FF842400FF7A1600FF6B0500F8620000F05E
      0000F05E0000D9550000993C00000000000000000000CA4F0000FFBB7F00FFB4
      7200FFA45600FF9A4600FF903500FF842400FF7A1600FF6B0500F8620000F05E
      0000F05E0000D9550000993C00000000000000000000CA4F0000FFBB7F00FFB4
      7200FFA45600FF9A4600FF903500FF842400FF7A1600FF6B0500F8620000F05E
      0000F05E0000D9550000993C0000000000000000000000000000000000000000
      00000000000000000000D3B49900FFFFFF00FFF4E200EFBD8000EBAB6F00F0C0
      8600FBDEA300FCF3B800AC8676000000000000000000CA4F0000FFA55800FFBB
      7F00FFBD8300FFB67600FFAC6500FF9D4A00FF872800FF740E00FF660100F862
      0000FB630000E3590000A54100000000000000000000CA4F0000FFA55800FFBB
      7F00FFBD8300FFB67600FFAC6500FF9D4A00FF872800FF740E00FF660100F862
      0000FB630000E3590000A54100000000000000000000CA4F0000FFA55800FFBB
      7F00FFBD8300FFB67600FFAC6500FF9D4A00FF872800FF740E00FF660100F862
      0000FB630000E3590000A5410000000000000000000000000000000000000000
      0000000000000000000000000000C6ADA700F3EBD100FFEEAF00FCDE9D00FEE2
      A100F0D4A400C298860000000000000000000000000000000000EE5D0000FF70
      0A00FF720C00FF700A00FF6C0600FF660100EE5D0000DE570000D1520000CC50
      0000CF510000B848000000000000000000000000000000000000EE5D0000FF70
      0A00FF720C00FF700A00FF6C0600FF660100EE5D0000DE570000D1520000CC50
      0000CF510000B848000000000000000000000000000000000000EE5D0000FF70
      0A00FF720C00FF700A00FF6C0600FF660100EE5D0000DE570000D1520000CC50
      0000CF510000B848000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BB987E00C1998300D3AD9300D1A5
      9200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002D2E2E002D2E2E002D2E2E002D2E2E002D2E2E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000108ABA001895C10006689700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000314B6200AC7D7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000515152002D2E2E00DEDCE000BCB8BD009D959C008E8183007B7073002D2E
      2E0000000000000000000000000000000000000000000000000000000000188C
      BA00138FBD00066A99000982B2001399CA001E9DC9000B72A0000A6D9A002B96
      BD002692BC00000000000000000000000000905F5A00905F5A00905F5A00905F
      5A00905F5A00905F5A00905F5A00905F5A00905F5A00905F5A00000000000000
      0000000000000000000000000000000000005084B2000F6FE100325F8C00B87E
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002D2E2E00FFFFFF009A9A9A003A3737003A37370053515200756C6D002E2D
      2D00000000000000000000000000000000000000000000000000000000001D8F
      BA0021A5D1000999CE00078ABC000EB7EB002FCBF6001F90BB0041B0D3004CB4
      D400288EB600000000000000000000000000905F5A00EDD8CA00E9D0BF00E6CA
      B500E3C4AB00E0BDA100DDB89800DAB28F00D7AD8600905F5A00000000000000
      0000000000000001DC00000000000000000032A0FE0037A1FF00106FE200325F
      8B00B67D79000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000045454600908F91003A373700807275008F7A7D003A3737003A3737002D2E
      2E0000000000000000000000000000000000000000001073A0001880AB0035A1
      C9006BD0EA0037AFD40023B8E6000FCBFF0023D0FF0044C7ED005AB6D5009CD8
      E60077C0D8000D72A1000000000000000000905F5A00FBF4EE00F8EDE000F7E6
      D100F4E0C500F2D9B800F0D3AC00EFCCA000EDC79300905F5A00000000000000
      00000001DC000001DC0000000000000000000000000037A4FE00379FFF000E6D
      DE00355F8900BB7F790000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002D2E
      2E009DA1B00090919E0078757D005A555800443E3E0041373700292828000000
      0000000000000000000000000000000000000000000045A7CB002F9CC50039AC
      D7007DE7FF0074EAFF0040DDFF0015CFFF000DCCFF0038D9FF005EE1FF0063E5
      FF0028BCE9001C9DCE00188EC00000000000905F5A00905F5A00905F5A00905F
      5A00905F5A00905F5A00905F5A00905F5A00905F5A00905F5A00000000000000
      000000000000000000000000BB0000000000000000000000000037A4FE00359E
      FF000F6FDE0035608B00A67B7F00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002D2E2E008C83
      8300FFB84F00FFC26700F3C48100E2C6A300C9C1C000A19A9D006F6B72004645
      4C002D303200000000000000000000000000000000000878AF001190CB0035B2
      E30067D5F40079EAFF0056C6E10041A5BD00369EBA0017B7E50002C4FF0001C1
      FE0003C2FE0003BAF20005A0D800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000001DC0000000000000000000000000038A5
      FE00329DFF00156DCE00444F5B0000000000925D5A00B48C8000C9A39100C28F
      8800000000000000000000000000000000000000000000000000363636009089
      8800F8880500FF910900FF981100FF9E1800FFA42400F6B04A00E1B16F00BC9E
      7D007F726900373637000000000000000000000000000D75A5001698D40028A9
      E00052CBF30078B7C6007F7E7E007F7E7E007F7E7E007F7E7E002DAACC0000C5
      FF0009C6FE000FC5FA000487BC0000000000905F5A00905F5A00905F5A00905F
      5A00905F5A00905F5A00905F5A00905F5A00905F5A00905F5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003BABFF00A1CAE7008C7775009F7F6E00E7DCB600FFFFCB00FFFFCA00FFFE
      CB00E3CCB100C0998C000000000000000000000000000000000041414100928E
      8C00F7931300FEA01F00FEA62800FFAB2E00FFAB2D00FFA62300FF9E1600FF9C
      1600E1912900534A3E000000000000000000000000000F79AA001598D5001CA0
      DA0040C1F0007F7E7E00E2DAD9009E9F9F00978B8B00D8A4A1007F7E7E003FD1
      F80084EBFF00A1EAFB002683AB0000000000905F5A00EDD8CA00E9D0BF00E6CA
      B500E3C4AB00E0BDA100DDB89800DAB28F00D7AD8600905F5A00000000000000
      0000000000000001DC0000000000000000000000000000000000000000000000
      000000000000BDA4A400CEA58F00FEEBB100FFFFC900A1B4DC004D6DE900D3DC
      D900FFFFE900F3EBE500A0746F00000000000000000000000000414141009591
      9000F7A12500FFB03500FFB84200FFBD4900FFBD4900FFB84200FFB13700FFAA
      2400EB921B00493E2D000000000000000000000000000973A5000F86BF001597
      D3002EB5EA007F7E7E00E2D9D7009D9E9E00978B8B00D1A1A0007F7E7E0062DC
      FA0097E6F70070BCD7002F8FB40000000000905F5A00FBF4EE00F8EDE000F7E6
      D100F4E0C500F2D9B800F0D3AC00EFCCA000EDC79300905F5A00000000000000
      00000001DC000001DC0000000000000000000000000000000000000000000000
      000000000000B67F7600F3D7A100FFD89100FFFFBB006984E5000018FB00C0CC
      F200FFFFF800FFFFFF00D5C2AC000000000000000000000000004B4B4B009692
      9000F8AC3600FFBD4B00FFC75B00FFCC6400FFCC6400FFC95C00FFC04D00FFB6
      3800E2982D00423C32000000000000000000000000000000000005669500108B
      C60020AAE5007F7E7E00E2D9D7009D9E9E00978B8B00D3A3A0007F7E7E004AD8
      FC004DBBDE00015E8E000000000000000000905F5A00905F5A00905F5A00905F
      5A00905F5A00905F5A00905F5A00905F5A00905F5A00905F5A00000000000000
      000000000000000000000000BB00000000000000000000000000000000000000
      000000000000D0A79200FFE2970093829F00647FDE002D4FEF00011FFA004A6A
      FA006580FC00CFDAE900EEEAC200B7847E0000000000000000004B4B4B009591
      9000F8B74600FFCB5E00FFD47000FFDA7B00FFDC7D00FFD57300FFCC6200FFC1
      4900DD9E3F003F3C39000000000000000000000000000000000000000000086F
      A0000576AC007F7E7E00E6DDD9009D9E9E00978B8B00D7A5A3007F7E7E000F82
      B000117AA7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000001DC000000000000000000000000000000
      000000000000DCB79A00FFE58E003C46C0000018FF00001FFB00011FFA00001F
      FA000017FC009CB0E100F8F6CB00B697820000000000000000004B4B4B009290
      8F00FBC05100FFD36C00FFDE8200FEE79200FEE99500FFE08400FFD36E00FFC9
      5600DEA346003F3C390000000000000000000000000000000000000000000000
      0000000000007F7E7E00DDDAD900999A9A00968A8A00CCA3A3007F7E7E000000
      000000000000000000000000000000000000905F5A00905F5A00905F5A00905F
      5A00905F5A00905F5A00905F5A00905F5A00905F5A00905F5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D4AC9500FFE6A000C1937D00B29998004960D8000120FC00829A
      E300B4C4DA00EAEED400F3EEC500B88B800000000000000000004B4B4B00918F
      8C00EAB65200FED16B00FFEE8E00FFFAA700FFF8AA00FFEA9000FFD87400FFCE
      5A00E0A74C00403E3A0000000000000000000000000000000000000000000000
      0000000000007F7E7E009E9E9E0089898900817E7E00968989007F7E7E000000
      000000000000000000000000000000000000905F5A00EDD8CA00E9D0BF00E6CA
      B500E3C4AB00E0BDA100DDB89800DAB28F00D7AD8600905F5A00000000000000
      0000000000000001DC0000000000000000000000000000000000000000000000
      000000000000BB887F00FCEAB100FFE6AF00FFDA86006068BC00001BFF00BBC2
      CF00FFFFC400FFFFCF00DDCEA9000000000000000000000000004B4B4B008B8B
      8A008B816D00978C74009C927600ADA68300BCB48800CEBA7B00DDBA6700FAC5
      5500E2A94D0042403E0000000000000000000000000000000000000000000000
      0000000000007F7E7E00D8D7D700B6B7B7008F8C8C009F8F8F007F7E7E000000
      000000000000000000000000000000000000905F5A00FBF4EE00F8EDE000F7E6
      D100F4E0C500F2D9B800F0D3AC00EFCCA000EDC79300905F5A00000000000000
      00000001DC000001DC0000000000000000000000000000000000000000000000
      00000000000000000000D3B49900FFFFFF00FFF7E100C1A3930091779200DAB2
      8C00FBDEA300FCF3B800AC867600000000000000000000000000000000002D2E
      2E002D2E2E002D2E2E0059585A007D7B81007E7B8000837F83008C878B008078
      79008C7B70004240400000000000000000000000000000000000000000000000
      0000000000007F7E7E00DDDCDC00E3E2E200AAAAAA008C8787007F7E7E000000
      000000000000000000000000000000000000905F5A00905F5A00905F5A00905F
      5A00905F5A00905F5A00905F5A00905F5A00905F5A00905F5A00000000000000
      000000000000000000000000BB00000000000000000000000000000000000000
      0000000000000000000000000000C6ADA700F3EBD400FFF3AB00FFE79600FEE2
      A100F0D4A400C298860000000000000000000000000000000000000000000000
      00000000000000000000000000004747480044444500484748004E4D4E00504F
      5200464447000000000000000000000000000000000000000000000000000000
      000000000000000000007F7E7E007F7E7E007F7E7E007F7E7E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000001DC000000000000000000000000000000
      000000000000000000000000000000000000BB987E00C1998300D3AD9300D1A5
      9200000000000000000000000000000000000000000000000000BD4C00000000
      0000000000000000000084240500842405008424050084240500842405000000
      0000000000000000000000000000000000000000000000000000BD4C00000000
      0000000000000000000084240500842405008424050084240500842405000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000178BA000178
      BA000178BA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD4C0000BD4C
      0000BD4C0000C24F000084240500FFC17900E58E4000D36E1A00842405000000
      0000000000000000000000000000000000000000000000000000BD4C0000BD4C
      0000BD4C0000C24F000084240500FFC17900E58E4000D36E1A00842405000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      0500842405000000000000000000000000000178BA000178BA0007BAF0000178
      BA0000BFFB000178BA000178BA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD4C00000000
      0000000000000000000083230400842405008423050083230400842405000000
      0000000000000000000000000000000000000000000000000000BD4C00000000
      0000000000000000000083230400842405008423050083230400842405000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000C24F000084240500FFC17900E58E4000D36E
      1A00842405000000000000000000000000000178BA008FFFFF0036D4EF000178
      BA0000C0FE0000C9FF000178BA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD4C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD4C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      0400842405000000000000000000000000000178BA0030C1E60020B7E20012A5
      D8000096D40000A7EA001C748A008A1A05000000000000000000000000000000
      000000000000821F09007B180800000000000000000000000000BD4C00000000
      0000000000000000000084240500842405008424050084240500842405000000
      0000000000000000000000000000000000000000000000000000BD4C00000000
      0000000000000000000084240500842405008424050084240500842405000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B658E00246D80000FAC
      DE00009DEF00007FD40056646E00453081000007AC00000EAF000006A5000003
      9F0003049000230C5600210C5400020583000000000000000000BD4C0000BD4C
      0000BD4C0000BD4C000084240500FFC17900E58E4000D36E1A00842405000000
      0000000000000000000000000000000000000000000000000000BD4C0000BD4C
      0000BD4C0000BD4C000084240500FFC17900E58E4000D36E1A00842405000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      05008424050000000000000000000000000000000000000000009A361A006329
      1F0060413200764C2D005C1718002D0E56000030F700006FF2000018E600000F
      D400000BCB000008C200006FF2000020A4000000000000000000BD4C00000000
      0000000000000000000083230400842405008423050083230400842405000000
      0000000000000000000000000000000000000000000000000000BD4C00000000
      0000000000000000000083230400842405008423050083230400842405000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000BD4C000084240500FFC17900E58E4000D36E
      1A008424050000000000000000000000000000000000A02F1500922508008710
      000091190000952A00002007510004038B000004A6000004A100000199000508
      9A000C0D97000003920000018400000000000000000000000000BD4C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD4C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      04008424050000000000000000000000000000000000276D1900236D1A002272
      1B0010821F0010821F000A347B001B13A1000D13A9000006B5002940DE00626D
      D1005A62CA005255C200060A9800000000000000000000000000BD4C00000000
      0000000000000000000084240500842405008424050084240500842405000000
      0000000000000000000000000000000000000000000000000000BD4C00000000
      0000000000000000000084240500842405008424050084240500842405000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010821F0022D960001ED0
      590021D45F0010821F002C745E00D19287001216AC000001B5000D19BC00070F
      AD000006A7001211960001028E00000000000000000000000000BD4C0000BD4C
      0000BD4C0000BD4C000084240500FFC17900E58E4000D36E1A00842405000000
      0000000000000000000000000000000000000000000000000000BD4C0000BD4C
      0000BD4C0000BD4C000084240500FFC17900E58E4000D36E1A00842405000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      0500842405000000000000000000000000000000000010821F002DD15E0027C9
      560023C4520010821F00347A6400D79F990037319E006A5CA100624C8A00624B
      8200654D8000654E820000057A00000000000000000000000000BD4C00000000
      0000000000000000000083230400842405008423050083230400842405000000
      0000000000000000000000000000000000000000000000000000BD4C00000000
      0000000000000000000083230400842405008423050083230400842405000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000BD4C000084240500FFC17900E58E4000D36E
      1A00842405000000000000000000000000000000000010821F0031DA66002BD0
      5D0028CE5B0010821F00337D6A00C4A4C0007D72AC00FFFFC700FFE7A000FFD8
      8700FFD17F00FFE2820000057A00000000008424050084240500842405008424
      0500842405000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008424050084240500842405008424
      0500842405000000000000000000000000000000000000000000000000000000
      B5000000B500000000000000B5000000B5000000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      0400842405000000000000000000000000000000000010821F0035E36B0030D8
      63002CD4600010821F00256E6F00A191D4007774BB00FFFFEF00FCE7C600FED5
      A400FFC58900FCD1830000057A000000000084240500FFC17900E58E4000D36E
      1A00842405000000000000000000000000000000000000000000000000000000
      0000000000000008E100000000000000000084240500FFC17900E58E4000D36E
      1A00842405000000000000000000000000000000000000000000000000000000
      B5000000B5000000B5000000B5000000B5000000000000000000842405008424
      0500842405008424050084240500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010821F003DEB730036E1
      6A0033DD680010821F0012726300040FC0001014AD002828AD0026239D002822
      920029228C003E31870000000000000000008323040084240500842305008323
      0400842405000000000000000000000000000000000000000000000000000000
      00000008E100000000000008E100000000008323040084240500842305008323
      0400842405000000000000000000000000000000000000000000000000000000
      00000000B5000000B5000000B50000000000000000000000000084240500FFC1
      7900E58E4000D36E1A0084240500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010821F0043F67D003EED
      74003AE6700010821F0018865500000AD9000003C6000000A100000091000000
      8B00000078000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000008E1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      B5000000B5000000B5000000B5000000B5000000000000000000832304008424
      0500842305008323040084240500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010821F001082
      1F003EEE740010821F0026B25A000A33AB000413B8000411A30004169300051B
      8F000A5047000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000008E1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      B5000000B500000000000000B5000000B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010821F0010821F0010821F0010821F0010821F0010821F0010821F001082
      1F0010821F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AF3E3F008F5D5D00BCAC
      AA00EDE9E500DDDEDD008C3D3C008F2828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6A6A006C6A6A0000000000000000006C6A6A006C6A6A00000000000000
      0000000000000000000000000000000000000000000000000000BD4C00000000
      0000000000000000000084240500842405008424050084240500842405000000
      000000000000000000000000000000000000893615007D3213007B3113007B31
      13007B3113007B3113007B3113007B3113007B3113007B3113007B3113007B31
      13007B3113007B3113007E3313008A371500B4565200BF4949008E4D4D00862D
      2C00DDCECC00FFFFFF00933E3D0090242300A141420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000000000000BD4C0000BD4C
      0000BD4C0000C24F000084240500FFC17900E58E4000D36E1A00842405000000
      000000000000000000000000000000000000692A1100FFF3E700FFEFE0006E6C
      6A00FBE7CF00FCE5C9006E6C6A00FFDEBB00FFDEBB006E6C6A00FED4A700FBCE
      9C006E6C6A00FCCB9700FCCB970078301200B2575300BC454600A15F5F00883B
      3A009D8A8900EDE7E500983E3F0090232300A141420000000000000000000000
      00000000000000000000000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A000000000000000000BD4C00000000
      0000000000000000000083230400842405008423050083230400842405000000
      00000000000000000000000000000000000065281000EFE7DD006E6C6A006E6C
      6A006E6C6A006E6C6A006E6C6A006E6C6A006E6C6A006E6C6A006E6C6A006E6C
      6A006E6C6A006E6C6A006E6C6A00762F1200B0545000B53F4000B8565600BC66
      6500B2575700BB5D5D00B7525200B84A4A009E3E3F0000000000000000000000
      000000000000000000000000000000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A00000000000000000000000000BD4C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000662810006E6C6A006E6C6A003C5A
      F7000D8B0C006CB75C00FEE9D300FEE6CA00FEE2C400FEDEBB00FEDAB400FCD7
      AD00FCD3A700E9CC9500FCCF9D00762F1200A3484300C2848200E9D1D100E9D1
      CF00EACFCC00E9CCCB00EADAD800C67473009935350000000000000000000000
      0000000000000000000000000000000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A00767373000000000000000000BD4C00000000
      0000000000000000000084240500842405008424050084240500842405000000
      00000000000000000000000000000000000066281000FEF3E7006E6C6A002243
      FB00326E9F000F8C0D0073BA6000FFE7CF00FEE3C900FEE1C000FEDDB800FED9
      B10047A030000F8A0A00168E0E0050420C00A3484200DEBDBB00EFF6F400E3E1
      E100E5E3E200E5E5E300EEF3F200C576750098333400611C04007C2206008F28
      0700942A0700952A0700952A070097290C006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A787800757373000000000000000000BD4C0000BD4C
      0000BD4C0000BD4C000084240500FFC17900E58E4000D36E1A00842405000000
      00000000000000000000000000000000000065280F006E6C6A006E6C6A00C6CC
      F2000F31FC00FEF2E2002E9E2800FFEAD400FEE6CC00FEE2C500FEDEBC0081B6
      5D000D8A0900FED1A300FED1A3005F3A0F00A3484300DCB5B400DEE0DE00D0CB
      CB00D3CECE00D0CECC00E1E2E200C575750098333400A6A6A600D5D5D500F4F4
      F400FEFEFE00FFFFFF00FFFFFF00952A07006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C6969000000000000000000BD4C00000000
      0000000000000000000083230400842405008423050083230400842405000000
      00000000000000000000000000000000000065280F00FFF7EE006E6C6A00FEFA
      F2004D69F7001652A600148F1400EEE5D300BFBBDA00D5C9CF00BCCC90000A89
      070083AC72000525FB00485BDC00762F1200A4494300DEB7B700EAEAE900DCD8
      D700DED9D800DDD9D800EBEAE900C978760098333400AA6E2D00D8862B00F491
      2000FE8F1300FF880900FFFFFF00952A0700000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A000000000000000000BD4C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000662810006E6C6A006E6C6A00FFFB
      F400FEF7F0002849FA0004653900056E2A001335F8000C2DFA000C84110041A1
      31001635F300546ACB001131F3005E2D2D0000000000C5A3A100DEE0E000D9D1
      D100D9D3D300D9D3D400DDDDDC00B16B6A00996D4100B77F4200E0924200F79C
      3600FF992700FF901700FFFFFF00952A07000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A00000000000000000000000000BD4C00000000
      0000000000000000000084240500842405008424050084240500842405000000
      00000000000000000000000000000000000065280F00FFFCFA006E6C6A00FEFC
      F700FFFAF300FFF6EE00E1DDEA0011881800FEEED900FEE9D10001760F000A3B
      C100405ADE00FCDAB5009191C200642D24000000000000000000000000000000
      0000000000006B171C00A6A6A600807D5F00A0875E00D3975900EEA55300FBA7
      4600FFA13500FF9A2200FFFFFF00952A07000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A0000000000000000000000000000000000BD4C0000BD4C
      0000BD4C0000BD4C000084240500FFC17900E58E4000D36E1A00842405000000
      0000000000000000000000000000000000006B2D12006E6C6A006E6C6A00FFFC
      FA00FFFAF600FFF8F200FFF4EB00DCE5C5001D9519000B8A090041955300465E
      E900EED5C100FEDCB700FED9B1007B3416000000000000000000000000000000
      000000000000891E2200D5D5D50009A3D30016A9CF0038B2C90066BAB8008CB8
      9C0096B58E00C9AA6300FFFFFF00952A07000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      0000000000000000000000000000000000000000000000000000BD4C00000000
      0000000000000000000083230400842405008423050083230400842405000000
      000018640C001C620C0000000000000000009E512300CB934600C68C4200C68C
      4100C68C4100C68C4100C68C4100C68C4100C68C4100C78E4200CC995200CB93
      4700CE995100C1914E00BB955C00A15222000000000000000000000000000000
      0000000000009C232600F4F4F40000B5BF0000B6C70000BBC40000BCCC0000B8
      D70000B7D00009BAC000FFFFFF00952A0700000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      0000000000000000000000000000000000008424050084240500842405008424
      0500842405000000000000000000000000000000000000000000000000000000
      00001C650D001C660E00000000000000000099411500CC641400D0651400CF65
      1400CF651400CF651400CF651400CF651400CF651400D1681800F3A96600E070
      1100F3A966009F6339003553C700A6420C000000000000000000000000000000
      0000000000009D261C00FEFEFE00296C3400306C3A002A753000286F34003F74
      4800457F450022723100FFFFFF00922B0100000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      00000000000000000000000000000000000084240500FFC17900E58E4000D36E
      1A008424050000000000000000000000000000000000000000001B670F001874
      160018781800187617001A6D12001C650D000000000093401A0095401B009540
      1B0095401B0095401B0095401B0095401B0095401B0095411B0099441D00953E
      15009A451C008C3C1A00843D2400000000000000000000000000000000000000
      0000000000009E261C00FFFFFF00B89A89009A877D006E626C0093807B00E5C0
      9900FAD1A400D5AF9300FFFFFF00922B01000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      0000000000000000000000000000000000008323040084240500842305008323
      04008424050000000000000000000000000000000000000000001B670F001973
      1600187E1C00187B1B001A6C11001C650D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009E261C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00922B01000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000187919001879190000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B01F4700A2252700A2252700A2252700A2252700A2252700922B
      0100922B0100922B0100922B0100922B01000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001B6910001B6910000000000000000000000000008E5D59008E5D59008E5D
      59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D
      59008E5D59008E5D59008E5D5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6696B00A6696B00A669
      6B00A6696B00A6696B00A6696B00A6696B000000000000000000000000000000
      00000000000000000000000000000000000000000000A6696B00A6696B00A669
      6B00A6696B00A6696B00A6696B00A6696B008E5D5900B67F7400E7B28F00FFD0
      9800FECC9600FFCC9700FFCC9700FFCC9700FFCC9700FFCC9700FFCC9700FFCC
      9600FFD39900E5AD8C00B47B75008E5D590000000000000000007F2B28007F2B
      2800A1828300A1828300A1828300A1828300A1828300A1828300A18283007A1C
      1C007F2B28000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6696B00F3D3A400F0CB
      9700EFC68A00EDC18000EBBB7600A6696B000000000000000000000000000000
      00000000000000000000000000000000000000000000A6696B00F3D3A400F0CB
      9700EFC68A00EDC18000EBBB7600A6696B008E5D5900D5A08400B67F7800F0CE
      AC00F4D3AF00F2CFAD00F2D0AD00F2D0AD00F2D0AD00F2D0AD00F2CFAD00F4D3
      AF00EBC4A600B57D7700D8A98F008E5D5900000000007F2B2800CA4D4D00B645
      4500DDD4D5007916170079161700DCE0E000D7DADE00CED5D700BDBABD007610
      0F009A2D2D007F2B280000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7756B00F6DDBA00707B
      CE000F2EF3006E75BF00EEC48400A6696B000000000000000000000000000000
      00000000000000000000000000000000000000000000A7756B00F6DDBA00707B
      CE000F2EF3006E75BF00EEC48400A6696B008E5D5900F0D3B600C58E7B00C193
      8E00EFDEC900EDD8C400EDD8C400EDD8C400EDD8C400EDD8C400EDD8C400EFDD
      C700BD8C8700C2918300EFD8C1008E5D5900000000007F2B2800C24A4B00B144
      4400E2D9D9007916170079161700D9D8DA00D9DEE100D3D9DC00C1BDC1007611
      1100982D2D007F2B280000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BC826800F8E7CE000F30
      F700001EFF000F2FF300F0CC9600A6696B000000000000000000000000000000
      00000000000000000000000000000000000000000000BC826800F8E7CE000F30
      F700001EFF000F2FF300F0CC9600A6696B008E5D5900EADCD000EED0B200B17A
      7000D7BFB600EFE7D900EEE2D700EEE2D700EEE2D700EEE2D700F2EADC00D0AF
      A700B47E7600EFDCC600EADCD0008E5D5900000000007F2B2800C24A4A00B042
      4200E6DCDC007916170079161700D5D3D500D8DEE100D7DDE000C6C2C500700F
      0F00962C2C007F2B280000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D1926D00FBF2E2007486
      E7000F30F800727FD700F3D7AB00A6696B000000000000000000000000000000
      00000000000000000000000000000000000000000000D1926D00FBF2E2007486
      E7000F30F800727FD700F3D7AB00A6696B008E5D5900EFE3DD00F8F3E700E3B8
      9E00AD7A7400E7D5CF00F2E5DC00EFE2D900EFE2D900F0E3DA00E3CAC400B27A
      7600E2C5B500F7F4EA00F0E3DC008E5D5900000000007F2B2800C24A4A00B041
      4100EADEDE00E7DDDD00DDD4D500D7D3D500D5D7D900D7D8DA00CAC2C5007E17
      17009E3131007F2B280000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DA9D7500FEFAF300FBF4
      E700FAEEDC00F8E7CF00F6E1C000A6696B000000000000000000000000000000
      00000000000000000000000000000000000000000000DA9D7500FEFAF300FBF4
      E700FAEEDC00F8E7CF00F6E1C000A6696B008E5D5900F7F2EE00FAF8F300C99A
      9300AF7874008E5D59008E5D59008E5D59008E5D59008E5D59008E5D5900AF76
      7300D7B6B000FFFFFE00F6EFED008E5D5900000000007F2B2800BF474800B845
      4500BA4C4C00BD575700BB575600B64E4E00B4494900BD525100BB4B4C00B542
      4200BF4A4A007F2B280000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7AB7900FFFFFF00FEFB
      F800FCF7EE00A6696A00A6696A00AC6C5A000000000000000000000000000000
      00000000000000000000000000000000000000000000E7AB7900FFFFFF00FEFB
      F800FCF7EE00A6696A00A6696A00AC6C5A008E5D5900E7CECC00B7868300BA8C
      8B00EEE7E700F0F0F000E7E2E300E6E3E500E3E3E300E2E9EA00E9F7F700D5CE
      CC00B1807F00BD8F8E00EDDCDC008E5D5900000000007F2B2800A33B3900B160
      5D00C6868400CB918F00CC919000CC908F00CB898800C9898800CB939100CC96
      9600BD4B4C007F2B28000000000000000000A4676900A4676900A4676900A467
      6900A4676900A4676900A4676900A467690000000000E7AB7900FFFFFF00FFFF
      FF00FEFCFB00A6696A00C67F4E0000000000A4676900A4676900A4676900A467
      6900A4676900A4676900A4676900A467690000000000E7AB7900FFFFFF00FFFF
      FF00FEFCFB00A6696A00C67F4E00000000008E5D5900AF7F7E00D0B1B000FFFF
      FF00FBFFFF00F8FFFF00F4FFFF00F2FFFF00EEFFFF00EBFFFF00EAFFFF00EBFF
      FF00E6F6F600C2A3A100B5827F008E5D5900000000007F2B2800BD4B4C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4B4C007F2B28000000000000000000A4676900E9C49D00D8A57B00D8A3
      7300D59D6600D1965A00EAB66C00A467690000000000E7AB7900D1926D00D192
      6D00D1926D00A6696A000000000000590100A4676900E9C49D00D8A57B00D8A3
      7300D59D6600D1965A00EAB66C00A467690000000000E7AB7900D1926D00D192
      6D002A702700A6696A0000000000000000008E5D5900A3DADE00FFFFFF00FCFF
      FF00FAFFFF00FAFFFF00FAFFFF00F7FFFF00F7FFFF00F0FEFC00EBF8F800E1F4
      F400D5EDEE00C5EDF200ABBBC0008E5D5900000000007F2B2800BD4B4C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4B4C007F2B28000000000000000000A4676900BB7650007D180000821F
      0000811F0000811E0000DCA16200A467690000000000000000002D6718000000
      000000000000000000000000000001640500A4676900BB7650007D180000821F
      0000811F0000811E0000DCA16200A4676900000000000000000000000000015A
      06002CC558001C9631000000000000000000000000008E5D5900FFFFFF00FFFF
      FF00FFFFFF00F0F7F800E1EDEE00C9E2E500A6CCD10093C1CA0084B8C6007AB1
      C5006EAFCB0072A1BF008E5D590000000000000000007F2B2800BD4B4C00F7F7
      F700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00F7F7
      F700BD4B4C007F2B28000000000000000000A7756B00F6E9DD008A2A08007F1A
      00007B160000AB5B3000FCDD9F00A467690000000000005D0300067F14000000
      000000000000000000000177070003650600A7756B00F6E9DD008A2A08007F1A
      00007B160000AB5B3000FCDD9F00A46769000000000000000000005D030030BD
      570041E0750022B63E00087511000000000000000000000000008E5D5900A7D8
      DE008BFCFF007DDEEA0073D4E1006CD8E3006ADAE9006CD8EE006DD8F2006CDA
      FC0087BAD3008E5D59000000000000000000000000007F2B2800BD4B4C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4B4C007F2B28000000000000000000BC826800FFFFFF00C99379007914
      000089290700E6BD9900FFEAB500A4676900015A060030BD57001A922F000155
      03000360070004780A0005840C0001580400BC826800FFFFFF00C99379007914
      000089290700E6BD9900FFEAB500A4676900000000002D671800067F14001A92
      2F0027BB4500149A26000C881600036307000000000000000000000000008E5D
      590092B7BD0070F0FC006EF7FF0073F2FF0073F3FF006FF7FF0076E6FA009CAA
      B6008E5D5900000000000000000000000000000000007F2B2800BD4B4C00F7F7
      F700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00F7F7
      F700BD4B4C007F2B28000000000000000000D1926D00FFFFFF00FBF4F2009941
      1E00BF7D5900FAEDD400D4BCA0002A7027002CC5580041E0750027BB450015A5
      280009961300058C0D000266060000000000D1926D00FFFFFF00FBF4F2009941
      1E00BF7D5900FAEDD400D4BCA000A46769000000000000000000000000000155
      030015A5280005700B0000000000000000000000000000000000000000000000
      00008E5D59008E5D590082D8E00073F0FA0074EFF80083D7E0008E5D59008E5D
      590000000000000000000000000000000000000000007F2B2800BD4B4C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4B4C007F2B28000000000000000000DA9D7500FFFFFF00FFFFFF00E7D0
      C400F7EEE300A4676900A4676900A46A5A001C96310022B63E00149A26000570
      0B00036C0700026005000000000000000000DA9D7500FFFFFF00FFFFFF00E7D0
      C400F7EEE300A4676900A4676900A46A5A000000000000000000000000000360
      070009961300036C070000000000000000000000000000000000000000000000
      000000000000000000008E5D59008E5D59008E5D59008E5D5900000000000000
      00000000000000000000000000000000000000000000000000007F2B2800F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F7007F2B2800000000000000000000000000E7AB7900FFFFFF00FFFFFF00FFFF
      FF00FCFFFF00A4676900D18649000000000000000000087511000C8816000000
      000000000000000000000000000000000000E7AB7900FFFFFF00FFFFFF00FFFF
      FF00FCFFFF00A4676900D1864900000000000000000000000000036E07000478
      0A00058C0D000260050000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7AB7900D1926D00D1926D00D192
      6D00D1926D00A467690000000000000000000000000000000000036307000000
      000000000000000000000000000000000000E7AB7900D1926D00D1926D00D192
      6D00D1926D00A467690000000000000000000266060002660600017707000584
      0C00026606000000000000000000000000000000000000000000000000000000
      0000BB420000BB420000BB420000BB420000BB420000BB420000BB420000BB42
      0000BB420000BB420000BB420000BB420000C14C0000C14C0000C14C0000C14C
      0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C
      0000C14C0000C14C0000C14C0000C14C0000C5351900C5351900C5351900C535
      1900C5351900C5351900C5351900C5351900C5351900C5351900C5351900C535
      1900C5351900C5351900C5351900C53519000000000000000000000000000000
      000000000000DEC0B200DABFB200D5BCB100D0B7AC00D1B4A600DDBAA9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BB420000FFFFFF00FFFFFA00FFFAEA00FFEFD700FFE7C700FFE1B800FFDA
      AD00FFD9A900FFD8A700FFEAC200BB420000C14C0000FFFFFF00FFFFFF00FFFE
      F700FFF7E900FFF2DC00FFEACF00FFE5C200FFDEB700FFD9AF00FFD7A700FFD5
      A400FFD5A400FFD5A400FFE1B500C14C0000C5351900FFFFFF00FFF4DC00FFEA
      C400FFDEAD00FFD8A000FFEAB200C5351900C5351900FFFFFF00FFF4DC00FFEA
      C400FFDEAD00FFD8A000FFEAB200C5351900000000000000000000000000E1BF
      B000E6D7D000E3E5E600DCE0E600CEC7C700C4BDBF00BCBCC000B7AFAD00B8A4
      9D00DDBAA9000000000000000000000000000000000000000000000000000000
      0000BB420000FFFFFF00FFF6EF00FEF0E200FFEAD100FEE2C400FEDAB400FED3
      A500FECE9C00FECA9500FFDAAB00BB420000C14C0000FFFFFF00FFFCFC00FFFB
      F400FFF4EA00FFF0E000FEEAD400FFE3C700FEDEBC00FED9B100FED3A500FECE
      9D00FECB9700FECB9500FFD4A400C14C0000C5351900FFFFFF00FEE6CA00FEDC
      B600FED1A100FECB9600FFDCA600C5351900C5351900FFFFFF00FEE6CA00FEDC
      B600FED1A100FECB9600FFDCA600C53519000000000000000000E3C1B200F0ED
      E900F0F8FC00DEBFB100CB7E5900C9734A00C7724900C2765300C09C8E00B1AF
      B100B4A4A000D1B2A40000000000000000000000000000000000BB420000BB42
      0000BB420000FFFFFF00FFFEFB00FFF8F200FFF2E500FFEBD500FFE3C500FFDC
      B600FFD4A900FFCE9C00FFDCAC00BB420000C14C0000FFFFFF00FFFFFF00FFFF
      FF00FFFCFB00FFF8F400FFF6EA00FFEFDD00FEEAD100FFE5C600FEDDBA00FED8
      AF00FED3A400FECE9C00FFD7A600C14C0000C5351900FFFFFF00FFE9D100FFDE
      BA00FED3A500FECB9700FFDCA600C5351900C5351900FFFFFF00FFE9D100FFDE
      BA00FED3A500FECB9700FFDCA600C535190000000000E1BDAD00F6F0EF00FAFF
      FF00D38B6900BC461600BF4A1A00F3D8C900EEC7B500BD461600BF491800C17E
      5E00B7B4B700B8AAA600DDBAA900000000000000000000000000BB420000FFFF
      FF00BB420000FFFFFF00FFFFFF00FFFFFE00FFFAF400FFF3E700FEEBD800FFE5
      C900FEDDB800FED5AA00FFE1B500BB420000C14C0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFCFB00FFF8F300FEF3E700FEEEDD00FFE7D000FEE1
      C500FEDCB700FED7AD00FFDDB100C14C0000C5351900FFFFFF00FFEFDD00FEE3
      C600FED8B000FECE9C00FFDCA600C5351900C5351900FFFFFF00FFEFDD00FEE3
      C600FED8B000FECE9C00FFDCA600C535190000000000F0E1D900FFFFFF00DA9A
      7A00BA411100BD4B1B00BF4E1F00E2AA8E00DE9F8100BD4C1C00BD4C1C00BF45
      1500C5836500BFBDC100CCB5AC00000000000000000000000000BB420000FFFF
      FF00BB420000FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFBF600FEF3E700FEEE
      D900FFE6CA00FEDDBA00FFE7C400BB420000C14C0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFCF600FFF7
      EB00FFF0DD00FFEAD100FFEFD500C14C0000C5351900FFFFFF00FFF4E700FFE9
      D000FFDCBA00FED1A500FFDDA700C5351900C5351900FFFFFF00FFF4E700FFE9
      D000FFDCBA00FED1A500FFDDA700C5351900E3C1B200FEFCFC00F4DED100C255
      2400BF4C1D00BD4A1C00C2572800DE9F8000D78B6700BD4A1A00BF4E1E00BF4C
      1C00BF4F1F00CAB1A600C9C4C400DDBAA900BB420000BB420000BB420000FFFF
      FF00BB420000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFBF700FFF4
      EA00FFEDDC00FEE5CA00FFEFD700BB420000C14C0000C14C0000C14C0000C14C
      0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C
      0000C14C0000C14C0000C14C0000C14C0000C5351900FFFFFF00FFF8F000FFEF
      DC00FFE2C500FED8AF00FFE0AC00C5351900C5351900FFFFFF00FFF8F000FFEF
      DC00FFE2C500FED8AF00FFE0AC00C5351900EACEC200FFFFFF00E2A78700C457
      2300C55A2900BF4F1E00C65D2F00FEF8F400F8EBE500C1542500BB461600BF4F
      1F00BD451600CB896B00D5D8DD00DCBCAF00BB420000FFFFFF00BB420000FFFF
      FF00BB420000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFAEF00FFFFFF00BB42000000000000C24D0000C14C0000C14C
      0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C
      0000C14C0000C14C0000C24C000000000000C5351900FFFFFF00FFFBF800FFF2
      E700FEE6CF00FEDAB700FFE2B500C5351900C5351900FFFFFF00FFFBF800FFF2
      E700FEE6CF00FEDAB700FFE2B500C5351900EED7CE00FFFFFF00DC976D00CA66
      2D00CA663100C75E2B00C1542300E7B79F00FFFFFF00EBC9B700C2592B00BC49
      1900BC471700CA754D00E1E6ED00DDC2B600BB420000FFFFFF00BB420000FFFF
      FF00BB420000E9A36200E69C5900E69C5900E69C5900E69C5900E69C5900E69D
      5900E69C5600E6995200E99F5800BB420000C14C0000C14C0000C14C0000C14C
      0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C
      0000C14C0000C14C0000C14C0000C14C0000C5351900FFFFFF00FFFEFE00FFF8
      F200FEEDDA00FFE2C200FFE7BF00C5351900C5351900FFFFFF00FFFEFE00FFF8
      F200FEEDDA00FFE2C200FFE7BF00C5351900EED7CC00FFFFFF00E1A37500D074
      3900D0723B00CB693300C9632E00C65C2900E6B69C00FFFFFF00F4E0D500C45A
      2C00BA411200CC785000EDF3F800E1C5BA00BB420000FFFFFF00BB420000FFFF
      FF00FFFFFF00BB410000BB420000BB420000BB420000BB420000BB420000BB42
      0000BB420000BB420000BB42000000000000C14C0000FFFFFF00FFFFFF00FFFE
      F700FFF7E900FFF2DC00FFEACF00FFE5C200FFDEB700FFD9AF00FFD7A700FFD5
      A400FFD5A400FFD5A400FFE1B500C14C0000C5351900FFFFFF00FFFFFF00FFFB
      F800FEF3E500FEE9CE00FFEDC900C5351900C5351900FFFFFF00FFFFFF00FFFB
      F800FEF3E500FEE9CE00FFEDC900C5351900E9CCC000FFFFFF00EBC09C00D57E
      4100D7834C00D8875400CF723B00CB673100C55A2600E6B59900FFFFFF00DC9A
      7900B73B0C00D7967600F3FAFF00E2C4B600BB420000FFFFFF00BB420000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFA
      EF00FFFFFF00BB4200000000000000000000C14C0000FFFFFF00FFFCFC00FFFB
      F400FFF4EA00FFF0E000FEEAD400FFE3C700FEDEBC00FED9B100FED3A500FECE
      9D00FECB9700FECB9500FFD4A400C14C0000C5351900FFFFFF00FFFFFF00FFFE
      FE00FFF7EF00FEEBD800FFF3D500C5351900C5351900FFFFFF00FFFFFF00FFFE
      FE00FFF7EF00FEEBD800FFF3D500C5351900E9CCC000FCFAFA00FAEEE000DC8E
      4F00F2D1B700FFFFFE00E1A37700CE6B3000C75E2500DD997200FFFFFF00E2A9
      8A00C04D1C00EED9CE00F3F0EF00E2C4B600BB420000FFFFFF00BB420000E9A3
      6200E69C5900E69C5900E69C5900E69C5900E69C5900E69D5900E69C5600E699
      5200E99F5800BB4200000000000000000000C14C0000FFFFFF00FFFFFF00FFFF
      FF00FFFCFB00FFF8F400FFF6EA00FFEFDD00FEEAD100FFE5C600FEDDBA00FED8
      AF00FED3A400FECE9C00FFD7A600C14C0000C5351900FFFFFF00FFFFFF00FFFF
      FF00FFFBF600FFF0E200FFF8E000C5351900C5351900FFFFFF00FFFFFF00FFFF
      FF00FFFBF600FFF0E200FFF8E000C535190000000000F0E0D700FFFFFF00EEC5
      9F00E9B28200FFFFFF00FCF7F300EABB9C00E9BA9800FCF6F200FEFAF700D37B
      4A00DEA07F00FFFFFF00EAD4CA0000000000BB420000FFFFFF00FFFFFF00BB41
      0000BB420000BB420000BB420000BB420000BB420000BB420000BB420000BB42
      0000BB420000000000000000000000000000C14C0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFCFB00FFF8F300FEF3E700FEEEDD00FFE7D000FEE1
      C500FEDCB700FED7AD00FFDDB100C14C0000C5351900FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FFF7EF00FFFFF000C5351900C5351900FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FFF7EF00FFFFF000C535190000000000E6C7BA00F8EEEA00FFFF
      FF00EDC29800EBC09200F8E9D900FCF7F200FCF6EF00F6E0CF00E19E7200E3AB
      8400FFFFFF00F3E7E200EAD4CA0000000000BB420000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFAEF00FFFFFF00BB42
      000000000000000000000000000000000000C14C0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFCF600FFF7
      EB00FFF0DD00FFEAD100FFEFD500C14C0000C5351900FFFFFB00FFFFFA00FFFF
      FA00FFFFFB00FFFFF800FFFFFA00C5351900C5351900FFFFFB00FFFFFA00FFFF
      FA00FFFFFB00FFFFF800FFFFFA00C53519000000000000000000E6C7BA00F7ED
      E900FFFFFF00F7E3CF00EFC7A000EDC29900EABB9300EAB89200F4D9C500FFFF
      FF00F4E9E300E2C1B1000000000000000000BB420000E9A36200E69C5900E69C
      5900E69C5900E69C5900E69C5900E69D5900E69C5600E6995200E99F5800BB42
      000000000000000000000000000000000000C14C0000C14C0000C14C0000C14C
      0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C
      0000C14C0000C14C0000C14C0000C14C0000C5351900DD742600DC6F2500DC6F
      2500DC6F2500DC6E2500DD722400C5351900C5351900DD742600DC6F2500DC6F
      2500DC6F2500DC6E2500DD722400C5351900000000000000000000000000E6C7
      BA00F3E6E000F8F3F200FEFCFB00FFFEFC00FEFCFB00FCFBFB00FAF3F200F2E0
      D700F2E0D70000000000000000000000000000000000BB410000BB420000BB42
      0000BB420000BB420000BB420000BB420000BB420000BB420000BB4200000000
      00000000000000000000000000000000000000000000C24D0000C14C0000C14C
      0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C0000C14C
      0000C14C0000C14C0000C24C00000000000000000000C5351900C5351900C535
      1900C5351900C5351900C53519000000000000000000C5351900C5351900C535
      1900C5351900C5351900C5351900000000000000000000000000000000000000
      000000000000E5C6B800E5C6B800E9CCC100E9CBBF00E6C7BA00E6C7BA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099451700994517009945
      1700994517009945170099451700994517009945170099451700994517009945
      1700994517009945170099451700000000000000000099451700994517009945
      1700994517009945170099451700994517009945170099451700994517009945
      1700994517009945170099451700000000000000000099451700994517009945
      1700994517009945170099451700994517009945170099451700994517009945
      1700994517009945170099451700000000000000000099451700994517009945
      1700994517009945170099451700994517009945170099451700994517009945
      170099451700994517009945170000000000CF892300FFC47D00E3A45C00DC99
      4C00FFAB4500ED993500D1842700FB951D00FF931100FA880900FA820100FA80
      0000FA800000FB810000FF88000099451700CF892300FFC47D00E3A45C00DC99
      4C00FFAB4500ED993500D1842700FB951D00FF931100FA880900FA820100FA80
      0000FA800000FB810000FF88000099451700CF892300FFC47D00E3A45C00DC99
      4C00FFAB4500ED993500D1842700FB951D00FF931100FA880900FA820100FA80
      0000FA800000FB810000FF88000099451700CF892300FFC47D00E3A45C00DC99
      4C00FFAB4500ED993500D1842700FB951D00FF931100FA880900FA820100FA80
      0000FA800000FB810000FF88000099451700E0970E00E9AF7A003E352C003931
      2900C68641006C4F2D002B272300A7692200C9771B00362B1C003A2D1B00382B
      1C003B2C180047311600F37F000099451700E0970E00E9AF7A003E352C003931
      2900C68641006C4F2D002B272300A7692200C9771B00362B1C003A2D1B00382B
      1C003B2C180047311600F37F000099451700E0970E00E9AF7A003E352C003931
      2900C68641006C4F2D002B272300A7692200C9771B00362B1C003A2D1B00382B
      1C003B2C180047311600F37F000099451700E0970E00E9AF7A003E352C003931
      2900C68641006C4F2D002B272300A7692200C9771B00362B1C003A2D1B00382B
      1C003B2C180047311600F37F000099451700E0970E00FFC28900BB8B5B00AF7F
      4D00FAAB5200CA883E00A66E2E00E78F2800E28A2A009A653C00B56B2200D774
      0700A35E2100A6602100FE86000099451700E0970E00FFC28900BB8B5B00AF7F
      4D00FAAB5200CA883E00A66E2E00E78F2800E28A2A009A653C00B56B2200D774
      0700A35E2100A6602100FE86000099451700E0970E00FFC28900BB8B5B00AF7F
      4D00FAAB5200CA883E00A66E2E00E78F2800E28A2A009A653C00B56B2200D774
      0700A35E2100A6602100FE86000099451700E0970E00FFC28900BB8B5B00AF7F
      4D00FAAB5200CA883E00A66E2E00E78F2800E28A2A009A653C00B56B2200D774
      0700A35E2100A6602100FE86000099451700E0970E00E7B18100453B33004137
      2E00C58B4D0072553500352D2500A16A28007F6379001A2AD40052498A00BB70
      2F001C2EC6002030BD00E57A0A0099451700E0970E00E7B18100453B33004137
      2E00C58B4D0072553500352D2500A16A28007F6379001A2AD40052498A00BB70
      2F001C2EC6002030BD00E57A0A0099451700E0970E00E7B18100453B33004137
      2E00C58B4D0072553500352D2500A16A28007F6379001A2AD40052498A00BB70
      2F001C2EC6002030BD00E57A0A0099451700E0970E00E7B18100453B33004137
      2E00C58B4D0072553500352D2500A16A28007F6379001A2AD40052498A00BB70
      2F001C2EC6002030BD00E57A0A0099451700E0970E00FEC48B00AA835D009F78
      5100FCB46500C68A4A008A603400EA953400E2903D006E587B00B7743B00FE8C
      0A0084594E008A594400FE86000099451700E0970E00FEC48B00AA835D009F78
      5100FCB46500C68A4A008A603400EA953400E2903D006E587B00B7743B00FE8C
      0A0084594E008A594400FE86000099451700E0970E00FEC48B00AA835D009F78
      5100FCB46500C68A4A008A603400EA953400E2903D006E587B00B7743B00FE8C
      0A0084594E008A594400FE86000099451700E0970E00FEC48B00AA835D009F78
      5100FCB46500C68A4A008A603400EA953400E2903D006E587B00B7743B00FE8C
      0A0084594E008A594400FE86000099451700E0970E00E2AD7F00483E34004037
      3000BF8F590070563B002E2925009F6C300086697F001427DA00534B8F00C077
      32001C2FC5001F2FBD00DA780F0099451700E0970E00E2AD7F00483E34004037
      3000BF8F590070563B002E2925009F6C300086697F001427DA00534B8F00C077
      32001C2FC5001F2FBD00DA780F0099451700E0970E00E2AD7F00483E34004037
      3000BF8F590070563B002E2925009F6C300086697F001427DA00534B8F00C077
      32001C2FC5001F2FBD00DA780F0099451700E0970E00E2AD7F00483E34004037
      3000BF8F590070563B002E2925009F6C300086697F001427DA00534B8F00C077
      32001C2FC5001F2FBD00DA780F0099451700E0970E00FFC78F00FBB77B00F2B0
      7700FFC17900FEAF6300EA9C4F00FFAB4600FFA43500DA8E4100FB962500FF97
      1300E9831800EE800D00FF88000099451700E0970E00FFC78F00FBB77B00F2B0
      7700FFC17900FEAF6300EA9C4F00FFAB4600FFA43500DA8E4100FB962500FF97
      1300E9831800EE800D00FF88000099451700E0970E00FFC78F00FBB77B00F2B0
      7700FFC17900FEAF6300EA9C4F00FFAB4600FFA43500DA8E4100FB962500FF97
      1300E9831800EE800D00FF88000099451700E0970E00FFC78F00FBB77B00F2B0
      7700FFC17900FEAF6300EA9C4F00FFAB4600FFA43500DA8E4100FB962500FF97
      1300E9831800EE800D00FF88000099451700E0970E00F2BB8900D8D4AF00D9D7
      B000D4D0AA00D8D1A600DACF9D00D4C99200DEC68800FFAD4200FB962500EF8C
      1E00F3881000F6860800FF88010099451700E0970E00F2BB8900D8D4AF00D9D7
      B000D4D0AA00D8D1A600DACF9D00D4C99200DEC68800FFAD4200FB962500EF8C
      1E00F3881000F6860800FF88010099451700E0970E00F2BB8900D8D4AF00D9D7
      B000D4D0AA00D8D1A600DACF9D00D4C99200DEC68800FFAD4200FB962500EF8C
      1E00F3881000F6860800FF88010099451700E0970E00F2BB8900D8D4AF00D9D7
      B000D4D0AA00D8D1A600DACF9D00D4C99200DEC68800FFAD4200FB962500EF8C
      1E00F3881000F6860800FF88010099451700E0970E00C79A730050C6BB0051CB
      C00051CBC00051CBC10051CBC1004BCBC40074D7CE00FBB56000BB742600A167
      2300985F1C00B0681300FF8B040099451700E0970E00C79A730050C6BB0051CB
      C00051CBC00051CBC10051CBC1004BCBC40074D7CE00FBB56000BB742600A167
      2300985F1C00B0681300FF8B040099451700E0970E00C79A730050C6BB0051CB
      C00051CBC00051CBC10051CBC1004BCBC40074D7CE00FBB56000BB742600A167
      2300985F1C00B0681300FF8B040099451700E0970E00C79A730050C6BB0051CB
      C00051CBC00051CBC10051CBC1004BCBC40074D7CE00FBB56000BB742600A167
      2300985F1C00B0681300FF8B040099451700EAA12700F6BA8B00C4976C00C498
      6C00C4986C00C4976B00C4956000C18E5300D1965000FFAB4F00F39A3800FB9A
      2D00E0862100EF891600FF910A0099451700EAA12700F6BA8B00C4976C00C498
      6C00C4986C00C4976B00C4956000C18E5300D1965000FFAB4F00F39A3800FB9A
      2D00E0862100EF891600FF910A0099451700EAA12700F6BA8B00C4976C00C498
      6C00C4986C00C4976B00C4956000C18E5300D1965000FFAB4F00F39A3800FB9A
      2D00E0862100EF891600FF910A0099451700EAA12700F6BA8B00C4976C00C498
      6C00C4986C00C4976B00C4956000C18E5300D1965000FFAB4F00F39A3800FB9A
      2D00E0862100EF891600FF910A009945170000000000DC910300E79F2300EBA5
      3400E9A33400E29E3400EEA74700EEA34000E99C3500E3932D00E28E2300E088
      1C00E1831500DE7F0F00C56B0C000000000000000000DC910300E79F2300EBA5
      3400E9A33400E29E3400EEA74700EEA34000E99C3500E3932D00E28E2300E088
      1C00E1831500DE7F0F00C56B0C000000000000000000DC910300E79F2300EBA5
      3400E9A33400E29E3400EEA74700EEA34000E99C3500E3932D00E28E2300E088
      1C00E1831500DE7F0F00C56B0C000000000000000000DC910300E79F2300EBA5
      3400E9A33400E29E3400EEA74700EEA34000E99C3500E3932D00E28E2300E088
      1C00E1831500DE7F0F00C56B0C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A4676900A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A4676900A467690000000000000000000274AC000274AC000274
      AC000274AC000274AC000274AC000274AC000274AC000274AC000274AC000274
      AC000274AC000274AC00000000000000000000000000000000008F7A66008F7A
      66008F7A66000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000092635D00A4676900A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A467690000000000000000000000000000000000B7918400FEE9
      C700F4DAB500F3D5AA00F2D0A000EFCB9600EFC68B00EDC18200EBC17F00EBC1
      8000EBC18000F2C78200A4676900000000000274AC00138AC40057B7E0006BCB
      F8004BBFF7004ABFF7004ABFF7004ABFF7004ABFF6004ABFF7004ABFF6004BC0
      F7002398CC000274AC0000000000000000000B590E00BBB59500D0C1B800D0C2
      B400EED5BC008F7A66008F7A66008F7A66008F7A660000000000000000000000
      0000000000000000000000000000000000000000000096655E00F3DEBB00F3DA
      B500F2D8AF00F2D5A900F0D3A400EFD09F00EFCE9A00EECB9600EDCA9200EDC6
      8F00EDC68B009F6F600000000000000000000000000000000000B7918700FCEA
      CE00F3DABC00F2D5B100F0D0A700EECB9E00EDC79300EDC28B00E9BD8100E9BD
      7F00E9BD7F00EFC48100A4676900000000000274AC0033AAE0002392C40089D9
      FA0054C7F80054C7F70053C7F80054C7F70054C7F80054C7F80054C7F80053C7
      F700279DCE006ACBE5000274AC000000000009701900BBCFA900D3C4BD00C5C1
      BD00FFEED700FFEBCF00FFE5C200FFE1B600FFDEAC008F7A66008F7A66008F7A
      6600000000000000000000000000000000000000000099685F00F4E1C000004B
      0000F3DCB600F3D8B000811E0000811E0000811E0000811E0000811E0000811E
      0000EEC78F009F6F600000000000000000000000000000000000B7938A00FEEF
      DA00F6E0C600F2DABC00F2D5B200EFD0A900EECB9E00EDC79600EBC28C00E9BD
      8200E9BD7F00EFC48100A4676900000000000274AC0057CAF8000274AC0099E3
      FB005ED1FA005ED1FA005ED1FA005ED1FA005ED1FA005FD1FA005ED1F8005ED1
      F8002CA1CE0099EDF7000274AC000000000000560500A9C9A000CBBDBC00C5C1
      BD00EDE0CF00554D4400554D4400C5A68F00D9B69500DDB68C00FFD39A008F7A
      660000000000000000000000000000000000000000009E6B6200F7E5C900F6E1
      C200F4DEBC00F4DCB600F2D8B100F2D7AB00F0D3A600EFD0A100EFCF9D00EECB
      9800EEC993009F6F600000000000000000000000000000000000BA978F00FFF4
      E500F7E5CF00F4E0C500F3DABB00F2D5B100F0D0A600EECB9E00EDC79500EBC2
      8A00EABF8100EFC48000A4676900000000000274AC005ED3FA000B81B70082D5
      EF0079E0FA006ADCFA0069DCFB0069DCFB006ADCFB0069DCFB0069DCFA006ADD
      FB002FA6CF009FF0F7000274AC00000000000054010080A77D00CEC1C500C5C1
      BD00E2DACF00C7BAAB00C2BA9E00554D4400554D4400554D4400F7C59A008F7A
      66000000000000000000000000000000000000000000A3706400F7E7CF00F7E5
      C900F6E1C200F4E0BD00F3DCB700F2D9B100F2D7AD00F2D4A700F0D1A300F0CF
      9D00EECC98009F6F600000000000000000000000000000000000C09E9500FFFB
      F000F8EADC00F6E3CF00F4E0C600F2D9BC00F2D5B100F0D0A900EDCB9E00EDC6
      9500EBC28A00EFC58300A4676900000000000274AC0068DAFB002BA4D1004AB2
      D70097EBFC0074E5FB0074E5FB0074E5FC0074E5FC0074E5FB0074E5FC00046B
      0B0033A9CF00A3F4F70052BBD7000274AC00004D000068936600C9C0C400C5C1
      BD00E3DED900554D440024651F0006450600064106000D4C0B00064206000643
      06000644060000000000000000000000000000000000A9756600F8EBD500004B
      0000F7E6CA00F7E2C400811E0000811E0000811E0000811E0000811E0000811E
      00009580620063453C0000000000000000000000000000000000C6A49A00FFFF
      FC00FAF0E600F8EADA00F7E5CF00F4E0C500F2DABA00F2D5B100F0D0A700EECB
      9D00EBC79300F2C98C00A4676900000000000274AC0070E3FB005CD1EF001184
      B600FCFFFF00B8F4FE00BAF4FE00BAF4FE00BAF4FE00B8F4FE00046B0B0025AA
      4200046B0B00D4F7FA00CAF3F7000274AC00004700004E844F00C6C1C500C5C1
      BD00CEC9CA00738A6B00044E050003620300007F000001730100026002000355
      0300044B040006440600064306000346030000000000AF796800FAEFDC00F8EB
      D700F8E9D000F6E6CB00F6E3C500F6E0BF00F4DDBA00F3DAB400A08F9800413B
      75005A5064005F433D0000000000000000000000000000000000CBA99E00FFFF
      FF00FEF7F200FAEFE600F8EAD900F7E3CF00F6E0C500F2DABB00F2D4B100F0D0
      A700EECC9E00F3CE9700A4676900000000000274AC007AEBFE007AEBFC000A7F
      B5000274AC000274AC000274AC000274AC000274AC00046B0B0038CE650047E7
      7F0029B44A00046B0B000274AC000274AC00000000002D692E00C5C1BD00C5C1
      BD00CBCAC900135E160005520700038B09000186030000810000008200000083
      00000086000000860000005F00000048000000000000B67F6A00FBF2E200FAEE
      DD00F8EBD800F7E9D100F7E6CB00F7E3C600F6E1C000F4DDBA001717C6001515
      D70008089C000D0A480000000000000000000000000000000000CFAC9F00FFFF
      FF00FFFEFC00FCF6F000FAEFE600F7EADA00F6E3CF00F4E0C500F3D9BB00F3D4
      B000F0D0A600F6D3A000A4676900000000000274AC0083F2FE0082F3FE0082F3
      FE0083F2FC0083F3FE0082F3FE0083F2FE00046B0B002DC051003FDC6E003ED8
      6E0046E57B0028B04A00046B0B0000000000000000001C5A1C00C5C1BD00FFFA
      FF0050804F00064607000C971D000897160005900D0002890500008301000081
      000000840000006B0000004A00000000000000000000BC846C00FBF4E900004B
      0000FAEFDE00F8EDD800811E0000811E0000811E0000811E00007070F4007676
      FE001313CA0007064D0000000000000000000000000000000000D4B0A100FFFF
      FF00FFFFFF00FFFEFC00FEF7F000FAEFE500F8EAD900F7E5CE00F6DEC400F3D9
      B800F4D8B100EBCFA400A4676900000000000274AC00FEFEFE0089FAFF0089FA
      FE0089FAFE008AF8FE008AFAFE00046B0B00046B0B00046B0B00046B0B003CD8
      6A002EBF5300046B0B00046B0B00046B0B000000000005430500C5C1BD00E5EE
      E200094B0A001089260013AA2F000EA324000A9C1B0007951100048C0900018A
      030000700000004B0000000000000000000000000000C1896F00FCF7EE00FCF4
      E900FAF2E500FBF0DE00FAEED900F8EBD400F7E6CE00F6E3C900635EC100645F
      C9005C539700110D590000000000000000000000000000000000D9B5A100FFFF
      FF00FFFFFF00FFFFFF00FFFEFC00FCF7F000FAEFE500F8E9D900F8E7D100FBEA
      CE00DECEB400B6AA9300A467690000000000000000000274AC00FEFEFE008FFE
      FF008FFEFF008FFEFF000273A3002BA4D1002BA4D1002BA4D100046B0B0035D3
      5E0020A73A00046B0B0000000000000000000000000001420100A6A0A5002769
      2800096214001EBF4D0019B5410015AD350011A629000C9F1F00099C18000483
      0A00004D000000000000000000000000000000000000C78E7000FCF8F300FCF7
      EF00FCF4EA00FBF3E500FBEFE100F8EEDA00F8EBD400F7E7CF00EDDCC900E2CF
      BF00EDD7BB0016115C0000000000000000000000000000000000DDB7A400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FCF6EF00FCF3E600EDD8C900B68A
      7B00A17B6F009C766700A46769000000000000000000000000000274AC000274
      AC000274AC000274AC0000000000000000000000000000000000046B0B0028C2
      4A00046B0B000000000000000000000000000000000001490100375835000949
      0A001BB747001EBC4C001DC14D001BBD470017BA3D0014AD33000D971F000154
      02000000000000000000000000000000000000000000CC927300FEFBF800004B
      0000FCF7EF00FBF6EB00811E0000811E0000811E0000811E0000811E0000811E
      0000EFDDC2001C165D0000000000000000000000000000000000E2BCA500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFB00FFFEF700DAC1BA00AD73
      5B00E19E5500E68F3100B56D4D00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000046B0B0017A42B0019A7
      3000046B0B00000000000000000000000000000000000000000009520D001757
      230024894500237F40002382400021954500218B410018B53F00035D06000000
      00000000000000000000000000000000000000000000D0967400FEFEFB00FEFC
      F800FEFBF400FCF7F000FCF6EB00FCF3E600FBF0E200FAEFDD00FAEBD700F8E9
      D100F3E1CA001F185F0000000000050554000000000000000000E6BFA700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCC7C500B882
      6500F8B55C00BF7A5C0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000046B0B0011A12200046B
      0B000000000000000000000000000000000000000000000000002D312B00283D
      2A0019401C001B471F001E4523001D58290021502B0007681000000000000000
      00000000000000000000000000000000000000000000D4987500FFFFFF00FEFE
      FC00FEFCF800FEFAF400FCF8F000FCF7ED00FBF4E700FAF2E300FAEFDD00F8ED
      D900F8E9D1001C16600000000000050554000000000000000000E4BCA400FBF4
      F000FBF4EF00FAF3EF00FAF3EF00F8F2EF00F7F2EF00F7F2EF00D8C2C000B77F
      6200C1836C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000046B0B00046B0B00046B0B00046B0B000000
      0000000000000000000000000000000000000000000000000000000000002D31
      2B002D312B002D312B002B362D002B372D00223C230000000000000000000000
      00000000000000000000000000000000000000000000D4987500CF8E6800CF8E
      6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E
      6800CF8E680005055F0006067600000000000000000000000000E8C4AD00EBCB
      B700EBCBB700EACBB700EACAB600EACAB600EACAB600EACAB600E3C2B100A56B
      5F00000000000000000000000000000000000000000000000000000000000000
      000000000000046B0B00046B0B00046B0B00046B0B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000000100000100010000000000000800000000000000000000
      000000000000000000000000FFFFFF00F807FFFF00000000F807F83F00000000
      F007E6CF00000000E003DEF700000000C003BEFB00000000C001BC7B00000000
      80017ABD00000000000176DD000000000000000100000000900076DD00000000
      E0007ABD00000000E000BC7B00000000C005BEFB00000000C007DEF700000000
      E40FE6CF00000000FE7FF83F00000000FFFFFFFFFCFFFFFFFFFFFFFFFCFFFFFF
      FFFFFFC7FCFFFF21BFFD7FBBFAFFFC0F8001BF7DFAFF78F7BFFDBE7DE6FF73FB
      FFFFDE7E1EFF87FBFFFFDEFE0000EFF98FF1EDFFFEF8EFFDAFF5F3FFFEE7DFFD
      8FF1FFFFFEDFDFFDEFF7FFFFFEBFDFFD8FF7FFFFFEBFBFFFFFFFFFFFFE7FBFFF
      FFFFFFFFFE7FBFFFFFFFFFFFFE7FFFFFFFFDFFFFFFFFFFFDDFFBFFFFFFE7DFFB
      8001FFFFFFC78001DFF7BFFD7FBBDFF7DFEF8001BF7DDFEFDFEFBFFDBF7DDFEF
      DFDFFFFFDEFEDFDF1FBFFFFFDEFE1FBFCE7F8FF1EDFFCE7FD1FFAFF5F3FFD1FF
      DFFF8FF1F3FFDFFFDFFFEFF7FFFFDFFFDFFF8FF7FFFFDFFFDFFFFFFFFFFFDFFF
      DFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFDFFFFFFFDFFB0001
      8001FFFE8001F83FDC0FFFFCDFF7F6DFDBF7FF80DFEFEEEFD7FBFF31DFEFDEF7
      CDED7C59DFDFDEF7CEDD7AED1FBFBEFBCF3D7AADCE7FBEFBCEDD7A29D1FFBEFB
      CDED1B23DFFFBEFBD7FB7A87DFFF7EFDDBF77AAFDFFF7EFDDC0F7BEFDFFF7EFD
      DFFF0DDFDFFF7EFDFFFFFFFFFFFF7EFDF81FF81FC3FFAAABE007E00781FF8001
      C003C00300FFFFFF80018001007FBFF180018001803FBFF700000000C01FDFF7
      000003C0E00FDFF7000007E0F007EFF7000007E0F803F7FF000003C0FC01F81F
      00000000FE00FFE780018001FF00FFFB80018001FF81FFFBC003C003FFC3FFFB
      E007E007FFFFFFFDF81FF81FFFFFFFFDFFFFFFFFFFFF9FF9FFFFFFFFFFFF8FF1
      FF21AAABFE3F87E1FC0FAAABF94F83C178F7CAABF557818173FBCAABE5538001
      87FBEAAB95558001EFF9F2ABC1548001EFFDF80BBC558001DFFDFFE3FF138001
      DFFDFFFBFFCF8001DFFDFFFBFFFF8001BFFFFFFBFFFFE007BFFFFFFDFFFFF00F
      BFFFFFFDFFFFF81FFFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFF15FFFDF7FFFFFFF
      F5BFFFBFBFFFFFFFF953FF7FDFFFFFFFFDF7FE0FEF0FFF0FFDFBFCF7F6F7FEF4
      FDF3F9FBF9FBFDFBFFFFF3FDF9FDFBE5E00FE7FDF6FDF79DFFFFD7FFF77FF77F
      F1BFAFFFEFBFECFFF5BF6FFFEFDFEBFFF993DFFFDFEFC7FFFDB7DFFFDFF79FFF
      FDBBBFFFBFFB3FFFFDD3BFFFBFFFBFFFFFFFFFFFFFFFFFFFC0038001FFDFF15F
      80018001FFCFF5BF80018001E007F95F80018001FFCFFDFF80018001FFDFFDFF
      80018001FFFFFDFF80018001FFFFFFFF800180018557E00F80018001DD67FFFF
      80018001DE03F1BF80018001DEABF5BF80018001EFFFF99F80018001EF7FFDBF
      C0038001FFFFFDBFFFFFFFFFFFFFFDDF9FFFFFFFFFFFFFFF0FFFC003C003C003
      07FF80018001800183FF800180018001C1FF800180018001E10F800180018001
      F003800180018001F801800180018001F801800180018001F800800180018001
      F800800180018001F800800180018001F801800180018001FC01800180018001
      FE03C003C003C003FF0FFFFFFFFFFFFFFC1FFE3FFFFF9FFFF00FE00700210FFF
      F00FE007002907FFF00F8003002183FFE01F80010021C1FFC0078001FFFEE10F
      C00380010021F003C00380010029F801C00380010021F801C003C0030021F800
      C003E007FFFEF800C003F81F0021F800C003F81F0029F801C003F81F0021FC01
      E003F81F0021FE03FE07FC3FFFFEFF0FDC1FDC1FFFFFC7FFC01FC01FF70701FF
      DC1FDC1FF00701FFDFFFDFFFF70700F9DC1FDC1FF7FF8000C01FC01FF707C000
      DC1FDC1FF0078001DFFFDFFFF7078001DC1FDC1FF7FF8001C01FC01FF7078001
      DC1FDC1FF007800107E107E4F707800107E907E0C1FF800307E507F1C1FF8007
      FFE0FFE0C1FFC007FFFEFFE4FFFFF007FFFF80FFF33FDC1F0000007FE007C01F
      0000007FC000DC1F0000007F8001DFFF0000007F0000DC1F000000000000C01F
      000000000000DC1F000000008000DFFF00008000E001DC1F0000F800F003C01F
      0000F800F01FDC130000F800E03F07F30000F800E03F07C08001F800C03F07C0
      FFFFF800C07FFFF3FFFFF800F8FFFFF38001FFFFFF80FF800000C007FF80FF80
      00008003FF80FF8000008003FF80FF8000008003FF80FF8000008003FF80FF80
      00008003FF80FF80000080030081008100008003008200830000800300DE00E3
      80018003009C00C1C003800300000080E0078003000100E3F00F8003000300E3
      FC3FC007019F01C3FFFFFFFF03DF0307F00000000000F81FF00000000000E007
      F00000000000C003C000000000008001C000000000008001C000000000000000
      0000000000000000000080010000000000000000000000000001000000000000
      000300000000000000030000000080010007000000008001000F00000000C003
      000F00000000E007801F80018181F81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      8001800180018001000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008001800180018001
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0018003C7FF8003C0010003007F8003
      C0010001000F8003C0010001000F8003C0010001000F8003C001000000078003
      C001000000008003C001000080008003C001000180018003C001000080038003
      C001800380078003C001C3C7800F8003C001FF87C01F8002C003FF8FC03F8002
      C007FE1FE07F8001C00FF87FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object imlDisabled: TImageList
    Left = 108
    Top = 68
    Bitmap = {
      494C010122002700080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000009000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009898
      9800959595009292920091919100919191009191910091919100919191009191
      9100919191008C8C8C0000000000000000000000000070707000707070007070
      7000707070007070700070707000707070007070700070707000707070007070
      7000707070007070700070707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4A4A400ACACAC00ABAB
      AB00A8A8A800A6A6A600A5A5A500A4A4A400A4A4A400A5A5A500A5A5A500A4A4
      A400A5A5A5009D9D9D008C8C8C00000000000000000070707000D5D5D500CFCF
      CF00CACACA00C4C4C400BFBFBF00B9B9B900B3B3B300AEAEAE00AAAAAA00A4A4
      A400A0A0A0009F9F9F0070707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ACACAC00B5B5B500B2B2
      B200B0B0B000AEAEAE00ACACAC00ABABAB00AAAAAA00AAAAAA00AAAAAA00AAAA
      AA00ACACAC00A5A5A50091919100000000000000000070707000DADADA00D7D7
      D700D1D1D100CBCBCB00C6C6C600C0C0C000BABABA00B4B4B400B0B0B000AAAA
      AA00A5A5A500A1A1A10070707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AFAFAF00B8B8B800B5B5
      B500B2B2B200AFAFAF00ADADAD00ACACAC00AAAAAA00A8A8A800A8A8A800A7A7
      A700AAAAAA00A5A5A50091919100000000000000000070707000DFDFDF00DBDB
      DB00D8D8D800D2D2D200CDCDCD00C8C8C800C2C2C200BCBCBC00B6B6B600B0B0
      B000AAAAAA00A6A6A60070707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0B000BEBEBE00B9B9
      B900B5B5B500B2B2B200B0B0B000ADADAD00ACACAC00ABABAB00A8A8A800A8A8
      A800AAAAAA00A5A5A50091919100000000000000000070707000E1E1E100E0E0
      E000DCDCDC00D8D8D800D4D4D400CECECE00C9C9C900C3C3C300BDBDBD00B7B7
      B700B2B2B200ACACAC0070707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0B000C7C7C700BFBF
      BF00FFFFFF00FFFFFF00B3B3B300B1B1B100AFAFAF00ADADAD00FFFFFF00FFFF
      FF00AAAAAA00A5A5A50091919100000000000000000070707000E1E1E100E1E1
      E100E0E0E000DDDDDD00D9D9D900D5D5D500CFCFCF00CACACA00C5C5C500BFBF
      BF00B9B9B900B3B3B30070707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0B000D2D2D200C5C5
      C500FFFFFF00FFFFFF00FFFFFF00B4B4B400B2B2B200FFFFFF00FFFFFF00FFFF
      FF00ACACAC00A5A5A50091919100000000000000000070707000C3C3C300CECE
      CE00D5D5D500D9D9D900DDDDDD00DADADA00D6D6D600D1D1D100CCCCCC00C6C6
      C600C0C0C000BABABA0070707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0B000DADADA00C8C8
      C800BFBFBF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADAD
      AD00ADADAD00A6A6A600949494000000000000000000707070009E9E9E009E9E
      9E009E9E9E00A2A2A200ABABAB00B3B3B300BCBCBC00CACACA00C9C9C900C9C9
      C900C4C4C400C2C2C20070707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0B000DDDDDD00CBCB
      CB00C1C1C100BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B4B4B400B1B1
      B100B0B0B000ABABAB00999999000000000000000000707070009E9E9E009E9E
      9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E
      9E00A8A8A800BCBCBC0070707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0B000E0E0E000CFCF
      CF00C7C7C700C3C3C300BFBFBF00FFFFFF00FFFFFF00B7B7B700B5B5B500B5B5
      B500B4B4B400ADADAD009D9D9D000000000000000000707070008D8D8D009898
      98009F9F9F008E8E8E007C7C7C0089898900A3A3A300ABABAB00A2A2A2009595
      9500898989008C8C8C0070707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0B000E4E4E400D6D6
      D600C8C8C800C7C7C700C3C3C300BFBFBF00BFBFBF00BCBCBC00B8B8B800B6B6
      B600B5B5B500AFAFAF00A0A0A0000000000000000000707070008A8A8A009595
      9500989898008B8B8B007B7B7B00868686009A9A9A009D9D9D00A0A0A0009090
      9000868686008989890070707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0B000E7E7E700E3E3
      E300DCDCDC00D7D7D700D2D2D200CDCDCD00C7C7C700BFBFBF00BABABA00B8B8
      B800B8B8B800B4B4B400A5A5A500000000000000000070707000B1B1B100A9A9
      A900A3A3A300A0A0A000A0A0A000A0A0A000BABABA00DADADA00E9E9E900D9D9
      D900BCBCBC00B1B1B10070707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0B000DCDCDC00E7E7
      E700E8E8E800E4E4E400E0E0E000D8D8D800CECECE00C4C4C400BDBDBD00BABA
      BA00BBBBBB00B5B5B500A7A7A700000000000000000070707000DFDFDF00D8D8
      D800CECECE00B3B3B300ABABAB00BDBDBD00E4E4E400F0F0F000F0F0F000F0F0
      F000E7E7E700DFDFDF0070707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7B7B700C2C2
      C200C3C3C300C2C2C200BFBFBF00BDBDBD00B7B7B700B5B5B500B2B2B200B0B0
      B000B1B1B100ACACAC0000000000000000000000000070707000707070007070
      7000707070007070700070707000707070007070700070707000707070007070
      7000707070007070700070707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063636300A9A9A9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000979797008383830077777700ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009D9D9D009C9C
      9C00999999009696960095959500959595009595950095959500959595009595
      95009595950091919100000000000000000000000000000000009D9D9D009C9C
      9C00999999009696960095959500959595009595950095959500959595009595
      9500959595009090900000000000000000000000000000000000989898009797
      970094949400919191008F8F8F008F8F8F008F8F8F008F8F8F008F8F8F008F8F
      8F008F8F8F008B8B8B000000000000000000A4A4A400A8A8A800848484007676
      7600ACACAC000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A8A8A800B1B1B100AEAE
      AE00ADADAD00AAAAAA00A9A9A900A8A8A800A8A8A800A9A9A900A9A9A900A8A8
      A800A9A9A900A1A1A100919191000000000000000000A8A8A800B0B0B000AEAE
      AE00ACACAC00AAAAAA00A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8
      A800A9A9A900A1A1A100909090000000000000000000A3A3A300ACACAC00AAAA
      AA00A8A8A800A6A6A600A4A4A400A3A3A300A3A3A300A4A4A400A4A4A400A3A3
      A300A5A5A5009C9C9C008B8B8B000000000000000000A7A7A700A8A8A8008181
      810077777700AEAEAE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0B000B9B9B900B6B6
      B600B4B4B400B2B2B200B1B1B100AEAEAE00ADADAD00ADADAD00ADADAD00ADAD
      AD00AFAFAF00A9A9A900959595000000000000000000B0B0B000B9B9B900B6B6
      B600B4B4B400B2B2B200B0B0B000AEAEAE00ADADAD00ADADAD00ADADAD00ADAD
      AD00AFAFAF00A9A9A900959595000000000000000000ACACAC00B6B6B600B2B2
      B200B0B0B000AFAFAF00ACACAC00AAAAAA00A9A9A900A9A9A900A9A9A900A9A9
      A900ABABAB00A5A5A5008F8F8F00000000000000000000000000A7A7A700A6A6
      A6008282820078787800A6A6A600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3B3B300BCBCBC00B9B9
      B900B5B5B500B3B3B300B1B1B100AFAFAF00FFFFFF00FFFFFF00ACACAC00ABAB
      AB00ADADAD00A9A9A900969696000000000000000000B3B3B300BCBCBC00B9B9
      B900B5B5B500B3B3B300FFFFFF00FFFFFF00ADADAD00ACACAC00ACACAC00ABAB
      AB00ADADAD00A8A8A800959595000000000000000000AFAFAF00B9B9B900B5B5
      B500B2B2B200AFAFAF00ADADAD00ABABAB00A9A9A900A8A8A800A7A7A700A7A7
      A700A9A9A900A4A4A4009090900000000000000000000000000000000000A8A8
      A800A5A5A500808080006A6A6A00000000008E8E8E00AEAEAE00BEBEBE00B7B7
      B7000000000000000000000000000000000000000000B4B4B400C1C1C100BDBD
      BD00B9B9B900B6B6B600B4B4B400FEFEFE00FFFFFF00FFFFFF00ADADAD00ACAC
      AC00ADADAD00A9A9A900959595000000000000000000B4B4B400C1C1C100BDBD
      BD00B9B9B900B6B6B600FFFFFF00FFFFFF00FEFEFE00AEAEAE00ACACAC00ACAC
      AC00ADADAD00A8A8A800959595000000000000000000B0B0B000BEBEBE00BABA
      BA00B6B6B600B2B2B200B0B0B000FFFFFF00FFFFFF00AAAAAA00A8A8A800A7A7
      A700A9A9A900A4A4A4008F8F8F00000000000000000000000000000000000000
      0000AAAAAA00D1D1D100989898009D9D9D00DCDCDC00ECECEC00EBEBEB00EAEA
      EA00D6D6D600B8B8B800000000000000000000000000B4B4B400CBCBCB00C3C3
      C300BDBDBD00B9B9B900FEFEFE00FFFFFF00FFFFFF00B1B1B100AEAEAE00ADAD
      AD00ADADAD00A9A9A900959595000000000000000000B4B4B400CBCBCB00C4C4
      C400BDBDBD00B9B9B900B6B6B600FFFFFF00FFFFFF00FEFEFE00AEAEAE00ADAD
      AD00ADADAD00A8A8A800959595000000000000000000B0B0B000C8C8C800C1C1
      C100BABABA00B6B6B600FFFFFF00FFFFFF00FFFFFF00FFFFFF00AAAAAA00A9A9
      A900A9A9A900A4A4A4008F8F8F00000000000000000000000000000000000000
      000000000000C1C1C100BFBFBF00E0E0E000EAEAEA00ECECEC00ECECEC00EFEF
      EF00F6F6F600F0F0F0009E9E9E000000000000000000B4B4B400D5D5D500C8C8
      C800C0C0C000FFFFFF00FFFFFF00FFFFFF00B6B6B600B4B4B400B2B2B200B0B0
      B000AFAFAF00A9A9A900969696000000000000000000B4B4B400D6D6D600C8C8
      C800C0C0C000BDBDBD00BABABA00B8B8B800FFFFFF00FFFFFF00FFFFFF00B0B0
      B000AFAFAF00A9A9A900959595000000000000000000B0B0B000D4D4D400C5C5
      C500BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ACAC
      AC00ABABAB00A4A4A40090909000000000000000000000000000000000000000
      000000000000AAAAAA00D5D5D500D3D3D300E6E6E600ECECEC00F0F0F000F8F8
      F800FCFCFC00FFFFFF00CECECE000000000000000000B4B4B400DDDDDD00CCCC
      CC00C2C2C200FFFFFF00FFFFFF00FFFFFF00B8B8B800B6B6B600B4B4B400B2B2
      B200B1B1B100ABABAB00989898000000000000000000B4B4B400DDDDDD00CCCC
      CC00C2C2C200BEBEBE00BCBCBC00BABABA00FFFFFF00FFFFFF00FFFFFF00B2B2
      B200B1B1B100AAAAAA00989898000000000000000000B0B0B000DCDCDC00CACA
      CA00FFFFFF00FFFFFF00FFFFFF00B6B6B600B5B5B500FFFFFF00FFFFFF00FFFF
      FF00ADADAD00A6A6A60092929200000000000000000000000000000000000000
      000000000000C1C1C100D5D5D500A6A6A600B2B2B200B0B0B000B0B0B000B0B0
      B000BEBEBE00E4E4E400E1E1E100AEAEAE0000000000B4B4B400E0E0E000CECE
      CE00C5C5C500C0C0C000FFFFFF00FFFFFF00FFFFFF00B9B9B900B7B7B700B5B5
      B500B4B4B400AEAEAE009D9D9D000000000000000000B4B4B400E1E1E100CFCF
      CF00C5C5C500C0C0C000BCBCBC00FFFFFF00FFFFFF00FFFFFF00B7B7B700B5B5
      B500B4B4B400AEAEAE009C9C9C000000000000000000B0B0B000DFDFDF00CDCD
      CD00FFFFFF00FFFFFF00B9B9B900B8B8B800B8B8B800B5B5B500FFFFFF00FFFF
      FF00B0B0B000AAAAAA0097979700000000000000000000000000000000000000
      000000000000C9C9C900D1D1D100929292007F7F7F007F7F7F007F7F7F007E7E
      7E007E7E7E00CCCCCC00E8E8E800B0B0B00000000000B4B4B400E3E3E300D2D2
      D200C9C9C900C7C7C700C1C1C100FFFFFF00FFFFFF00FFFFFF00BABABA00B8B8
      B800B7B7B700B1B1B100A1A1A1000000000000000000B4B4B400E4E4E400D3D3
      D300CACACA00C7C7C700FFFFFF00FFFFFF00FFFFFF00BCBCBC00BABABA00B8B8
      B800B7B7B700B1B1B100A0A0A0000000000000000000B0B0B000E3E3E300D1D1
      D100C7C7C700C4C4C400BFBFBF00BCBCBC00BBBBBB00B8B8B800B6B6B600B5B5
      B500B3B3B300ADADAD009B9B9B00000000000000000000000000000000000000
      000000000000C4C4C400D9D9D900B2B2B200B8B8B800C2C2C200C2C2C200C2C2
      C200D3D3D300E8E8E800E4E4E400B0B0B00000000000B4B4B400E7E7E700D9D9
      D900CDCDCD00CBCBCB00C6C6C600C3C3C300FFFFFF00FFFFFF00BCBCBC00BABA
      BA00BABABA00B3B3B300A4A4A4000000000000000000B4B4B400E8E8E800D9D9
      D900CDCDCD00CBCBCB00FFFFFF00FFFFFF00C2C2C200BFBFBF00BCBCBC00BABA
      BA00BABABA00B3B3B300A4A4A4000000000000000000B0B0B000E7E7E700D7D7
      D700CACACA00C8C8C800C4C4C400C0C0C000BFBFBF00BCBCBC00B9B9B900B7B7
      B700B6B6B600AFAFAF009F9F9F00000000000000000000000000000000000000
      000000000000B0B0B000DFDFDF00DFDFDF00CDCDCD00C8C8C800D8D8D800E6E6
      E600E8E8E800ECECEC00D0D0D0000000000000000000B4B4B400E9E9E900E6E6
      E600DFDFDF00DADADA00D5D5D500D0D0D000CBCBCB00C3C3C300BDBDBD00BCBC
      BC00BCBCBC00B7B7B700A9A9A9000000000000000000B4B4B400EAEAEA00E7E7
      E700E0E0E000DBDBDB00D6D6D600D0D0D000CBCBCB00C3C3C300BEBEBE00BCBC
      BC00BCBCBC00B7B7B700A8A8A8000000000000000000B0B0B000E9E9E900E6E6
      E600DEDEDE00D9D9D900D4D4D400CECECE00C8C8C800C0C0C000BBBBBB00B9B9
      B900B9B9B900B3B3B300A4A4A400000000000000000000000000000000000000
      00000000000000000000C5C5C500FFFFFF00F4F4F400C5C5C500BCBCBC00C8C8
      C800D9D9D900E2E2E200A6A6A6000000000000000000B4B4B400E0E0E000E9E9
      E900EBEBEB00E7E7E700E3E3E300DCDCDC00D1D1D100C7C7C700C0C0C000BDBD
      BD00BEBEBE00B9B9B900ABABAB000000000000000000B4B4B400E0E0E000EAEA
      EA00ECECEC00E8E8E800E4E4E400DCDCDC00D1D1D100C8C8C800C0C0C000BEBE
      BE00BEBEBE00B9B9B900ABABAB000000000000000000B0B0B000DFDFDF00E9E9
      E900EBEBEB00E7E7E700E2E2E200DADADA00CFCFCF00C5C5C500BDBDBD00BBBB
      BB00BBBBBB00B6B6B600A7A7A700000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600E9E9E900DFDFDF00D7D7D700D9D9
      D900D5D5D500B6B6B60000000000000000000000000000000000BCBCBC00C5C5
      C500C6C6C600C5C5C500C3C3C300C0C0C000BCBCBC00B8B8B800B5B5B500B4B4
      B400B5B5B500B0B0B00000000000000000000000000000000000BCBCBC00C6C6
      C600C6C6C600C6C6C600C4C4C400C0C0C000BCBCBC00B8B8B800B5B5B500B4B4
      B400B5B5B500B0B0B00000000000000000000000000000000000B8B8B800C3C3
      C300C4C4C400C3C3C300C1C1C100BDBDBD00B8B8B800B5B5B500B2B2B200B0B0
      B000B1B1B100ACACAC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0B0B000B5B5B500C3C3C300C2C2
      C200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000079797900797979007979790079797900797979000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000949494009B9B9B0083838300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063636300A9A9A9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009494940079797900EBEBEB00D8D8D800C3C3C300B8B8B800ADADAD007979
      7900000000000000000000000000000000000000000000000000000000009898
      980097979700838383008D8D8D009B9B9B00A0A0A0008989890086868600A2A2
      A200A0A0A0000000000000000000000000008383830083838300838383008383
      8300838383008383830083838300838383008383830083838300000000003C3C
      3C003C3C3C003C3C3C003C3C3C0000000000979797008383830077777700ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000079797900FEFEFE00C5C5C500828282008282820095959500AAAAAA007979
      7900000000000000000000000000000000000000000000000000000000009B9B
      9B00A4A4A400959595008F8F8F00A2A2A200B6B6B6009C9C9C00B3B3B300B7B7
      B7009E9E9E0000000000000000000000000083838300D9D9D900D3D3D300CECE
      CE00C9C9C900C4C4C400BFBFBF00BABABA00B4B4B40083838300000000003C3C
      3C0000000000757575003C3C3C0000000000A4A4A400A8A8A800848484007676
      7600ACACAC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C00BEBEBE0082828200AFAFAF00B7B7B70082828200828282007979
      790000000000000000000000000000000000000000008C8C8C0094949400AAAA
      AA00CACACA00AFAFAF00ABABAB00A8A8A800B3B3B300BCBCBC00BDBDBD00D9D9
      D900C8C8C8008A8A8A00000000000000000083838300EDEDED00E6E6E600E0E0
      E000DADADA00D4D4D400CFCFCF00C9C9C900C3C3C30083838300000000003C3C
      3C0075757500757575003C3C3C000000000000000000A7A7A700A8A8A8008181
      810077777700AEAEAE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007979
      7900CCCCCC00C3C3C300AFAFAF00989898008888880085858500747474000000
      00000000000000000000000000000000000000000000B2B2B200A7A7A700B0B0
      B000D6D6D600D3D3D300BFBFBF00ACACAC00A7A7A700BCBCBC00CBCBCB00CDCD
      CD00AEAEAE00A1A1A1009B9B9B00000000008383830083838300838383008383
      8300838383008383830083838300838383008383830083838300000000003C3C
      3C003C3C3C003C3C3C0068686800000000000000000000000000A7A7A700A6A6
      A6008282820078787800A6A6A600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000079797900B9B9
      B900C8C8C800D1D1D100D6D6D600DCDCDC00DDDDDD00C6C6C600A9A9A9008E8E
      8E007B7B7B00000000000000000000000000000000008B8B8B009A9A9A00B3B3
      B300CBCBCB00D5D5D500BFBFBF00ACACAC00A6A6A600A5A5A5009F9F9F009E9E
      9E009F9F9F009B9B9B0096969600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000075757500000000000000000000000000A8A8
      A800A5A5A500808080006A6A6A00000000008E8E8E00AEAEAE00BEBEBE00B7B7
      B70000000000000000000000000000000000000000000000000080808000BCBC
      BC00A6A6A600AAAAAA00AEAEAE00B2B2B200B8B8B800C4C4C400CBCBCB00C6C6
      C600ACACAC00808080000000000000000000000000008C8C8C009F9F9F00ACAC
      AC00C3C3C300C4C4C400AEAEAE00AEAEAE00AEAEAE00AEAEAE00A8A8A8009D9D
      9D00A4A4A400A6A6A6008D8D8D00000000008383830083838300838383008383
      8300838383008383830083838300838383008383830083838300000000003C3C
      3C003C3C3C003C3C3C003C3C3C00000000000000000000000000000000000000
      0000AAAAAA00D1D1D100989898009D9D9D00D9D9D900EBEBEB00EAEAEA00EBEB
      EB00D6D6D600B8B8B8000000000000000000000000000000000089898900BDBD
      BD00ADADAD00B4B4B400B9B9B900BCBCBC00BCBCBC00B7B7B700B1B1B100B1B1
      B100B1B1B1008E8E8E000000000000000000000000008E8E8E009F9F9F00A5A5
      A500BBBBBB00AEAEAE00EBEBEB00C4C4C400BBBBBB00D7D7D700AEAEAE00BDBD
      BD00D8D8D800E1E1E1009B9B9B000000000083838300D9D9D900D3D3D300CECE
      CE00C9C9C900C4C4C400BFBFBF00BABABA00B4B4B40083838300000000003C3C
      3C0000000000757575003C3C3C00000000000000000000000000000000000000
      000000000000C1C1C100BFBFBF00E0E0E000EAEAEA00CCCCCC00ABABAB00E0E0
      E000F6F6F600F0F0F0009E9E9E0000000000000000000000000089898900BFBF
      BF00B5B5B500BFBFBF00C4C4C400C6C6C600C6C6C600C4C4C400BFBFBF00B8B8
      B800ADADAD008484840000000000000000000000000089898900959595009E9E
      9E00B2B2B200AEAEAE00EAEAEA00C3C3C300BBBBBB00D5D5D500AEAEAE00CACA
      CA00DCDCDC00C6C6C600A2A2A2000000000083838300EDEDED00E6E6E600E0E0
      E000DADADA00D4D4D400CFCFCF00C9C9C900C3C3C30083838300000000003C3C
      3C0075757500757575003C3C3C00000000000000000000000000000000000000
      000000000000AAAAAA00D5D5D500D3D3D300E4E4E400B7B7B7007E7E7E00E1E1
      E100FCFCFC00FFFFFF00CECECE0000000000000000000000000090909000BFBF
      BF00BDBDBD00C6C6C600CDCDCD00CFCFCF00CFCFCF00CECECE00C7C7C700BFBF
      BF00B4B4B4008383830000000000000000000000000000000000818181009797
      9700A9A9A900AEAEAE00EAEAEA00C3C3C300BBBBBB00D5D5D500AEAEAE00C3C3
      C300BBBBBB007B7B7B0000000000000000008383830083838300838383008383
      8300838383008383830083838300838383008383830083838300000000003C3C
      3C003C3C3C003C3C3C0068686800000000000000000000000000000000000000
      000000000000C1C1C100D5D5D500A6A6A600B2B2B2009C9C9C007F7F7F00B0B0
      B000BEBEBE00E4E4E400E1E1E100AEAEAE00000000000000000090909000BFBF
      BF00C3C3C300CECECE00D4D4D400D8D8D800D8D8D800D5D5D500CFCFCF00C6C6
      C600B9B9B9008585850000000000000000000000000000000000000000008686
      860088888800AEAEAE00ECECEC00C3C3C300BBBBBB00D7D7D700AEAEAE009090
      90008F8F8F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000757575000000000000000000000000000000
      000000000000C9C9C900D1D1D100929292007F7F7F007F7F7F007F7F7F007E7E
      7E007E7E7E00CCCCCC00E8E8E800B0B0B000000000000000000090909000BEBE
      BE00C8C8C800D2D2D200D9D9D900DFDFDF00E0E0E000DADADA00D3D3D300CBCB
      CB00BCBCBC008585850000000000000000000000000000000000000000000000
      000000000000AEAEAE00E9E9E900C0C0C000BABABA00D4D4D400AEAEAE000000
      0000000000000000000000000000000000008383830083838300838383008383
      8300838383008383830083838300838383008383830083838300000000003C3C
      3C003C3C3C003C3C3C003C3C3C00000000000000000000000000000000000000
      000000000000C4C4C400D9D9D900B2B2B200B8B8B800A2A2A20080808000C2C2
      C200D3D3D300E8E8E800E4E4E400B0B0B000000000000000000090909000BDBD
      BD00C4C4C400D1D1D100DDDDDD00E5E5E500E6E6E600DEDEDE00D5D5D500CDCD
      CD00BFBFBF008686860000000000000000000000000000000000000000000000
      000000000000AEAEAE00C4C4C400B6B6B600AFAFAF00B9B9B900AEAEAE000000
      00000000000000000000000000000000000083838300D9D9D900D3D3D300CECE
      CE00C9C9C900C4C4C400BFBFBF00BABABA00B4B4B40083838300000000003C3C
      3C0000000000757575003C3C3C00000000000000000000000000000000000000
      000000000000B0B0B000DFDFDF00DFDFDF00CECECE00A3A3A3007F7F7F00D2D2
      D200E8E8E800ECECEC00D0D0D00000000000000000000000000090909000BBBB
      BB00B1B1B100B7B7B700B9B9B900C3C3C300C9C9C900CACACA00C7C7C700C9C9
      C900BFBFBF008787870000000000000000000000000000000000000000000000
      000000000000AEAEAE00E7E7E700D3D3D300B9B9B900BFBFBF00AEAEAE000000
      00000000000000000000000000000000000083838300EDEDED00E6E6E600E0E0
      E000DADADA00D4D4D400CFCFCF00C9C9C900C3C3C30083838300000000003C3C
      3C0075757500757575003C3C3C00000000000000000000000000000000000000
      00000000000000000000C5C5C500FFFFFF00F3F3F300BCBCBC009C9C9C00C3C3
      C300D9D9D900E2E2E200A6A6A600000000000000000000000000000000007979
      790079797900797979009A9A9A00B3B3B300B3B3B300B4B4B400BABABA00B1B1
      B100B3B3B3008888880000000000000000000000000000000000000000000000
      000000000000AEAEAE00EAEAEA00EEEEEE00CBCBCB00B6B6B600AEAEAE000000
      0000000000000000000000000000000000008383830083838300838383008383
      8300838383008383830083838300838383008383830083838300000000003C3C
      3C003C3C3C003C3C3C0068686800000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600EAEAEA00DEDEDE00D5D5D500D9D9
      D900D5D5D500B6B6B60000000000000000000000000000000000000000000000
      00000000000000000000000000008D8D8D008B8B8B008D8D8D00919191009494
      94008C8C8C000000000000000000000000000000000000000000000000000000
      00000000000000000000AEAEAE00AEAEAE00AEAEAE00AEAEAE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000757575000000000000000000000000000000
      000000000000000000000000000000000000B0B0B000B5B5B500C3C3C300C2C2
      C2000000000000000000000000000000000000000000000000008E8E8E000000
      000000000000000000007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C000000
      00000000000000000000000000000000000000000000000000008E8E8E000000
      000000000000000000007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000949494009494
      9400949494000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008E8E8E008E8E
      8E008E8E8E00909090007C7C7C00F0F0F000CACACA00ADADAD007C7C7C000000
      00000000000000000000000000000000000000000000000000008E8E8E008E8E
      8E008E8E8E00909090007C7C7C00F0F0F000CACACA00ADADAD007C7C7C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C000000000000000000000000009494940094949400AFAFAF009494
      9400AAAAAA009494940094949400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008E8E8E000000
      000000000000000000007B7B7B007C7C7C007C7C7C007B7B7B007C7C7C000000
      00000000000000000000000000000000000000000000000000008E8E8E000000
      000000000000000000007B7B7B007C7C7C007C7C7C007B7B7B007C7C7C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E008E8E8E008E8E8E00909090007C7C7C00F0F0F000CACACA00ADAD
      AD007C7C7C0000000000000000000000000094949400F6F6F600CACACA009494
      9400ABABAB00ABABAB0094949400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008E8E8E000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008E8E8E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C0000000000000000000000000094949400C3C3C300B9B9B900AEAE
      AE009D9D9D00A4A4A40097979700878787000000000000000000000000000000
      00000000000087878700838383000000000000000000000000008E8E8E000000
      000000000000000000007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C000000
      00000000000000000000000000000000000000000000000000008E8E8E000000
      000000000000000000007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008D8D8D0097979700AEAE
      AE00A6A6A6009D9D9D00A8A8A8009E9E9E008E8E8E008F8F8F008B8B8B008989
      89008888880077777700767676008282820000000000000000008E8E8E008E8E
      8E008E8E8E008E8E8E007C7C7C00F0F0F000CACACA00ADADAD007C7C7C000000
      00000000000000000000000000000000000000000000000000008E8E8E008E8E
      8E008E8E8E008E8E8E007C7C7C00F0F0F000CACACA00ADADAD007C7C7C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C0000000000000000000000000000000000000000009C9C9C008989
      890092929200989898008181810079797900A8A8A800A7A7A700A3A3A3009D9D
      9D009999990096969600A7A7A7008B8B8B0000000000000000008E8E8E000000
      000000000000000000007B7B7B007C7C7C007C7C7C007B7B7B007C7C7C000000
      00000000000000000000000000000000000000000000000000008E8E8E000000
      000000000000000000007B7B7B007C7C7C007C7C7C007B7B7B007C7C7C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E008E8E8E008E8E8E008E8E8E007C7C7C00F0F0F000CACACA00ADAD
      AD007C7C7C00000000000000000000000000000000009B9B9B008C8C8C008080
      8000838383008585850071717100868686008B8B8B008A8A8A00878787008D8D
      8D0091919100858585007F7F7F000000000000000000000000008E8E8E000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008E8E8E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C00000000000000000000000000000000008A8A8A008A8A8A008C8C
      8C008C8C8C008C8C8C00858585009B9B9B009999990091919100BDBDBD00D4D4
      D400CDCDCD00C7C7C7008D8D8D000000000000000000000000008E8E8E000000
      000000000000000000007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C000000
      00000000000000000000000000000000000000000000000000008E8E8E000000
      000000000000000000007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00B8B8B800B2B2
      B200B5B5B5008C8C8C0096969600E3E3E3009D9D9D0091919100A0A0A0009696
      96008C8C8C0094949400838383000000000000000000000000008E8E8E008E8E
      8E008E8E8E008E8E8E007C7C7C00F0F0F000CACACA00ADADAD007C7C7C000000
      00000000000000000000000000000000000000000000000000008E8E8E008E8E
      8E008E8E8E008E8E8E007C7C7C00F0F0F000CACACA00ADADAD007C7C7C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C00000000000000000000000000000000008C8C8C00BABABA00B4B4
      B400B0B0B0008C8C8C009D9D9D00ECECEC00AAAAAA00C0C0C000B0B0B000ACAC
      AC00ACACAC00ADADAD007A7A7A000000000000000000000000008E8E8E000000
      000000000000000000007B7B7B007C7C7C007C7C7C007B7B7B007C7C7C000000
      00000000000000000000000000000000000000000000000000008E8E8E000000
      000000000000000000007B7B7B007C7C7C007C7C7C007B7B7B007C7C7C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E008E8E8E008E8E8E008E8E8E007C7C7C00F0F0F000CACACA00ADAD
      AD007C7C7C00000000000000000000000000000000008C8C8C00C0C0C000B9B9
      B900B7B7B7008C8C8C009D9D9D00E9E9E900CCCCCC00FFFFFF00FCFCFC00F2F2
      F200F0F0F000F0F0F0007A7A7A00000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C000000000000000000000000000000000000000000000000006666
      6600666666006666660066666600000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C000000000000000000000000000000000000000000000000009696
      9600969696000000000096969600969696000000000000000000000000000000
      00008E8E8E000000000000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C00000000000000000000000000000000008C8C8C00C5C5C500BFBF
      BF00BBBBBB008C8C8C0091919100E7E7E700D3D3D300FFFFFF00FFFFFF00FDFD
      FD00F3F3F300F0F0F0007A7A7A00000000007C7C7C00F0F0F000CACACA00ADAD
      AD007C7C7C000000000000000000000000000000000000000000000000006666
      660000000000A9A9A90066666600000000007C7C7C00F0F0F000CACACA00ADAD
      AD007C7C7C000000000000000000000000000000000000000000000000009696
      96009696960096969600969696009696960000000000000000007C7C7C007C7C
      7C007C7C7C007C7C7C007C7C7C00000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00CBCBCB00C5C5
      C500C2C2C2008C8C8C00878787009B9B9B009D9D9D00ABABAB00A2A2A2009D9D
      9D009B9B9B00A1A1A10000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C000000000000000000000000000000000000000000000000006666
      6600A9A9A90000000000A9A9A900000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C000000000000000000000000000000000000000000000000000000
      00009696960096969600969696000000000000000000000000007C7C7C00F0F0
      F000CACACA00ADADAD007C7C7C00000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00D3D3D300CCCC
      CC00C9C9C9008C8C8C00939393009E9E9E00979797008A8A8A00838383008282
      8200797979000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006666
      6600666666006666660066666600A9A9A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009696
      96009696960096969600969696009696960000000000000000007B7B7B007C7C
      7C007C7C7C007B7B7B007C7C7C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C008C8C
      8C00CDCDCD008C8C8C00ACACAC0097979700979797008F8F8F008A8A8A008989
      8900737373000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A9A9A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009696
      9600969696000000000096969600969696000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C008E8E8E00C3C3
      C300EEEEEE00E5E5E5007C7C7C00727272000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000989898009898980000000000000000009898980098989800000000000000
      00000000000000000000000000000000000000000000000000008E8E8E000000
      000000000000000000007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C000000
      000000000000000000000000000000000000818181007B7B7B007A7A7A007A7A
      7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A
      7A007A7A7A007A7A7A007B7B7B00828282009898980098989800868686007070
      7000DEDEDE00FFFFFF0080808000707070008888880000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009898
      9800BFBFBF00BABABA00989898009898980098989800E1E1E100989898009898
      98009898980000000000000000000000000000000000000000008E8E8E008E8E
      8E008E8E8E00909090007C7C7C00F0F0F000CACACA00ADADAD007C7C7C000000
      00000000000000000000000000000000000070707000F6F6F600F3F3F300A4A4
      A400EBEBEB00E9E9E900A4A4A400E4E4E400E4E4E400A4A4A400DCDCDC00D6D6
      D600A4A4A400D4D4D400D4D4D400787878009898980095959500979797007979
      7900A8A8A800EEEEEE00828282006F6F6F008888880000000000000000000000
      000000000000000000000000000000000000000000000000000098989800DBDB
      DB00BABABA00BABABA00BABABA00727272007171710099999900CCCCCC00DFDF
      DF00C7C7C70098989800989898009898980000000000000000008E8E8E000000
      000000000000000000007B7B7B007C7C7C007C7C7C007B7B7B007C7C7C000000
      0000000000000000000000000000000000006D6D6D00ECECEC00A4A4A400A4A4
      A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4
      A400A4A4A400A4A4A400A4A4A40077777700969696008F8F8F009C9C9C00A5A5
      A5009A9A9A00A1A1A1009A9A9A00969696008585850000000000000000000000
      0000000000000000000000000000000000000000000098989800D7D7D700D3D3
      D300AEAEAE00AEAEAE00AEAEAE00767676004747470045454500494949004545
      4500A2A2A200CACACA00989898000000000000000000000000008E8E8E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006E6E6E00A4A4A400A4A4A400A7A7
      A7005E5E5E009F9F9F00EDEDED00EAEAEA00E7E7E700E4E4E400E1E1E100DEDE
      DE00DBDBDB00CCCCCC00D7D7D700777777008A8A8A00B5B5B500E5E5E500E4E4
      E400E3E3E300E2E2E200E8E8E800AFAFAF007E7E7E0000000000000000000000
      00000000000000000000000000000000000098989800D3D3D300D3D3D300AEAE
      AE00D9D9D900D3D3D300CBCBCB00C3C3C300BABABA00AAAAAA008E8E8E004545
      45004747470046464600989898009D9D9D0000000000000000008E8E8E000000
      000000000000000000007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C000000
      0000000000000000000000000000000000006E6E6E00F5F5F500A4A4A4009A9A
      9A007F7F7F005F5F5F00A2A2A200ECECEC00E9E9E900E6E6E600E3E3E300E0E0
      E0007E7E7E005B5B5B00606060006060600089898900D8D8D800F5F5F500E9E9
      E900EAEAEA00EAEAEA00F4F4F400B0B0B0007C7C7C00403C40004E494E005751
      57005953590059535900595359005C515C0098989800D3D3D300AEAEAE00E6E6
      E600EFEFEF00EDEDED00DFDFDF00DEDEDE00DDDDDD00D4D4D400CACACA00C1C1
      C100ACACAC008A8A8A00A1A1A1009D9D9D0000000000000000008E8E8E008E8E
      8E008E8E8E008E8E8E007C7C7C00F0F0F000CACACA00ADADAD007C7C7C000000
      0000000000000000000000000000000000006D6D6D00A4A4A400A4A4A400E4E4
      E4008D8D8D00F3F3F30078787800EEEEEE00EBEBEB00E8E8E800E4E4E4009F9F
      9F005B5B5B00DADADA00DADADA006A6A6A008A8A8A00D4D4D400E6E6E600D9D9
      D900DBDBDB00D9D9D900E8E8E800B0B0B0007C7C7C00B9B9B900DFDFDF00F7F7
      F700FEFEFE00FFFFFF00FFFFFF005953590098989800AEAEAE00EFEFEF00EFEF
      EF00EDEDED00D8D8D800B3B3B300B7B7B700C2C2C200CDCDCD00DADADA00DBDB
      DB00D0D0D000C7C7C700AFAFAF009797970000000000000000008E8E8E000000
      000000000000000000007B7B7B007C7C7C007C7C7C007B7B7B007C7C7C000000
      0000000000000000000000000000000000006D6D6D00F8F8F800A4A4A400F9F9
      F900B0B0B0007171710065656500E7E7E700D6D6D600DADADA00BFBFBF005959
      5900A4A4A40084848400A3A3A300777777008A8A8A00D6D6D600EEEEEE00E2E2
      E200E3E3E300E3E3E300EFEFEF00B2B2B2007C7C7C0081818100929292009696
      96009191910089898900FFFFFF0059535900000000009898980098989800E6E6
      E600C1C1C1009E9E9E00AAAAAA00B2B2B200B1B1B100B6B6B600B4B4B400B7B7
      B700C9C9C900D7D7D700CECECE009898980000000000000000008E8E8E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006E6E6E00A4A4A400A4A4A400FBFB
      FB00F9F9F9009D9D9D00454545004B4B4B008F8F8F008A8A8A005A5A5A007F7F
      7F008F8F8F00A3A3A3008C8C8C007D7D7D0000000000C3C3C300E6E6E600DFDF
      DF00DFDFDF00DFDFDF00E4E4E400A3A3A3008484840092929200A2A2A200A4A4
      A4009E9E9E0094949400FFFFFF00595359000000000000000000000000009898
      9800A7A7A700999999008A8A8A009A9A9A00969696009F9F9F00AEAEAE00BDBD
      BD00D3D3D300CDCDCD00989898000000000000000000000000008E8E8E000000
      000000000000000000007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C000000
      0000000000000000000000000000000000006D6D6D00FDFDFD00A4A4A400FBFB
      FB00FAFAFA00F8F8F800EAEAEA0060606000F0F0F000EDEDED00494949007373
      7300A0A0A000E1E1E100BBBBBB007A7A7A000000000000000000000000000000
      00000000000051355100B9B9B9008989890096969600A8A8A800B0B0B000AEAE
      AE00A7A7A7009B9B9B00FFFFFF00595359000000000000000000000000000000
      0000A9A9A900D3D3D300CCCCCC00B8B8B800A7A7A7009F9F9F00A9A9A900A5A5
      A5009898980098989800000000000000000000000000000000008E8E8E008E8E
      8E008E8E8E008E8E8E007C7C7C00F0F0F000CACACA00ADADAD007C7C7C000000
      00000000000000000000000000000000000072727200A4A4A400A4A4A400FDFD
      FD00FBFBFB00FAFAFA00F7F7F700DEDEDE006B6B6B005B5B5B0082828200A7A7
      A700E0E0E000E2E2E200E0E0E0007C7C7C000000000000000000000000000000
      00000000000061406100DFDFDF00787878008181810093939300A4A4A400B5B5
      B500B4B4B400A9A9A900FFFFFF00595359000000000000000000000000000000
      0000A9A9A900D5D5D500CFCFCF00CBCBCB00C6C6C600C3C3C300A9A9A9000000
      00000000000000000000000000000000000000000000000000008E8E8E000000
      000000000000000000007B7B7B007C7C7C007C7C7C007B7B7B007C7C7C000000
      000074747400737373000000000000000000939393009C9C9C00989898009797
      9700979797009797970097979700979797009797970098989800A2A2A2009C9C
      9C00A2A2A2009C9C9C00A0A0A000949494000000000000000000000000000000
      0000000000006B466B00F7F7F700666666006A6A6A00686868006C6C6C007070
      70006D6D6D0071717100FFFFFF0059535900000000000000000000000000ABAB
      AB00DDDDDD00D8D8D800D3D3D300CECECE00CACACA00A9A9A900000000000000
      0000000000000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C000000000000000000000000000000000000000000000000000000
      000075757500767676000000000000000000888888009D9D9D009E9E9E009E9E
      9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E00A2A2A200BBBBBB00A2A2
      A200BBBBBB00A1A1A10091919100878787000000000000000000000000000000
      000000000000674C6700FEFEFE00636363006767670068686800646464007373
      73007B7B7B0061616100FFFFFF0055555500000000000000000000000000A9A9
      A900E0E0E000DCDCDC00D7D7D700D3D3D300CDCDCD00A9A9A900000000000000
      0000000000000000000000000000000000007C7C7C00F0F0F000CACACA00ADAD
      AD007C7C7C000000000000000000000000000000000000000000777777008282
      820086868600848484007D7D7D007575750000000000898989008A8A8A008A8A
      8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008E8E8E008686
      86008E8E8E008686860089898900000000000000000000000000000000000000
      000000000000674C6700FFFFFF00B4B4B400A2A2A200828282009E9E9E00CCCC
      CC00D9D9D900C4C4C400FFFFFF00555555000000000000000000A9A9A900EAEA
      EA00EAEAEA00E1E1E100DCDCDC00D7D7D700CBCBCB00A9A9A900000000000000
      0000000000000000000000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C000000000000000000000000000000000000000000777777008282
      820088888800888888007C7C7C00757575000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000674C6700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00555555000000000000000000A9A9A900A9A9
      A900A9A9A900E3E3E300DCDCDC00D8D8D800A9A9A90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000878787008787870000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000843E84006E486E006E486E006E486E006E486E006E486E005555
      5500555555005555550055555500555555000000000000000000000000000000
      000000000000A9A9A900A9A9A900A9A9A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000797979007979790000000000000000000000000096969600969696009696
      9600969696009696960096969600969696009696960096969600969696009696
      9600969696009696960096969600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E9E9E009E9E9E009E9E
      9E009E9E9E009E9E9E009E9E9E009E9E9E000000000000000000000000000000
      000000000000000000000000000000000000000000009E9E9E009E9E9E009E9E
      9E009E9E9E009E9E9E009E9E9E009E9E9E0096969600A8A8A800C3C3C300CECE
      CE00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CECECE00C2C2C200A8A8A8009696960000000000000000008E8E8E008E8E
      8E00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE008686
      86008E8E8E000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E9E9E00D6D6D600D0D0
      D000CACACA00C4C4C400BFBFBF009E9E9E000000000000000000000000000000
      000000000000000000000000000000000000000000009E9E9E00D6D6D600D0D0
      D000CACACA00C4C4C400BFBFBF009E9E9E0096969600B9B9B900AAAAAA00D1D1
      D100D3D3D300D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D3D3
      D300CDCDCD00A9A9A900BEBEBE0096969600000000008E8E8E00B8B8B800AEAE
      AE00ECECEC008383830083838300F0F0F000EEEEEE00E8E8E800DADADA007E7E
      7E009A9A9A008E8E8E0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F9F9F00E0E0E000B1B1
      B1008A8A8A00AAAAAA00C7C7C7009E9E9E000000000000000000000000000000
      000000000000000000000000000000000000000000009F9F9F00E0E0E000B1B1
      B1008A8A8A00AAAAAA00C7C7C7009E9E9E0096969600D4D4D400B1B1B100B6B6
      B600DADADA00D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D9D9
      D900B2B2B200B2B2B200D8D8D80096969600000000008E8E8E00B4B4B400ACAC
      AC00F0F0F0008383830083838300EDEDED00F0F0F000ECECEC00DCDCDC007F7F
      7F00999999008E8E8E0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6A6A600E9E9E9008B8B
      8B007F7F7F008A8A8A00CFCFCF009E9E9E000000000000000000000000000000
      00000000000000000000000000000000000000000000A6A6A600E9E9E9008B8B
      8B007F7F7F008A8A8A00CFCFCF009E9E9E0096969600DBDBDB00D2D2D200A5A5
      A500CCCCCC00DFDFDF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00E1E1E100C4C4
      C400A8A8A800D9D9D900DBDBDB0096969600000000008E8E8E00B4B4B400ABAB
      AB00F2F2F2008383830083838300EAEAEA00EFEFEF00EEEEEE00E0E0E0007C7C
      7C00989898008E8E8E0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B1B1B100F2F2F200BDBD
      BD008C8C8C00B5B5B500D9D9D9009E9E9E000000000000000000000000000000
      00000000000000000000000000000000000000000000B1B1B100F2F2F200BDBD
      BD008C8C8C00B5B5B500D9D9D9009E9E9E0096969600E1E1E100E7E7E700C8C8
      C800A5A5A500D9D9D900E1E1E100DFDFDF00DFDFDF00E0E0E000D4D4D400A8A8
      A800CFCFCF00E8E8E800E1E1E10096969600000000008E8E8E00B4B4B400AAAA
      AA00F4F4F400F3F3F300ECECEC00EAEAEA00ECECEC00ECECEC00E1E1E1008585
      85009D9D9D008E8E8E0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B8B8B800FAFAFA00F4F4
      F400EFEFEF00EAEAEA00E3E3E3009E9E9E000000000000000000000000000000
      00000000000000000000000000000000000000000000B8B8B800FAFAFA00F4F4
      F400EFEFEF00EAEAEA00E3E3E3009E9E9E0096969600E9E9E900EBEBEB00BBBB
      BB00A5A5A50096969600969696009696960096969600969696008F8F8F00A5A5
      A500C9C9C900F0F0F000E8E8E80096969600000000008E8E8E00B1B1B100AFAF
      AF00B2B2B200B8B8B800B6B6B600B1B1B100AFAFAF00B5B5B500B2B2B200ACAC
      AC00B3B3B3008E8E8E0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00FFFFFF00FCFC
      FC00F7F7F7009E9E9E009E9E9E00999999000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00FFFFFF00FCFC
      FC00F7F7F7009E9E9E009E9E9E009999990096969600D9D9D900AFAFAF00B2B2
      B200E4E4E400E8E8E800E0E0E000E0E0E000DFDFDF00E1E1E100E7E7E700D3D3
      D300ABABAB00B5B5B500DFDFDF0096969600000000008E8E8E00A2A2A200B6B6
      B600CBCBCB00D0D0D000D1D1D100D0D0D000CECECE00CDCDCD00D1D1D100D3D3
      D300B3B3B3008E8E8E0000000000000000009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C0000000000BFBFBF00FFFFFF00FFFF
      FF00FDFDFD009E9E9E009E9E9E00000000009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C0000000000BFBFBF00FFFFFF00FFFF
      FF00FDFDFD009E9E9E009E9E9E000000000096969600AAAAAA00C8C8C800F1F1
      F100F0F0F000EFEFEF00EEEEEE00EDEDED00EBEBEB00EAEAEA00EAEAEA00EAEA
      EA00E6E6E600BDBDBD00ACACAC0096969600000000008E8E8E00B3B3B300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B3B3B3008E8E8E0000000000000000009C9C9C00CFCFCF00BABABA00B6B6
      B600AFAFAF00A8A8A800BABABA009C9C9C0000000000BFBFBF00B1B1B100B1B1
      B100B1B1B1009E9E9E00000000006C6C6C009C9C9C00CFCFCF00BABABA00B6B6
      B600AFAFAF00A8A8A800BABABA009C9C9C0000000000BFBFBF00C6C6C600C6C6
      C600969696009E9E9E00000000000000000096969600C8C8C800F1F1F100F0F0
      F000F0F0F000F0F0F000F0F0F000EFEFEF00EFEFEF00ECECEC00E9E9E900E4E4
      E400DEDEDE00D9D9D900C0C0C00096969600000000008E8E8E00B3B3B300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B3B3B3008E8E8E0000000000000000009C9C9C009A9A9A007C7C7C007F7F
      7F007F7F7F007E7E7E00B0B0B0009C9C9C000000000000000000888888000000
      0000000000000000000000000000727272009C9C9C009A9A9A007C7C7C007F7F
      7F007F7F7F007E7E7E00B0B0B0009C9C9C000000000000000000000000006E6E
      6E008B8B8B006D6D6D0000000000000000000000000096969600F1F1F100F1F1
      F100F1F1F100EAEAEA00E2E2E200D7D7D700C4C4C400BBBBBB00B4B4B400B0B0
      B000ADADAD00ABABAB009696960000000000000000008E8E8E00B3B3B300FFFF
      FF00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00FFFF
      FF00B3B3B3008E8E8E0000000000000000009F9F9F00EEEEEE008C8C8C007D7D
      7D007C7C7C0083838300D8D8D800B4B4B400000000006E6E6E00858585000000
      000000000000000000007C7C7C00757575009F9F9F00EEEEEE008C8C8C007D7D
      7D007C7C7C0083838300D8D8D8009C9C9C0000000000000000006E6E6E008A8A
      8A00A1A1A1007F7F7F008080800000000000000000000000000096969600C9C9
      C900C9C9C900BDBDBD00B6B6B600B5B5B500B6B6B600B8B8B800BABABA00BCBC
      BC00B9B9B900969696000000000000000000000000008E8E8E00B3B3B300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B3B3B3008E8E8E000000000000000000A6A6A600FFFFFF00B3B3B3007B7B
      7B008B8B8B00CDCDCD00E2E2E200B4B4B4006E6E6E008A8A8A00989898006565
      65007070700080808000868686006B6B6B00A6A6A600FFFFFF00B3B3B3007B7B
      7B008B8B8B00CDCDCD00E2E2E2009C9C9C000000000083838300848484009A9A
      9A00848484006A6A6A0089898900757575000000000000000000000000009696
      9600B6B6B600BEBEBE00BEBEBE00C0C0C000C0C0C000BFBFBF00C0C0C000B7B7
      B70096969600000000000000000000000000000000008E8E8E00B3B3B300FFFF
      FF00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00FFFF
      FF00B3B3B3008E8E8E000000000000000000B1B1B100FFFFFF00F8F8F800A2A2
      A200A0A0A000ECECEC00C9C9C900646464008B8B8B00A1A1A100848484009898
      9800909090008A8A8A007171710000000000B1B1B100FFFFFF00F8F8F800A2A2
      A200A0A0A000ECECEC00C9C9C9009C9C9C000000000000000000000000006B6B
      6B006F6F6F007E7E7E0000000000000000000000000000000000000000000000
      00009696960096969600BCBCBC00BEBEBE00BEBEBE00BCBCBC008F8F8F009696
      960000000000000000000000000000000000000000008E8E8E00B3B3B300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B3B3B3008E8E8E000000000000000000B8B8B800FFFFFF00FFFFFF00DFDF
      DF00F1F1F1009C9C9C009C9C9C00969696006D6D6D007F7F7F006A6A6A007C7C
      7C0079797900727272000000000000000000B8B8B800FFFFFF00FFFFFF00DFDF
      DF00F1F1F1009C9C9C009C9C9C00969696000000000000000000000000007474
      7400919191007878780000000000000000000000000000000000000000000000
      0000000000000000000096969600969696009696960096969600000000000000
      00000000000000000000000000000000000000000000000000008E8E8E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008E8E8E00000000000000000000000000BFBFBF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE009C9C9C00A0A0A000000000000000000080808000898989000000
      000000000000000000000000000000000000BFBFBF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE009C9C9C00A0A0A0000000000000000000000000007B7B7B008080
      8000898989007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF00B1B1B100B1B1B100B1B1
      B100B1B1B1009C9C9C0000000000000000000000000000000000757575000000
      000000000000000000000000000000000000BFBFBF00B1B1B100B1B1B100B1B1
      B100B1B1B1009C9C9C00000000000000000075757500757575007C7C7C008282
      8200757575000000000000000000000000000000000000000000000000000000
      0000858585008585850085858500858585008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585008585850085858500858585009B9B9B009B9B9B009B9B9B009B9B
      9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B
      9B009B9B9B009B9B9B009B9B9B009B9B9B000000000000000000000000000000
      000000000000D4D4D400D3D3D300D0D0D000CCCCCC00CACACA00D0D0D0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000085858500E1E1E100E0E0E000DDDDDD00D8D8D800D4D4D400D1D1D100CECE
      CE00CDCDCD00CCCCCC00D3D3D3008585850085858500E1E1E100E1E1E100DFDF
      DF00DBDBDB00D8D8D800D5D5D500D2D2D200D0D0D000CDCDCD00CCCCCC00CBCB
      CB00CBCBCB00CBCBCB00CFCFCF00858585009B9B9B00E8E8E800E0E0E000DADA
      DA00D5D5D500D1D1D100D6D6D6009B9B9B009B9B9B00E8E8E800E0E0E000DADA
      DA00D5D5D500D1D1D100D6D6D6009B9B9B00000000000000000000000000D4D4
      D400E3E3E300EBEBEB00E8E8E800D6D6D600CECECE00CCCCCC00C3C3C300BCBC
      BC00D0D0D0000000000000000000000000000000000000000000000000000000
      000085858500E1E1E100DEDEDE00DADADA00D7D7D700D3D3D300CFCFCF00CCCC
      CC00C9C9C900C8C8C800CECECE008585850085858500E1E1E100E0E0E000DEDE
      DE00DCDCDC00D9D9D900D6D6D600D3D3D300D0D0D000CECECE00CBCBCB00C9C9
      C900C7C7C700C7C7C700CBCBCB00858585009B9B9B00E8E8E800DCDCDC00D7D7
      D700D1D1D100CECECE00D3D3D3009B9B9B009B9B9B00E8E8E800DCDCDC00D7D7
      D700D1D1D100CECECE00D3D3D3009B9B9B000000000000000000D6D6D600F1F1
      F100F8F8F800D4D4D400A5A5A5009D9D9D009C9C9C009F9F9F00B9B9B900C1C1
      C100BCBCBC00C9C9C90000000000000000000000000000000000858585008585
      850085858500E1E1E100E0E0E000DEDEDE00DBDBDB00D8D8D800D4D4D400D0D0
      D000CDCDCD00C9C9C900CECECE008585850085858500E1E1E100E1E1E100E1E1
      E100DFDFDF00DEDEDE00DCDCDC00D9D9D900D6D6D600D3D3D300D0D0D000CDCD
      CD00CACACA00C9C9C900CCCCCC00858585009B9B9B00E8E8E800DDDDDD00D8D8
      D800D3D3D300CFCFCF00D3D3D3009B9B9B009B9B9B00E8E8E800DDDDDD00D8D8
      D800D3D3D300CFCFCF00D3D3D3009B9B9B0000000000D3D3D300F5F5F500FDFD
      FD00B0B0B000797979007D7D7D00E5E5E500DBDBDB007A7A7A007C7C7C00A4A4
      A400C5C5C500C0C0C000D0D0D00000000000000000000000000085858500E1E1
      E10085858500E1E1E100E1E1E100E1E1E100DFDFDF00DCDCDC00D8D8D800D5D5
      D500D1D1D100CDCDCD00D0D0D0008585850085858500E1E1E100E1E1E100E1E1
      E100E1E1E100E1E1E100DFDFDF00DEDEDE00DBDBDB00D8D8D800D6D6D600D3D3
      D300CFCFCF00CDCDCD00CECECE00858585009B9B9B00E8E8E800E0E0E000DADA
      DA00D5D5D500D0D0D000D3D3D3009B9B9B009B9B9B00E8E8E800E0E0E000DADA
      DA00D5D5D500D0D0D000D3D3D3009B9B9B0000000000EBEBEB00FFFFFF00BBBB
      BB00757575007D7D7D0081818100C6C6C600BFBFBF007E7E7E007E7E7E007A7A
      7A00A8A8A800CDCDCD00CBCBCB0000000000000000000000000085858500E1E1
      E10085858500E1E1E100E1E1E100E1E1E100E1E1E100DFDFDF00DBDBDB00D8D8
      D800D5D5D500D1D1D100D4D4D4008585850085858500E1E1E100E1E1E100E1E1
      E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100DEDEDE00DCDC
      DC00D9D9D900D6D6D600D7D7D700858585009B9B9B00E8E8E800E3E3E300DDDD
      DD00D8D8D800D3D3D300D3D3D3009B9B9B009B9B9B00E8E8E800E3E3E300DDDD
      DD00D8D8D800D3D3D300D3D3D3009B9B9B00D6D6D600FDFDFD00E9E9E9008585
      85007F7F7F007E7E7E0088888800BFBFBF00B0B0B0007D7D7D00808080007F7F
      7F0080808000C7C7C700D3D3D300D0D0D000858585008585850085858500E1E1
      E10085858500E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E0E0E000DDDD
      DD00D9D9D900D5D5D500D8D8D800858585008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585008585850085858500858585009B9B9B00E8E8E800E5E5E500E0E0
      E000DADADA00D5D5D500D4D4D4009B9B9B009B9B9B00E8E8E800E5E5E500E0E0
      E000DADADA00D5D5D500D4D4D4009B9B9B00DFDFDF00FFFFFF00C3C3C3008585
      850089898900808080008D8D8D00FAFAFA00F2F2F20085858500797979008181
      81007A7A7A00AEAEAE00E2E2E200D2D2D20085858500E1E1E10085858500E1E1
      E10085858500E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1
      E100E1E1E100DEDEDE00E1E1E100858585000000000086868600858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585008585850086868600000000009B9B9B00E8E8E800E6E6E600E3E3
      E300DDDDDD00D7D7D700D7D7D7009B9B9B009B9B9B00E8E8E800E6E6E600E3E3
      E300DDDDDD00D7D7D700D7D7D7009B9B9B00E5E5E500FFFFFF00B5B5B5008E8E
      8E00909090008B8B8B0084848400D0D0D000FFFFFF00DBDBDB00898989007C7C
      7C007A7A7A009F9F9F00ECECEC00D5D5D50085858500E1E1E10085858500E1E1
      E10085858500B5B5B500B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200B1B1B100B0B0B000B2B2B200858585008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585008585850085858500858585009B9B9B00E8E8E800E8E8E800E5E5
      E500DFDFDF00DADADA00D9D9D9009B9B9B009B9B9B00E8E8E800E8E8E800E5E5
      E500DFDFDF00DADADA00D9D9D9009B9B9B00E5E5E500FFFFFF00BBBBBB009797
      970098989800919191008E8E8E008A8A8A00CECECE00FFFFFF00EBEBEB008A8A
      8A0076767600A1A1A100F5F5F500D8D8D80085858500E1E1E10085858500E1E1
      E100E1E1E1008585850085858500858585008585850085858500858585008585
      85008585850085858500858585000000000085858500E1E1E100E1E1E100DFDF
      DF00DBDBDB00D8D8D800D5D5D500D2D2D200D0D0D000CDCDCD00CCCCCC00CBCB
      CB00CBCBCB00CBCBCB00CFCFCF00858585009B9B9B00E8E8E800E8E8E800E6E6
      E600E2E2E200DCDCDC00DCDCDC009B9B9B009B9B9B00E8E8E800E8E8E800E6E6
      E600E2E2E200DCDCDC00DCDCDC009B9B9B00DEDEDE00FFFFFF00D0D0D0009D9D
      9D00A3A3A300A8A8A800979797009090900087878700CDCDCD00FFFFFF00BBBB
      BB0070707000B7B7B700FAFAFA00D7D7D70085858500E1E1E10085858500E1E1
      E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100DEDE
      DE00E1E1E10085858500000000000000000085858500E1E1E100E0E0E000DEDE
      DE00DCDCDC00D9D9D900D6D6D600D3D3D300D0D0D000CECECE00CBCBCB00C9C9
      C900C7C7C700C7C7C700CBCBCB00858585009B9B9B00E8E8E800E8E8E800E8E8
      E800E5E5E500DFDFDF00DFDFDF009B9B9B009B9B9B00E8E8E800E8E8E800E8E8
      E800E5E5E500DFDFDF00DFDFDF009B9B9B00DEDEDE00FCFCFC00F1F1F100A7A7
      A700DEDEDE00FEFEFE00BCBCBC009191910088888800B8B8B800FFFFFF00C5C5
      C5007F7F7F00E5E5E500F4F4F400D7D7D70085858500E1E1E10085858500B5B5
      B500B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B1B1B100B0B0
      B000B2B2B20085858500000000000000000085858500E1E1E100E1E1E100E1E1
      E100DFDFDF00DEDEDE00DCDCDC00D9D9D900D6D6D600D3D3D300D0D0D000CDCD
      CD00CACACA00C9C9C900CCCCCC00858585009B9B9B00E8E8E800E8E8E800E8E8
      E800E6E6E600E2E2E200E1E1E1009B9B9B009B9B9B00E8E8E800E8E8E800E8E8
      E800E6E6E600E2E2E200E1E1E1009B9B9B0000000000EAEAEA00FFFFFF00D2D2
      D200C4C4C400FFFFFF00F9F9F900CFCFCF00CDCDCD00F9F9F900FBFBFB00A1A1
      A100BEBEBE00FFFFFF00E2E2E2000000000085858500E1E1E100E1E1E1008585
      8500858585008585850085858500858585008585850085858500858585008585
      85008585850000000000000000000000000085858500E1E1E100E1E1E100E1E1
      E100E1E1E100E1E1E100DFDFDF00DEDEDE00DBDBDB00D8D8D800D6D6D600D3D3
      D300CFCFCF00CDCDCD00CECECE00858585009B9B9B00E8E8E800E8E8E800E8E8
      E800E8E8E800E5E5E500E5E5E5009B9B9B009B9B9B00E8E8E800E8E8E800E8E8
      E800E8E8E800E5E5E500E5E5E5009B9B9B0000000000DADADA00F4F4F400FFFF
      FF00CFCFCF00CCCCCC00EEEEEE00F9F9F900F8F8F800E9E9E900B9B9B900C3C3
      C300FFFFFF00EFEFEF00E2E2E2000000000085858500E1E1E100E1E1E100E1E1
      E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100DEDEDE00E1E1E1008585
      85000000000000000000000000000000000085858500E1E1E100E1E1E100E1E1
      E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100DEDEDE00DCDC
      DC00D9D9D900D6D6D600D7D7D700858585009B9B9B00E7E7E700E7E7E700E7E7
      E700E7E7E700E6E6E600E7E7E7009B9B9B009B9B9B00E7E7E700E7E7E700E7E7
      E700E7E7E700E6E6E600E7E7E7009B9B9B000000000000000000DADADA00F3F3
      F300FFFFFF00E9E9E900D3D3D300CFCFCF00CCCCCC00CBCBCB00E4E4E400FFFF
      FF00F0F0F000D5D5D500000000000000000085858500B5B5B500B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B1B1B100B0B0B000B2B2B2008585
      8500000000000000000000000000000000008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585008585850085858500858585009B9B9B00A6A6A600A6A6A600A6A6
      A600A6A6A600A6A6A600A6A6A6009B9B9B009B9B9B00A6A6A600A6A6A600A6A6
      A600A6A6A600A6A6A600A6A6A6009B9B9B00000000000000000000000000DADA
      DA00EEEEEE00F7F7F700FDFDFD00FEFEFE00FDFDFD00FCFCFC00F8F8F800EAEA
      EA00EAEAEA000000000000000000000000000000000085858500858585008585
      8500858585008585850085858500858585008585850085858500858585000000
      0000000000000000000000000000000000000000000086868600858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      850085858500858585008686860000000000000000009B9B9B009B9B9B009B9B
      9B009B9B9B009B9B9B009B9B9B0000000000000000009B9B9B009B9B9B009B9B
      9B009B9B9B009B9B9B009B9B9B00000000000000000000000000000000000000
      000000000000D9D9D900D9D9D900DEDEDE00DDDDDD00DADADA00DADADA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000009D9D9D00DEDEDE00C4C4C400B9B9
      B900C3C3C300B4B4B400A1A1A100ABABAB00A4A4A4009B9B9B00949494009191
      9100929292009292920093939300808080009D9D9D00DEDEDE00C4C4C400B9B9
      B900C3C3C300B4B4B400A1A1A100ABABAB00A4A4A4009B9B9B00949494009191
      9100929292009292920093939300808080009D9D9D00DEDEDE00C4C4C400B9B9
      B900C3C3C300B4B4B400A1A1A100ABABAB00A4A4A4009B9B9B00949494009191
      9100929292009292920093939300808080009D9D9D00DEDEDE00C4C4C400B9B9
      B900C3C3C300B4B4B400A1A1A100ABABAB00A4A4A4009B9B9B00949494009191
      91009292920092929200939393008080800096969600D4D4D400626262005E5E
      5E00ABABAB007A7A7A00525252008D8D8D009696960054545400555555005555
      55005454540059595900909090008080800096969600D4D4D400626262005E5E
      5E00ABABAB007A7A7A00525252008D8D8D009696960054545400555555005555
      55005454540059595900909090008080800096969600D4D4D400626262005E5E
      5E00ABABAB007A7A7A00525252008D8D8D009696960054545400555555005555
      55005454540059595900909090008080800096969600D4D4D400626262005E5E
      5E00ABABAB007A7A7A00525252008D8D8D009696960054545400555555005555
      55005454540059595900909090008080800096969600E3E3E300B4B4B400A8A8
      A800C8C8C800ABABAB0094949400AAAAAA00A9A9A90096969600929292008D8D
      8D008A8A8A008C8C8C00949494008080800096969600E3E3E300B4B4B400A8A8
      A800C8C8C800ABABAB0094949400AAAAAA00A9A9A90096969600929292008D8D
      8D008A8A8A008C8C8C00949494008080800096969600E3E3E300B4B4B400A8A8
      A800C8C8C800ABABAB0094949400AAAAAA00A9A9A90096969600929292008D8D
      8D008A8A8A008C8C8C00949494008080800096969600E3E3E300B4B4B400A8A8
      A800C8C8C800ABABAB0094949400AAAAAA00A9A9A90096969600929292008D8D
      8D008A8A8A008C8C8C00949494008080800096969600D7D7D7006A6A6A006565
      6500B1B1B10081818100595959008E8E8E007D7D7D0079797900757575009D9D
      9D007474740074747400959595008080800096969600D7D7D7006A6A6A006565
      6500B1B1B10081818100595959008E8E8E007D7D7D0079797900757575009D9D
      9D007474740074747400959595008080800096969600D7D7D7006A6A6A006565
      6500B1B1B10081818100595959008E8E8E007D7D7D0079797900757575009D9D
      9D007474740074747400959595008080800096969600D7D7D7006A6A6A006565
      6500B1B1B10081818100595959008E8E8E007D7D7D0079797900757575009D9D
      9D007474740074747400959595008080800096969600E4E4E400AEAEAE00A3A3
      A300D2D2D200B0B0B0008B8B8B00B2B2B200B4B4B40097979700A2A2A2009E9E
      9E009696960094949400939393008080800096969600E4E4E400AEAEAE00A3A3
      A300D2D2D200B0B0B0008B8B8B00B2B2B200B4B4B40097979700A2A2A2009E9E
      9E009696960094949400939393008080800096969600E4E4E400AEAEAE00A3A3
      A300D2D2D200B0B0B0008B8B8B00B2B2B200B4B4B40097979700A2A2A2009E9E
      9E009696960094949400939393008080800096969600E4E4E400AEAEAE00A3A3
      A300D2D2D200B0B0B0008B8B8B00B2B2B200B4B4B40097979700A2A2A2009E9E
      9E009696960094949400939393008080800096969600D4D4D4006C6C6C006565
      6500B4B4B400838383005555550092929200838383007777770078787800A0A0
      A0007474740073737300949494008080800096969600D4D4D4006C6C6C006565
      6500B4B4B400838383005555550092929200838383007777770078787800A0A0
      A0007474740073737300949494008080800096969600D4D4D4006C6C6C006565
      6500B4B4B400838383005555550092929200838383007777770078787800A0A0
      A0007474740073737300949494008080800096969600D4D4D4006C6C6C006565
      6500B4B4B400838383005555550092929200838383007777770078787800A0A0
      A0007474740073737300949494008080800096969600E6E6E600DCDCDC00D6D6
      D600DCDCDC00D1D1D100C0C0C000C4C4C400BBBBBB00B3B3B300B0B0B000A5A5
      A500A1A1A1009A9A9A00939393008080800096969600E6E6E600DCDCDC00D6D6
      D600DCDCDC00D1D1D100C0C0C000C4C4C400BBBBBB00B3B3B300B0B0B000A5A5
      A500A1A1A1009A9A9A00939393008080800096969600E6E6E600DCDCDC00D6D6
      D600DCDCDC00D1D1D100C0C0C000C4C4C400BBBBBB00B3B3B300B0B0B000A5A5
      A500A1A1A1009A9A9A00939393008080800096969600E6E6E600DCDCDC00D6D6
      D600DCDCDC00D1D1D100C0C0C000C4C4C400BBBBBB00B3B3B300B0B0B000A5A5
      A500A1A1A1009A9A9A00939393008080800096969600DEDEDE00E4E4E400E5E5
      E500E1E1E100E1E1E100DEDEDE00D7D7D700D6D6D600C2C2C200B0B0B000A7A7
      A7009F9F9F0099999900959595008080800096969600DEDEDE00E4E4E400E5E5
      E500E1E1E100E1E1E100DEDEDE00D7D7D700D6D6D600C2C2C200B0B0B000A7A7
      A7009F9F9F0099999900959595008080800096969600DEDEDE00E4E4E400E5E5
      E500E1E1E100E1E1E100DEDEDE00D7D7D700D6D6D600C2C2C200B0B0B000A7A7
      A7009F9F9F0099999900959595008080800096969600DEDEDE00E4E4E400E5E5
      E500E1E1E100E1E1E100DEDEDE00D7D7D700D6D6D600C2C2C200B0B0B000A7A7
      A7009F9F9F0099999900959595008080800096969600C4C4C400B3B3B300B5B5
      B500B5B5B500B5B5B500B5B5B500B2B2B200CACACA00CFCFCF00979797008B8B
      8B008383830087878700999999008080800096969600C4C4C400B3B3B300B5B5
      B500B5B5B500B5B5B500B5B5B500B2B2B200CACACA00CFCFCF00979797008B8B
      8B008383830087878700999999008080800096969600C4C4C400B3B3B300B5B5
      B500B5B5B500B5B5B500B5B5B500B2B2B200CACACA00CFCFCF00979797008B8B
      8B008383830087878700999999008080800096969600C4C4C400B3B3B300B5B5
      B500B5B5B500B5B5B500B5B5B500B2B2B200CACACA00CFCFCF00979797008B8B
      8B0083838300878787009999990080808000AAAAAA00E1E1E100CECECE00CECE
      CE00CECECE00CECECE00C9C9C900C1C1C100C6C6C600C8C8C800B8B8B800B5B5
      B500A3A3A300A1A1A1009E9E9E0080808000AAAAAA00E1E1E100CECECE00CECE
      CE00CECECE00CECECE00C9C9C900C1C1C100C6C6C600C8C8C800B8B8B800B5B5
      B500A3A3A300A1A1A1009E9E9E0080808000AAAAAA00E1E1E100CECECE00CECE
      CE00CECECE00CECECE00C9C9C900C1C1C100C6C6C600C8C8C800B8B8B800B5B5
      B500A3A3A300A1A1A1009E9E9E0080808000AAAAAA00E1E1E100CECECE00CECE
      CE00CECECE00CECECE00C9C9C900C1C1C100C6C6C600C8C8C800B8B8B800B5B5
      B500A3A3A300A1A1A1009E9E9E0080808000000000008B8B8B00A7A7A700B2B2
      B200B1B1B100AFAFAF00BEBEBE00BABABA00B2B2B200ABABAB00A5A5A500A0A0
      A0009B9B9B00969696008A8A8A0000000000000000008B8B8B00A7A7A700B2B2
      B200B1B1B100AFAFAF00BEBEBE00BABABA00B2B2B200ABABAB00A5A5A500A0A0
      A0009B9B9B00969696008A8A8A0000000000000000008B8B8B00A7A7A700B2B2
      B200B1B1B100AFAFAF00BEBEBE00BABABA00B2B2B200ABABAB00A5A5A500A0A0
      A0009B9B9B00969696008A8A8A0000000000000000008B8B8B00A7A7A700B2B2
      B200B1B1B100AFAFAF00BEBEBE00BABABA00B2B2B200ABABAB00A5A5A500A0A0
      A0009B9B9B00969696008A8A8A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C00000000000000000091919100919191009191
      9100919191009191910091919100919191009191910091919100919191009191
      9100919191009191910000000000000000000000000000000000929292009292
      9200929292000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898900898989008989
      8900898989008989890089898900898989008989890089898900898989008989
      89008989890089898900000000000000000000000000000000009C9C9C00E9E9
      E900DEDEDE00D9D9D900D4D4D400CFCFCF00CACACA00C5C5C500C3C3C300C4C4
      C400C4C4C400C7C7C7009C9C9C0000000000919191009D9D9D00C4C4C400D4D4
      D400C7C7C700C7C7C700C7C7C700C7C7C700C6C6C600C7C7C700C6C6C600C7C7
      C700A8A8A80091919100000000000000000078787800BABABA00D1D1D100CFCF
      CF00DEDEDE009292920092929200929292009292920000000000000000000000
      0000000000000000000000000000000000000000000089898900D3D3D300D1D1
      D100CFCFCF00CECECE00CBCBCB00CACACA00C9C9C900C7C7C700C5C5C500C4C4
      C400C3C3C30089898900000000000000000000000000000000009C9C9C00EBEB
      EB00E0E0E000DBDBDB00D7D7D700D2D2D200CDCDCD00C9C9C900C3C3C300C2C2
      C200C2C2C200C6C6C6009C9C9C000000000091919100B5B5B500A5A5A500DFDF
      DF00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CACA
      CA00AAAAAA00CDCDCD00919191000000000081818100CACACA00D4D4D400CFCF
      CF00EFEFEF00ECECEC00E7E7E700E2E2E200DEDEDE0092929200929292009292
      9200000000000000000000000000000000000000000089898900D5D5D5005A5A
      5A00D2D2D200D0D0D0006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B
      6B00C4C4C400898989000000000000000000000000000000000095959500F0F0
      F000E5E5E500E0E0E000DCDCDC00D7D7D700D2D2D200CECECE00C9C9C900C4C4
      C400C2C2C200C6C6C6009C9C9C000000000091919100CCCCCC0089898900E5E5
      E500D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000CFCFCF00CFCF
      CF00ACACAC00E4E4E40091919100000000006A6A6A00C4C4C400D1D1D100CFCF
      CF00E5E5E5006767670067676700BBBBBB00C6C6C600C4C4C400D7D7D7009292
      9200000000000000000000000000000000000000000089898900D8D8D800D6D6
      D600D4D4D400D2D2D200D0D0D000CECECE00CCCCCC00CBCBCB00C9C9C900C7C7
      C700C6C6C600898989000000000000000000000000000000000095959500F5F5
      F500E9E9E900E4E4E400E0E0E000DBDBDB00D6D6D600D2D2D200CDCDCD00C8C8
      C800C4C4C400C5C5C5009C9C9C000000000091919100D0D0D00094949400D9D9
      D900D9D9D900D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400AFAFAF00E6E6E600919191000000000069696900A7A7A700D4D4D400CFCF
      CF00E1E1E100C8C8C800C1C1C100676767006767670067676700D4D4D4009292
      9200000000000000000000000000000000000000000089898900DADADA00D8D8
      D800D6D6D600D4D4D400D2D2D200D0D0D000CFCFCF00CDCDCD00CBCBCB00C9C9
      C900C7C7C70089898900000000000000000000000000000000009F9F9F00F9F9
      F900EFEFEF00E9E9E900E5E5E500E0E0E000DBDBDB00D7D7D700D1D1D100CDCD
      CD00C8C8C800C7C7C7009C9C9C000000000091919100D4D4D400ADADAD00BCBC
      BC00E4E4E400D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D8008888
      8800B0B0B000E7E7E700C0C0C000919191006666660094949400D1D1D100CFCF
      CF00E6E6E600959595008A8A8A006A6A6A006868680071717100686868006868
      6800696969000000000000000000000000000000000089898900DCDCDC005A5A
      5A00D8D8D800D7D7D7006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B
      6B009A9A9C0077777700000000000000000000000000000000009F9F9F00FEFE
      FE00F3F3F300EEEEEE00E9E9E900E4E4E400DFDFDF00DBDBDB00D7D7D700D1D1
      D100CCCCCC00CCCCCC009C9C9C000000000091919100D7D7D700CCCCCC009898
      9800FFFFFF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00088888800B2B2
      B20088888800F8F8F800F4F4F400919191006363630082828200D1D1D100CFCF
      CF00E9E9E900B8B8B8006C6C6C00747474007D7D7D0079797900727272006E6E
      6E006B6B6B006969690068686800676767000000000089898900DEDEDE00DCDC
      DC00DADADA00D8D8D800D7D7D700D5D5D500D3D3D300D1D1D100AFAFAF009B9B
      9B00A5A5A5007777770000000000000000000000000000000000A6A6A600FFFF
      FF00F9F9F900F3F3F300EEEEEE00E9E9E900E5E5E500DFDFDF00DBDBDB00D7D7
      D700D2D2D200D1D1D1009C9C9C000000000091919100DBDBDB00DBDBDB009292
      9200898989008989890089898900898989008989890088888800C6C6C600D4D4
      D400B7B7B7008888880089898900919191000000000093939300CFCFCF00CFCF
      CF00E9E9E900818181006F6F6F0088888800828282007E7E7E007F7F7F007F7F
      7F0080808000808080006F6F6F00646464000000000089898900E0E0E000DEDE
      DE00DCDCDC00DADADA00D9D9D900D7D7D700D5D5D500D3D3D3008E8E8E009292
      92007A7A7A006C6C6C0000000000000000000000000000000000A6A6A600FFFF
      FF00FEFEFE00F8F8F800F3F3F300EEEEEE00E9E9E900E4E4E400E0E0E000DBDB
      DB00D6D6D600D6D6D6009C9C9C000000000091919100DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE0088888800BDBDBD00CDCDCD00CCCC
      CC00D4D4D400B5B5B50088888800000000000000000085858500CFCFCF00FDFD
      FD00B3B3B3006A6A6A0095959500919191008B8B8B0085858500808080007E7E
      7E00808080007474740064646400000000000000000089898900E2E2E2005A5A
      5A00DEDEDE00DCDCDC006B6B6B006B6B6B006B6B6B006B6B6B00BDBDBD00C1C1
      C1008E8E8E006868680000000000000000000000000000000000B1B1B100FFFF
      FF00FFFFFF00FEFEFE00F9F9F900F3F3F300EEEEEE00E9E9E900E4E4E400DFDF
      DF00DCDCDC00D3D3D3009C9C9C000000000091919100FFFFFF00E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E00088888800888888008888880088888800CBCB
      CB00BDBDBD008888880088888800888888000000000068686800CFCFCF00EDED
      ED006F6F6F0092929200A2A2A2009B9B9B00959595008F8F8F00898989008585
      8500777777006565650000000000000000000000000089898900E3E3E300E2E2
      E200E1E1E100DFDFDF00DDDDDD00DCDCDC00DADADA00D7D7D700A9A9A900ABAB
      AB00999999006868680000000000000000000000000000000000B1B1B100FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00F8F8F800F3F3F300EEEEEE00EBEBEB00EAEA
      EA00D5D5D500B7B7B7009C9C9C00000000000000000091919100FFFFFF00E3E3
      E300E3E3E300E3E3E30091919100ADADAD00ADADAD00ADADAD0088888800C6C6
      C600AFAFAF008888880000000000000000000000000063636300B6B6B6009292
      92007A7A7A00B2B2B200ABABAB00A5A5A5009F9F9F0098989800949494008585
      8500666666000000000000000000000000000000000089898900E5E5E500E4E4
      E400E3E3E300E1E1E100E0E0E000DDDDDD00DCDCDC00DADADA00D5D5D500D0D0
      D000D1D1D1006B6B6B0000000000000000000000000000000000B8B8B800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00F8F8F800F4F4F400E3E3E3009999
      990099999900999999009C9C9C00000000000000000000000000919191009191
      910091919100919191000000000000000000000000000000000088888800BCBC
      BC00888888000000000000000000000000000000000066666600939393006969
      6900ADADAD00B1B1B100B2B2B200AFAFAF00ABABAB00A4A4A400959595006B6B
      6B00000000000000000000000000000000000000000089898900E7E7E7005A5A
      5A00E4E4E400E3E3E3006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B
      6B00D4D4D4006E6E6E0000000000000000000000000000000000B8B8B800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FCFCFC00D6D6D6009999
      9900ACACAC009B9B9B0096969600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000088888800A8A8A800ABAB
      AB00888888000000000000000000000000000000000000000000737373008080
      80009F9F9F009A9A9A009B9B9B00A2A2A2009E9E9E00AAAAAA00727272000000
      0000000000000000000000000000000000000000000089898900E8E8E800E7E7
      E700E5E5E500E4E4E400E3E3E300E1E1E100E0E0E000DEDEDE00DCDCDC00DBDB
      DB00D7D7D7007070700000000000616161000000000000000000BFBFBF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DBDBDB009999
      9900B8B8B800A2A2A20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000088888800A4A4A4008888
      8800000000000000000000000000000000000000000000000000777777007D7D
      7D00737373007A7A7A007B7B7B0084848400838383007B7B7B00000000000000
      0000000000000000000000000000000000000000000089898900E9E9E900E8E8
      E800E7E7E700E5E5E500E4E4E400E3E3E300E1E1E100E0E0E000DEDEDE00DDDD
      DD00DBDBDB007070700000000000616161000000000000000000BFBFBF00F8F8
      F800F7F7F700F7F7F700F7F7F700F6F6F600F6F6F600F6F6F600D7D7D7009999
      9900AAAAAA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000888888008888880088888800888888000000
      0000000000000000000000000000000000000000000000000000000000007777
      770077777700777777007B7B7B007C7C7C007878780000000000000000000000
      0000000000000000000000000000000000000000000089898900898989008989
      8900898989008989890089898900898989008989890089898900898989008989
      890089898900666666006D6D6D00000000000000000000000000BFBFBF00B1B1
      B100B1B1B100B1B1B100B1B1B100B1B1B100B1B1B100B1B1B100B1B1B1009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000008888880088888800888888008888880000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000900000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000C003800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      C003800100000000FFFFFFFF000000009FFFFFFFFFFFFFFF0FFFC003C003C003
      07FF80018001800183FF800180018001C1FF800180018001E10F800180018001
      F003800180018001F801800180018001F801800180018001F800800180018001
      F800800180018001F800800180018001F801800180018001FC01800180018001
      FE03C003C003C003FF0FFFFFFFFFFFFFFC1FFE3FFFFF9FFFF00FE00700210FFF
      F00FE007002907FFF00F8003002183FFE01F80010021C1FFC0078001FFFEE10F
      C00380010021F003C00380010029F801C00380010021F801C003C0030021F800
      C003E007FFFEF800C003F81F0021F800C003F81F0029F801C003F81F0021FC01
      E003F81F0021FE03FE07FC3FFFFEFF0FDC1FDC1FFFFFC7FFC01FC01FF70701FF
      DC1FDC1FF00701FFDFFFDFFFF70700F9DC1FDC1FF7FF8000C01FC01FF707C000
      DC1FDC1FF0078001DFFFDFFFF7078001DC1FDC1FF7FF8001C01FC01FF7078001
      DC1FDC1FF007800107E107E4F707800107E907E0C1FF800307E507F1C1FF8007
      FFE0FFE0C1FFC007FFFEFFE4FFFFF007FFFF80FFF33FDC1F0000007FE007C01F
      0000007FC000DC1F0000007F8001DFFF0000007F0000DC1F000000000000C01F
      000000000000DC1F000000008000DFFF00008000E001DC1F0000F800F003C01F
      0000F800F01FDC130000F800E03F07F30000F800E03F07C08001F800C03F07C0
      FFFFF800C07FFFF3FFFFF800F8FFFFF38001FFFFFF80FF800000C007FF80FF80
      00008003FF80FF8000008003FF80FF8000008003FF80FF8000008003FF80FF80
      00008003FF80FF80000080030081008100008003008200830000800300DE00E3
      80018003009C00C1C003800300000080E0078003000100E3F00F8003000300E3
      FC3FC007019F01C3FFFFFFFF03DF0307F00000000000F81FF00000000000E007
      F00000000000C003C000000000008001C000000000008001C000000000000000
      0000000000000000000080010000000000000000000000000001000000000000
      000300000000000000030000000080010007000000008001000F00000000C003
      000F00000000E007801F80018181F81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      8001800180018001000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008001800180018001
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0018003C7FF8003C0010003007F8003
      C0010001000F8003C0010001000F8003C0010001000F8003C001000000078003
      C001000000008003C001000080008003C001000180018003C001000080038003
      C001800380078003C001C3C7800F8003C001FF87C01F8002C003FF8FC03F8002
      C007FE1FE07F8001C00FF87FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object sdgImage: TSaveDialog
    DefaultExt = '.bmp'
    Filter = 'Mapa de bits de 256 colores|*.bmp'
    FilterIndex = 0
    Title = 'Guardar imagen'
    Left = 140
    Top = 101
  end
  object mnuTray: TPopupMenu
    Left = 109
    Top = 132
    object Abrir1: TMenuItem
      Action = actAbrir
    end
    object VentanadelEditordetexto1: TMenuItem
      Action = actTextEditor
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object Configuracindelaaplicacin1: TMenuItem
      Action = actConfiguracion
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object Salir1: TMenuItem
      Action = actSalir
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object Comunicarseconelautor1: TMenuItem
      Action = actMail
    end
    object Acercade1: TMenuItem
      Action = actAcerca
    end
  end
end
