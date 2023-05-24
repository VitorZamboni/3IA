object formBolinha: TformBolinha
  Left = 203
  Top = 124
  Width = 1042
  Height = 600
  Caption = 'Projeto Alterando Posi'#231#227'o da Bola'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bevelQuadro: TBevel
    Left = 10
    Top = 15
    Width = 600
    Height = 400
  end
  object shapeBolinha: TShape
    Left = 10
    Top = 10
    Width = 30
    Height = 30
    Brush.Color = clBackground
    Shape = stCircle
  end
  object scrollBarHorizantal: TScrollBar
    Left = 8
    Top = 416
    Width = 617
    Height = 17
    LargeChange = 10
    Max = 610
    Min = 10
    PageSize = 0
    Position = 10
    TabOrder = 0
    OnChange = scrollBarHorizantalChange
  end
  object scrollBarVertical: TScrollBar
    Left = 616
    Top = 16
    Width = 17
    Height = 401
    Kind = sbVertical
    LargeChange = 10
    PageSize = 0
    TabOrder = 1
    OnChange = scrollBarVerticalChange
  end
  object buttonSair: TButton
    Left = 648
    Top = 16
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 2
  end
end
