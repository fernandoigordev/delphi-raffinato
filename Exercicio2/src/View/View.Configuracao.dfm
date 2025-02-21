object ViewConfiguracao: TViewConfiguracao
  Left = 0
  Top = 0
  Caption = 'Configura'#231#227'o'
  ClientHeight = 133
  ClientWidth = 456
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PanelContainer: TPanel
    Left = 0
    Top = 0
    Width = 456
    Height = 92
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = 153
    ExplicitTop = 112
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 10
      Top = 26
      Width = 129
      Height = 15
      Caption = 'Profundidade do buraco'
    end
    object Label2: TLabel
      Left = 162
      Top = 26
      Width = 127
      Height = 15
      Caption = 'Qtd avan'#231'o da minhoca'
    end
    object Label3: TLabel
      Left = 314
      Top = 26
      Width = 107
      Height = 14
      Caption = 'Qtd queda minhoca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object EditProfundidadeBuraco: TEdit
      Left = 10
      Top = 47
      Width = 129
      Height = 23
      NumbersOnly = True
      TabOrder = 0
      Text = '0'
    end
    object EditQtdAvancoMinhoca: TEdit
      Left = 162
      Top = 47
      Width = 129
      Height = 23
      NumbersOnly = True
      TabOrder = 1
      Text = '0'
    end
    object EditQtdQuedaMinhoca: TEdit
      Left = 314
      Top = 47
      Width = 129
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 2
      Text = '0'
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 92
    Width = 456
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = -88
    ExplicitTop = 16
    ExplicitWidth = 185
    object PanelBotaoSalvar: TPanel
      AlignWithMargins = True
      Left = 336
      Top = 3
      Width = 115
      Height = 35
      Margins.Left = 5
      Margins.Right = 5
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Salvar'
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 504
      object SpeedButtonSalvar: TSpeedButton
        Left = 0
        Top = 0
        Width = 115
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButtonSalvarClick
        ExplicitLeft = 304
        ExplicitTop = 40
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object PanelCancelar: TPanel
      AlignWithMargins = True
      Left = 211
      Top = 3
      Width = 115
      Height = 35
      Margins.Left = 5
      Margins.Right = 5
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Cancelar'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 504
      object SpeedButtonCancelar: TSpeedButton
        Left = 0
        Top = 0
        Width = 115
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButtonCancelarClick
        ExplicitLeft = 304
        ExplicitTop = 40
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
  end
end
