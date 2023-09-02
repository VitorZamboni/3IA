object Form1: TForm1
  Left = 192
  Top = 124
  Width = 1156
  Height = 696
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 24
    Width = 28
    Height = 13
    Caption = 'Name'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 64
    Width = 32
    Height = 13
    Caption = 'Capital'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 104
    Width = 45
    Height = 13
    Caption = 'Continent'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 24
    Top = 144
    Width = 22
    Height = 13
    Caption = 'Area'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 24
    Top = 184
    Width = 50
    Height = 13
    Caption = 'Population'
    FocusControl = DBEdit6
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 40
    Width = 316
    Height = 21
    DataField = 'Name'
    DataSource = DataSourcePaises
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 80
    Width = 316
    Height = 21
    DataField = 'Capital'
    DataSource = DataSourcePaises
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 120
    Width = 316
    Height = 21
    DataField = 'Continent'
    DataSource = DataSourcePaises
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 24
    Top = 160
    Width = 134
    Height = 21
    DataField = 'Area'
    DataSource = DataSourcePaises
    TabOrder = 3
  end
  object DBEdit6: TDBEdit
    Left = 24
    Top = 200
    Width = 134
    Height = 21
    DataField = 'Population'
    DataSource = DataSourcePaises
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 232
    Width = 240
    Height = 25
    DataSource = DataSourcePaises
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 416
    Top = 32
    Width = 609
    Height = 329
    DataSource = DataSourcePaises
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Name'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Capital'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Continent'
        Title.Caption = 'Continente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Area'
        Title.Caption = #193'rea'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Population'
        Title.Caption = 'Popula'#231#227'o'
        Visible = True
      end>
  end
  object TablePaises: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    TableName = 'country.db'
    Left = 1112
    Top = 24
    object TablePaisesName: TStringField
      FieldName = 'Name'
      Size = 24
    end
    object TablePaisesCapital: TStringField
      FieldName = 'Capital'
      Size = 24
    end
    object TablePaisesContinent: TStringField
      FieldName = 'Continent'
      Size = 24
    end
    object TablePaisesArea: TFloatField
      FieldName = 'Area'
    end
    object TablePaisesPopulation: TFloatField
      FieldName = 'Population'
    end
  end
  object DataSourcePaises: TDataSource
    DataSet = TablePaises
    Left = 1112
  end
end
