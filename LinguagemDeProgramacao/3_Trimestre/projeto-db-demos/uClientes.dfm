object FormClientes: TFormClientes
  Left = 192
  Top = 124
  Width = 1251
  Height = 563
  Caption = 'tabela de clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 8
    Width = 1201
    Height = 273
    DataSource = DataSourceClientes
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 1152
    Top = 488
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 288
    Width = 240
    Height = 25
    DataSource = DataSourceClientes
    TabOrder = 2
  end
  object DataSourceClientes: TDataSource
    DataSet = TableClientes
    Top = 496
  end
  object TableClientes: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    TableName = 'customer.db'
    Left = 24
    Top = 496
  end
end
