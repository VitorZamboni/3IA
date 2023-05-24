object FormNotas: TFormNotas
  Left = 194
  Top = 124
  Width = 979
  Height = 563
  Caption = 'Media Calculator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 34
    Height = 13
    Caption = '1'#176' nota'
  end
  object Label2: TLabel
    Left = 40
    Top = 56
    Width = 34
    Height = 13
    Caption = '2'#176' nota'
  end
  object Label3: TLabel
    Left = 40
    Top = 96
    Width = 34
    Height = 13
    Caption = '3'#176' nota'
  end
  object Label4: TLabel
    Left = 40
    Top = 136
    Width = 34
    Height = 13
    Caption = '4'#176' nota'
  end
  object Label5: TLabel
    Left = 88
    Top = 216
    Width = 29
    Height = 13
    Caption = 'Media'
  end
  object LabelMedia: TLabel
    Left = 128
    Top = 216
    Width = 3
    Height = 13
  end
  object LabelStatus: TLabel
    Left = 88
    Top = 240
    Width = 56
    Height = 13
    Caption = 'LabelStatus'
  end
  object EditNota1: TEdit
    Left = 88
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EditNota2: TEdit
    Left = 88
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EditNota3: TEdit
    Left = 88
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EditNota4: TEdit
    Left = 88
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ButtonMedia: TBitBtn
    Left = 40
    Top = 176
    Width = 75
    Height = 25
    Caption = ' Calcular'
    TabOrder = 4
    OnClick = ButtonMediaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
      73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
      0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
      0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
      0333337F777777737F333308888888880333337F333333337F33330888888888
      03333373FFFFFFFF733333700000000073333337777777773333}
    NumGlyphs = 2
  end
  object ButtonClean: TBitBtn
    Left = 128
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 5
    OnClick = ButtonCleanClick
  end
  object ButtonClose: TBitBtn
    Left = 216
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 6
    OnClick = ButtonCloseClick
  end
end
