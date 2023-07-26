object FormRelogio: TFormRelogio
  Left = 196
  Top = 124
  Width = 761
  Height = 263
  Caption = 'Rel'#243'gio'
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
  object BevelHora: TBevel
    Left = 48
    Top = 16
    Width = 473
    Height = 161
  end
  object LabelHora: TLabel
    Left = 64
    Top = 72
    Width = 10
    Height = 44
    Alignment = taCenter
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ImageDesperta: TImage
    Left = 544
    Top = 16
    Width = 129
    Height = 161
    Picture.Data = {
      07544269746D617076010000424D760100000000000076000000280000002000
      000010000000010004000000000000010000120B0000120B0000100000000000
      0000000000000000800000800000008080008000000080008000808000007F7F
      7F00BFBFBF000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF0030013000003100333773F77777FF7733331000909000133333377737F777
      FF33330098F0F8900333337733F733F77F33370980FFF08907333373373F3733
      73F33099FFFFFFF9903337F3F373F33FF7F33090F000FF00903337F73337F377
      37F3B099FFF0FFF990B3373F33F7F3F33733070980F0F0890703337FF737F733
      7F33BB0098F0F8900BB33F77FF3733377FFF000009999900000377777FFFFF77
      777F08870000000877037F3377777773337F088887707888870373F3337773F3
      3373B078800B008870B3373FF733373FF73303700BBBBB007303337773F3F377
      7F33330BB0B0B0BB033333733737F73F73F330BB03B0B30BB033373373373373
      3733}
    Visible = False
  end
  object ButtonFechar: TButton
    Left = 48
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = ButtonFecharClick
  end
  object ButtonOpcoes: TButton
    Left = 144
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Op'#231#245'es'
    TabOrder = 1
    OnClick = ButtonOpcoesClick
  end
  object Timer: TTimer
    OnTimer = TimerTimer
  end
end
