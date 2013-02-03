object frmChild: TfrmChild
  Left = 325
  Top = 212
  Width = 320
  Height = 240
  Caption = 'Sin_Titulo.mmf'
  Color = 3553597
  Constraints.MinHeight = 240
  Constraints.MinWidth = 320
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  Menu = mnuChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object dsgVisor: TDesigner2D
    Left = 0
    Top = 0
    Width = 312
    Height = 186
    Cursor = 8
    FontAxeX.Charset = DEFAULT_CHARSET
    FontAxeX.Color = clWhite
    FontAxeX.Height = -11
    FontAxeX.Name = 'MS Sans Serif'
    FontAxeX.Style = [fsBold]
    FontAxeY.Charset = DEFAULT_CHARSET
    FontAxeY.Color = clWhite
    FontAxeY.Height = -11
    FontAxeY.Name = 'MS Sans Serif'
    FontAxeY.Style = [fsBold]
    FontLabelX.Charset = DEFAULT_CHARSET
    FontLabelX.Color = clWhite
    FontLabelX.Height = -11
    FontLabelX.Name = 'MS Sans Serif'
    FontLabelX.Style = []
    FontLabelY.Charset = DEFAULT_CHARSET
    FontLabelY.Color = clWhite
    FontLabelY.Height = -11
    FontLabelY.Name = 'MS Sans Serif'
    FontLabelY.Style = []
    AxeX.Color = 15658734
    AxeY.Color = 15658734
    GridX.Color = 15658734
    GridX.Style = psDot
    GridY.Color = 15658734
    GridY.Style = psDot
    BackGround.Color = 3553597
    GridStepX = 0.5
    GridStepY = 0.5
    DiscretStepX = 0.1
    NameAxeX = 'X'
    NameAxeY = 'Y'
    MarksLengthAxeX = 6
    MarksLengthAxeY = 6
    MarksStepX = 0.25
    MarksStepY = 0.25
    LabelsStepX = 0.5
    LabelsStepY = 0.5
    Align = alClient
    PopupMenu = pmuVisor
    OnMouseDown = dsgVisorMouseDown
    OnMouseMove = dsgVisorMouseMove
    OnMouseUp = dsgVisorMouseUp
  end
  object mnuChild: TMainMenu
    Images = frmMain.imlMain
    Left = 4
    Top = 8
    object mitArchivo: TMenuItem
      Caption = '&Archivo'
      object mitNuevo: TMenuItem
        Action = frmMain.actNuevo
      end
      object mitAbrir: TMenuItem
        Action = frmMain.actAbrir
      end
      object mitGuardar: TMenuItem
        Action = actGuardar
      end
      object mitGuardarComo: TMenuItem
        Action = actGuardarComo
      end
      object mitCerrar: TMenuItem
        Action = frmMain.actCerrar
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mitImportar: TMenuItem
        Caption = 'Importar'
        ImageIndex = 14
        object mitImpFuncion: TMenuItem
          Action = actImpFuncion
        end
      end
      object mitExportar: TMenuItem
        Caption = 'Exportar'
        ImageIndex = 15
        object mitExpFuncion: TMenuItem
          Action = actExpFuncion
        end
        object mitExpImagen: TMenuItem
          Action = actExpImagen
        end
        object Exportarmuestras1: TMenuItem
          Action = actExpMuestras
        end
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mitConfImpres: TMenuItem
        Action = frmMain.actConfImpres
      end
      object mitImprimir: TMenuItem
        Action = actImprimir
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object mitSalir: TMenuItem
        Action = frmMain.actSalir
      end
    end
    object mitFunciones: TMenuItem
      Caption = '&Funciones'
      object mitAgregar: TMenuItem
        Action = actNuevaFuncion
      end
      object mitModificar: TMenuItem
        Action = actModificarFuncion
      end
      object mitEliminar: TMenuItem
        Action = actEliminarFuncion
      end
      object mitEliminartodas: TMenuItem
        Action = actEliminarTodas
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object mitArbolFunciones: TMenuItem
        Action = actArbolFunciones
      end
      object mitTrace: TMenuItem
        Action = actTrace
      end
    end
    object Operaciones1: TMenuItem
      Caption = '&Operaciones'
      object mitLimite: TMenuItem
        Action = actLimite
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object mitDerivada: TMenuItem
        Action = actDerivada
      end
      object mit2daDerivada: TMenuItem
        Action = act2daDerivada
      end
      object mitRectas: TMenuItem
        Caption = 'Recta'
        object mitTangente: TMenuItem
          Action = actTangente
        end
        object mitNormal: TMenuItem
          Action = actNormal
        end
        object mitSecante: TMenuItem
          Action = actSecante
        end
      end
      object mitTaylor: TMenuItem
        Action = actTaylor
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object mitArea: TMenuItem
        Caption = 'Area'
        object mitAreaBajoCurva: TMenuItem
          Action = actAreaBajoCurva
        end
        object mitAreaEntre2Curvas: TMenuItem
          Action = actAreaEntre2Curvas
        end
        object mitAreaLateralSupRevolucion: TMenuItem
          Action = actAreaLateralSupRevolucion
        end
      end
      object mitVolumen: TMenuItem
        Caption = 'Volumen'
        object mitVolDiscos: TMenuItem
          Action = actVolDiscos
        end
        object mitVolArandelas: TMenuItem
          Action = actVolArandelas
        end
        object mitCapas: TMenuItem
          Action = actVolCapas
        end
      end
      object mitLongArco: TMenuItem
        Action = actLongArco
      end
      object mitCentroGravedad: TMenuItem
        Action = actCentroGravedad
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object mitEstudioCompleto: TMenuItem
        Action = actEstudioCompleto
      end
      object mitEstudiode: TMenuItem
        Caption = 'Estudio de'
        object mitInterseccionesEjes: TMenuItem
          Action = actInterseccionesEjes
        end
        object mitParidad: TMenuItem
          Action = actParidad
        end
        object mit1eraDerivada: TMenuItem
          Caption = '1'#186' derivada'
          object mitPtsCriticos1eraDerivada: TMenuItem
            Action = actPtsCriticos1eraDerivada
          end
          object mitIntCrec: TMenuItem
            Action = actIntCrecimiento
          end
          object mitMaximosMinimos: TMenuItem
            Action = actMaximos
          end
        end
        object mit2Derivada: TMenuItem
          Caption = '2'#186' derivada'
          object mitPtscriticos2derivada: TMenuItem
            Action = actPtsCriticos2daDerivada
          end
          object mitIntConcavidadConvexidad: TMenuItem
            Action = actIntConcavidad
          end
          object mitPtsInflexion: TMenuItem
            Action = actPtsInflexion
          end
        end
        object mitAsintotas: TMenuItem
          Action = actAsintotas
        end
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object mitIntersecciones2Curvas: TMenuItem
        Action = actInterseccion2Curvas
      end
    end
    object Ver1: TMenuItem
      Caption = 'V&er'
      GroupIndex = 1
      object mitFullScreen: TMenuItem
        Action = frmMain.actFullScreen
        AutoCheck = True
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object mitBHerramientas: TMenuItem
        Action = frmMain.actHerramientas
      end
      object mitBEstado: TMenuItem
        Action = frmMain.actEstado
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object mitTextEditor: TMenuItem
        Action = frmMain.actTextEditor
      end
      object mitVisor: TMenuItem
        Action = actVisor
      end
      object mitSelectorGraficas: TMenuItem
        Action = actSelectorGraficas
      end
      object mitZoom: TMenuItem
        Caption = 'Zoom'
        object mitZoomMenos: TMenuItem
          Action = actZoomMenos
        end
        object mitZoomDefault: TMenuItem
          Action = actZoomDefault
        end
        object mitZoomMas: TMenuItem
          Action = actZoomMas
        end
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object Configuracindelaaplicacin1: TMenuItem
        Action = frmMain.actConfiguracion
      end
    end
  end
  object alsChild: TActionList
    Images = frmMain.imlMain
    Left = 36
    Top = 8
    object actGuardar: TAction
      Category = 'Archivo'
      Caption = 'Guardar'
      Hint = 'Guarda los cambios del proyecto actual'
      ImageIndex = 13
      ShortCut = 16455
      OnExecute = actGuardarExecute
    end
    object actGuardarComo: TAction
      Category = 'Archivo'
      Caption = 'Guardar como...'
      Hint = 'Permite guardar con otro nombre el proyecto actual'
      OnExecute = actGuardarComoExecute
    end
    object actImpFuncion: TAction
      Category = 'Archivo'
      Caption = 'Importar funci'#243'n...'
      Hint = 'Importa una funci'#243'n para agregarla a un proyecto'
      ImageIndex = 16
      OnExecute = actImpFuncionExecute
    end
    object actExpFuncion: TAction
      Category = 'Archivo'
      Caption = 'Exportar funci'#243'n...'
      Hint = 'Permite exportar funciones individualmente'
      ImageIndex = 16
      OnExecute = actExpFuncionExecute
    end
    object actExpImagen: TAction
      Category = 'Archivo'
      Caption = 'Exportar imagen...'
      Hint = 'Guarda la imagen actual del graficador en archivo'
      ImageIndex = 17
      OnExecute = actExpImagenExecute
    end
    object actExpMuestras: TAction
      Category = 'Archivo'
      Caption = 'Exportar muestras...'
      Hint = 'Exporta a un archivo de texto las muestras de una funci'#243'n'
      ImageIndex = 7
      OnExecute = actExpMuestrasExecute
    end
    object actNuevaFuncion: TAction
      Category = 'Funciones'
      Caption = 'Nueva funci'#243'n...'
      Hint = 'Crea una nueva funci'#243'n'
      ImageIndex = 19
      ShortCut = 45
      OnExecute = actNuevaFuncionExecute
    end
    object actModificarFuncion: TAction
      Category = 'Funciones'
      Caption = 'Modificar funci'#243'n...'
      Enabled = False
      Hint = 'Permite realizar cambios a una funci'#243'n existente'
      ImageIndex = 20
      ShortCut = 16429
      OnExecute = actModificarFuncionExecute
    end
    object actEliminarFuncion: TAction
      Category = 'Funciones'
      Caption = 'Eliminar funci'#243'n...'
      Enabled = False
      Hint = 'Elimina una funci'#243'n'
      ImageIndex = 21
      ShortCut = 16430
      OnExecute = actEliminarFuncionExecute
    end
    object actEliminarTodas: TAction
      Category = 'Funciones'
      Caption = 'Eliminar todas'
      Enabled = False
      Hint = 'Permite eliminar todas las funciones declaradas'
      OnExecute = actEliminarTodasExecute
    end
    object actArbolFunciones: TAction
      Category = 'Funciones'
      Caption = 'Arbol de funciones...'
      Enabled = False
      Hint = 'Visualiza en forma de arbol las funciones definidas'
      ImageIndex = 22
      OnExecute = actArbolFuncionesExecute
    end
    object actTrace: TAction
      Category = 'Funciones'
      Caption = 'Camino de funci'#243'n...'
      Hint = 'Permite evaluar una funci'#243'n punto a punto'
      ImageIndex = 23
      OnExecute = actTraceExecute
    end
    object actImprimir: TAction
      Category = 'Archivo'
      Caption = 'Imprimir...'
      Hint = 'Imprime la gr'#225'fica actual'
      ImageIndex = 18
      ShortCut = 16464
      OnExecute = actImprimirExecute
    end
    object actLimite: TAction
      Category = 'Operaciones'
      Caption = 'L'#237'mite...'
      Hint = 'Permite calcular el l'#237'mite de una funci'#243'n'
      ImageIndex = 34
      ShortCut = 16460
      OnExecute = actLimiteExecute
    end
    object actDerivada: TAction
      Category = 'Operaciones'
      Caption = 'Derivada...'
      Hint = 'Calcula y permite declarar la primera derivada'
      ImageIndex = 35
      ShortCut = 16452
      OnExecute = actDerivadaExecute
    end
    object act2daDerivada: TAction
      Category = 'Operaciones'
      Caption = 'Segunda derivada...'
      Hint = 'Calcula y permite declarar la segunda derivada'
      ImageIndex = 36
      OnExecute = act2daDerivadaExecute
    end
    object actTangente: TAction
      Category = 'Operaciones'
      Caption = 'Tangente...'
      Hint = 'Calcula la recta tangente de una funci'#243'n en un punto'
      ImageIndex = 37
      OnExecute = actTangenteExecute
    end
    object actNormal: TAction
      Category = 'Operaciones'
      Caption = 'Normal...'
      Hint = 'Calcula la recta normal en un punto'
      ImageIndex = 38
      OnExecute = actNormalExecute
    end
    object actSecante: TAction
      Category = 'Operaciones'
      Caption = 'Secante...'
      Hint = 'Permite calcular una recta secante'
      ImageIndex = 39
      OnExecute = actSecanteExecute
    end
    object actTaylor: TAction
      Category = 'Operaciones'
      Caption = 'Polinomio de Taylor...'
      Hint = 'Calcula el polinomio de Taylor para una expresi'#243'n'
      ImageIndex = 40
      ShortCut = 16468
      OnExecute = actTaylorExecute
    end
    object actAreaBajoCurva: TAction
      Category = 'Operaciones'
      Caption = 'bajo la curva...'
      Hint = 'Calcula el area bajo una funci'#243'n'
      ImageIndex = 41
      OnExecute = actAreaBajoCurvaExecute
    end
    object actAreaEntre2Curvas: TAction
      Category = 'Operaciones'
      Caption = 'entre dos curvas...'
      Hint = 'Calcula el area entre dos funciones'
      ImageIndex = 42
      OnExecute = actAreaEntre2CurvasExecute
    end
    object actAreaLateralSupRevolucion: TAction
      Category = 'Operaciones'
      Caption = 'lateral de una superficie de revoluci'#243'n...'
      Hint = 'Calcula el area lateral de una superficie de revoluci'#243'n'
      ImageIndex = 43
      OnExecute = actAreaLateralSupRevolucionExecute
    end
    object actVolDiscos: TAction
      Category = 'Operaciones'
      Caption = 'M'#233'todo de discos...'
      Hint = 'Calcula un vol'#250'men  por el m'#233'todo de discos'
      ImageIndex = 44
      OnExecute = actVolDiscosExecute
    end
    object actVolArandelas: TAction
      Category = 'Operaciones'
      Caption = 'M'#233'todo de arandelas...'
      Hint = 'Calcula un vol'#250'men  por el m'#233'todo de arandelas'
      ImageIndex = 45
      OnExecute = actVolArandelasExecute
    end
    object actVolCapas: TAction
      Category = 'Operaciones'
      Caption = 'M'#233'todo de capas o tubos...'
      Hint = 'Calcula un vol'#250'men  por el m'#233'todo de tubos o capas'
      ImageIndex = 46
      OnExecute = actVolCapasExecute
    end
    object actLongArco: TAction
      Category = 'Operaciones'
      Caption = 'Longitud de arco...'
      Hint = 'Calcula la longitud de arco'
      ImageIndex = 47
      ShortCut = 16459
      OnExecute = actLongArcoExecute
    end
    object actCentroGravedad: TAction
      Category = 'Operaciones'
      Caption = 'Centro de gravedad...'
      Hint = 'Calcula el centro de gravedad de una superficie'
      ImageIndex = 48
      OnExecute = actCentroGravedadExecute
    end
    object actEstudioCompleto: TAction
      Category = 'Operaciones'
      Caption = 'Estudio completo...'
      Hint = 'Realiza el estudio completo'
      ImageIndex = 49
      ShortCut = 16469
      OnExecute = actEstudioCompletoExecute
    end
    object actInterseccionesEjes: TAction
      Category = 'Operaciones'
      Caption = 'Intersecciones con los ejes...'
      Hint = 'Calcula las intersecciones con los ejes coordenados'
      ImageIndex = 50
      OnExecute = actInterseccionesEjesExecute
    end
    object actParidad: TAction
      Category = 'Operaciones'
      Caption = 'Paridad...'
      Hint = 'Identifica la paridad de la funci'#243'n'
      ImageIndex = 51
      OnExecute = actParidadExecute
    end
    object actPtsCriticos1eraDerivada: TAction
      Category = 'Operaciones'
      Caption = 'Puntos cr'#237'ticos 1'#186' derivada...'
      Hint = 'Calcula los puntos cr'#237'ticos de la primera derivada'
      ImageIndex = 52
      OnExecute = actPtsCriticos1eraDerivadaExecute
    end
    object actIntCrecimiento: TAction
      Category = 'Operaciones'
      Caption = 'Intervalos de crecimiento y decrecimiento...'
      Hint = 'Calcula los intervalos de crecimiento y decrecimiento'
      ImageIndex = 53
      OnExecute = actIntCrecimientoExecute
    end
    object actMaximos: TAction
      Category = 'Operaciones'
      Caption = 'M'#225'ximos y m'#237'nimos...'
      Hint = 'Calcula los m'#225'ximos y los m'#237'nimos de una funci'#243'n'
      ImageIndex = 54
      OnExecute = actMaximosExecute
    end
    object actPtsCriticos2daDerivada: TAction
      Category = 'Operaciones'
      Caption = 'Puntos cr'#237'ticos 2'#186' derivada...'
      Hint = 'Calcula los puntos cr'#237'ticos de la segunda derivada'
      ImageIndex = 55
      OnExecute = actPtsCriticos2daDerivadaExecute
    end
    object actIntConcavidad: TAction
      Category = 'Operaciones'
      Caption = 'Intervalos de concavidad y convexidad...'
      Hint = 'Calcula los intervalos de concavidad y convexidad'
      ImageIndex = 56
      OnExecute = actIntConcavidadExecute
    end
    object actPtsInflexion: TAction
      Category = 'Operaciones'
      Caption = 'Puntos de inflexi'#243'n...'
      Hint = 'Calcula los puntos de inflexi'#243'n'
      ImageIndex = 57
      OnExecute = actPtsInflexionExecute
    end
    object actAsintotas: TAction
      Category = 'Operaciones'
      Caption = 'As'#237'ntotas...'
      Hint = 'Calcula las asintotas horizontales y oblicuas'
      ImageIndex = 58
      OnExecute = actAsintotasExecute
    end
    object actInterseccion2Curvas: TAction
      Category = 'Operaciones'
      Caption = 'Intersecciones entre 2 curvas...'
      Hint = 'Calcula las intersecciones entre dos funciones'
      ImageIndex = 59
      OnExecute = actInterseccion2CurvasExecute
    end
    object actVisor: TAction
      Category = 'Ver'
      Caption = 'Caracter'#237'sticas del visor...'
      Hint = 'Permite configurar las caracteristicas visuales'
      ImageIndex = 25
      ShortCut = 16473
      OnExecute = actVisorExecute
    end
    object actSelectorGraficas: TAction
      Category = 'Ver'
      Caption = 'Selector de gr'#225'ficas...'
      Hint = 'Permite seleccionar que funci'#243'n graficar'
      ImageIndex = 26
      ShortCut = 16467
      OnExecute = actSelectorGraficasExecute
    end
    object actZoomMenos: TAction
      Category = 'Ver'
      Caption = 'Alejamiento'
      Hint = 'Aplica un alejamiento en el visor'
      ImageIndex = 28
      OnExecute = actZoomMenosExecute
    end
    object actZoomDefault: TAction
      Category = 'Ver'
      Caption = 'Por defecto'
      Hint = 'Selecciona el zoom por defecto (100%)'
      OnExecute = actZoomDefaultExecute
    end
    object actZoomMas: TAction
      Category = 'Ver'
      Caption = 'Acercamiento'
      Hint = 'Aplica un acercamiento en el visor'
      ImageIndex = 27
      OnExecute = actZoomMasExecute
    end
    object actCentrar: TAction
      Category = 'Visor'
      Caption = 'Centrar gr'#225'fica'
      Hint = 'Muestra el centro de coordenadas'
      OnExecute = actCentrarExecute
    end
    object actIzq: TAction
      Category = 'Visor'
      Caption = 'Ver izquierda'
      Hint = 'Mueve el visor hacia la izquierda'
      ImageIndex = 29
      OnExecute = actIzqExecute
    end
    object actDer: TAction
      Category = 'Visor'
      Caption = 'Ver derecha'
      Hint = 'Mueve el visor hacia la derecha'
      ImageIndex = 30
      OnExecute = actDerExecute
    end
    object actArr: TAction
      Category = 'Visor'
      Caption = 'Ver arriba'
      Hint = 'Mueve el visor hacia arriba'
      ImageIndex = 32
      OnExecute = actArrExecute
    end
    object actAba: TAction
      Category = 'Visor'
      Caption = 'Ver abajo'
      Hint = 'Mueve el visor hacia abajo'
      ImageIndex = 31
      OnExecute = actAbaExecute
    end
    object actCopiar: TAction
      Category = 'Visor'
      Caption = 'Copiar imagen'
      ImageIndex = 33
      OnExecute = actCopiarExecute
    end
    object actSetZoomMas: TAction
      Category = 'Visor'
      AutoCheck = True
      GroupIndex = 1
      Hint = 'Fija el cursor en zoom de acercamiento'
      ImageIndex = 27
      OnExecute = actSetZoomMasExecute
    end
    object actSetZoomMenos: TAction
      Category = 'Visor'
      AutoCheck = True
      GroupIndex = 1
      Hint = 'Fija el cursor en zoom de alejamiento'
      ImageIndex = 28
      OnExecute = actSetZoomMenosExecute
    end
    object actMove: TAction
      Category = 'Visor'
      AutoCheck = True
      Caption = 'actMove'
      GroupIndex = 1
      ImageIndex = 60
      OnExecute = actMoveExecute
    end
    object actMira: TAction
      Category = 'Visor'
      AutoCheck = True
      Caption = 'actMira'
      Checked = True
      GroupIndex = 1
      ImageIndex = 61
      OnExecute = actMiraExecute
    end
  end
  object pmuVisor: TPopupMenu
    Images = frmMain.imlMain
    Left = 72
    Top = 8
    object mitCopiarImagen: TMenuItem
      Action = actCopiar
    end
    object Imprimir1: TMenuItem
      Action = actImprimir
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object Centrargrfica1: TMenuItem
      Action = actCentrar
    end
    object Acercamiento1: TMenuItem
      Action = actZoomMas
    end
    object Alejamiento1: TMenuItem
      Action = actZoomMenos
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object Nuevafuncin1: TMenuItem
      Action = actNuevaFuncion
    end
    object Modificarfuncin1: TMenuItem
      Action = actModificarFuncion
    end
    object Eliminarfuncin1: TMenuItem
      Action = actEliminarFuncion
    end
    object Arboldefunciones1: TMenuItem
      Action = actArbolFunciones
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object Caractersticasdelvisor1: TMenuItem
      Action = actVisor
    end
  end
end
