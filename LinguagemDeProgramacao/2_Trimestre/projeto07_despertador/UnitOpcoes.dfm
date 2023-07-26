object FormOpcoes: TFormOpcoes
  Left = 198
  Top = 124
  Width = 979
  Height = 563
  Caption = 'Op'#231#245'es'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelAlarme: TLabel
    Left = 80
    Top = 48
    Width = 67
    Height = 29
    Caption = '&Alarme:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object MaskEditAlarme: TMaskEdit
    Left = 80
    Top = 88
    Width = 57
    Height = 37
    EditMask = '!90:00;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial Narrow'
    Font.Style = []
    MaxLength = 5
    ParentFont = False
    TabOrder = 0
    Text = '  :  '
    OnChange = MaskEditAlarmeChange
  end
  object RadioGroupAlarme: TRadioGroup
    Left = 80
    Top = 144
    Width = 185
    Height = 137
    Enabled = False
    ItemIndex = 1
    Items.Strings = (
      '&Ligado'
      '&Desligado')
    TabOrder = 1
    OnClick = RadioGroupAlarmeClick
  end
  object GroupBoxEfeitos: TGroupBox
    Left = 304
    Top = 144
    Width = 185
    Height = 137
    Caption = 'Efeitos'
    TabOrder = 2
    object CheckBoxNegrito: TCheckBox
      Left = 16
      Top = 32
      Width = 97
      Height = 17
      Caption = '&Negrito'
      TabOrder = 0
    end
    object CheckBoxItalico: TCheckBox
      Left = 16
      Top = 64
      Width = 97
      Height = 17
      Caption = '&It'#225'lico'
      TabOrder = 1
    end
    object CheckBoxSublinhado: TCheckBox
      Left = 16
      Top = 96
      Width = 97
      Height = 17
      Caption = '&Sublinhado'
      TabOrder = 2
    end
  end
  object ButtonOk: TButton
    Left = 192
    Top = 320
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = ButtonOkClick
  end
  object ButtonCancela: TButton
    Left = 80
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = ButtonCancelaClick
  end
end
