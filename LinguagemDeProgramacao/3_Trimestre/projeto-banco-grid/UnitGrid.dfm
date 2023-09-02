object Form1: TForm1
  Left = 192
  Top = 124
  Width = 1184
  Height = 705
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 24
    Width = 937
    Height = 593
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 616
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = Table_BIOLIFE
    Left = 8
  end
  object Table_BIOLIFE: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    TableName = 'biolife.db'
    Left = 40
    object Table_BIOLIFESpeciesNo: TFloatField
      FieldName = 'Species No'
    end
    object Table_BIOLIFECategory: TStringField
      FieldName = 'Category'
      Size = 15
    end
    object Table_BIOLIFECommon_Name: TStringField
      FieldName = 'Common_Name'
      Size = 30
    end
    object Table_BIOLIFESpeciesName: TStringField
      FieldName = 'Species Name'
      Size = 40
    end
    object Table_BIOLIFELengthcm: TFloatField
      FieldName = 'Length (cm)'
    end
    object Table_BIOLIFELength_In: TFloatField
      FieldName = 'Length_In'
    end
    object Table_BIOLIFENotes: TMemoField
      FieldName = 'Notes'
      BlobType = ftMemo
      Size = 50
    end
    object Table_BIOLIFEGraphic: TGraphicField
      FieldName = 'Graphic'
      BlobType = ftGraphic
    end
  end
end
