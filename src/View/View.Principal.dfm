object ViewPrincipal: TViewPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Raffinato - Exerc'#237'cio 1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object PanelLegenda: TPanel
    Left = 0
    Top = 400
    Width = 624
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object LabelLegendaMetadeDoBurado: TLabel
      AlignWithMargins = True
      Left = 286
      Top = 3
      Width = 167
      Height = 35
      Align = alLeft
      Caption = 'Chegou na metadade do buraco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object LabelLegendaSaiuDoBuraco: TLabel
      AlignWithMargins = True
      Left = 499
      Top = 3
      Width = 78
      Height = 35
      Align = alLeft
      Caption = 'Saiu do buraco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object LabelLegendaEscalandoBuraco: TLabel
      AlignWithMargins = True
      Left = 139
      Top = 3
      Width = 101
      Height = 35
      Align = alLeft
      Caption = 'Escalando o buraco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object LabelLegendaInoperante: TLabel
      AlignWithMargins = True
      Left = 36
      Top = 3
      Width = 57
      Height = 35
      Align = alLeft
      Caption = 'Inoperante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object PanelLegendaSaiuDoBuraco: TPanel
      AlignWithMargins = True
      Left = 466
      Top = 7
      Width = 27
      Height = 27
      Margins.Left = 10
      Margins.Top = 7
      Margins.Bottom = 7
      Align = alLeft
      BevelOuter = bvNone
      Color = clGreen
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
    end
    object PanelLegendaMetadeBuraco: TPanel
      AlignWithMargins = True
      Left = 253
      Top = 7
      Width = 27
      Height = 27
      Margins.Left = 10
      Margins.Top = 7
      Margins.Bottom = 7
      Align = alLeft
      BevelOuter = bvNone
      Color = clYellow
      ParentBackground = False
      ShowCaption = False
      TabOrder = 1
    end
    object PanelLegendaEscalandoBuraco: TPanel
      AlignWithMargins = True
      Left = 106
      Top = 7
      Width = 27
      Height = 27
      Margins.Left = 10
      Margins.Top = 7
      Margins.Bottom = 7
      Align = alLeft
      BevelOuter = bvNone
      Color = clRed
      ParentBackground = False
      ShowCaption = False
      TabOrder = 2
    end
    object PanelLegendaInoperante: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 7
      Width = 27
      Height = 27
      Margins.Top = 7
      Margins.Bottom = 7
      Align = alLeft
      BevelOuter = bvNone
      Color = clSilver
      ParentBackground = False
      ShowCaption = False
      TabOrder = 3
    end
  end
  object PanelContainer: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 359
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    ExplicitHeight = 400
    object PanelStatus: TPanel
      AlignWithMargins = True
      Left = 200
      Top = 76
      Width = 224
      Height = 212
      Margins.Left = 200
      Margins.Right = 200
      Margins.Bottom = 5
      Align = alTop
      BevelOuter = bvNone
      Color = clSilver
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
    end
    object PanelEscalar: TPanel
      AlignWithMargins = True
      Left = 200
      Top = 303
      Width = 224
      Height = 36
      Margins.Left = 200
      Margins.Top = 10
      Margins.Right = 200
      Margins.Bottom = 20
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Iniciar Escalada'
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      ExplicitTop = 313
      ExplicitHeight = 57
      object SpeedButtonIniciar: TSpeedButton
        Left = 0
        Top = 0
        Width = 224
        Height = 36
        Cursor = crHandPoint
        Align = alClient
        Flat = True
        OnClick = SpeedButtonIniciarClick
        ExplicitLeft = 304
        ExplicitTop = 40
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object PanelTitulo: TPanel
      Left = 0
      Top = 0
      Width = 624
      Height = 73
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Status da escalada da minhoca'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
  end
  object PanelEstatistica: TPanel
    Left = 0
    Top = 359
    Width = 624
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = -8
    ExplicitTop = 335
    object LabelQuantidadeSubidas: TLabel
      AlignWithMargins = True
      Left = 264
      Top = 3
      Width = 9
      Height = 35
      Align = alLeft
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 21
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 255
      Height = 35
      Align = alLeft
      Caption = 'Quantidade de vezes que a minhoca subiu: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 17
    end
  end
end
