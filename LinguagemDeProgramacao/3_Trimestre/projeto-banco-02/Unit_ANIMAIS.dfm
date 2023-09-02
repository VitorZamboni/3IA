object Form1: TForm1
  Left = 192
  Top = 124
  Width = 979
  Height = 679
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
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 31
    Height = 13
    Caption = 'NAME'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 24
    Height = 13
    Caption = 'SIZE'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 112
    Width = 44
    Height = 13
    Caption = 'WEIGHT'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 152
    Width = 29
    Height = 13
    Caption = 'AREA'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 24
    Top = 192
    Width = 23
    Height = 13
    Caption = 'BMP'
    FocusControl = DBImage1
  end
  object Label6: TLabel
    Left = 376
    Top = 32
    Width = 55
    Height = 13
    Caption = 'Species No'
    FocusControl = DBEdit5
  end
  object Label7: TLabel
    Left = 376
    Top = 72
    Width = 42
    Height = 13
    Caption = 'Category'
    FocusControl = DBEdit6
  end
  object Label8: TLabel
    Left = 376
    Top = 112
    Width = 75
    Height = 13
    Caption = 'Common_Name'
    FocusControl = DBEdit7
  end
  object Label9: TLabel
    Left = 376
    Top = 152
    Width = 69
    Height = 13
    Caption = 'Species Name'
    FocusControl = DBEdit8
  end
  object Label10: TLabel
    Left = 376
    Top = 192
    Width = 56
    Height = 13
    Caption = 'Length (cm)'
    FocusControl = DBEdit9
  end
  object Label11: TLabel
    Left = 376
    Top = 232
    Width = 48
    Height = 13
    Caption = 'Length_In'
    FocusControl = DBEdit10
  end
  object Label12: TLabel
    Left = 376
    Top = 272
    Width = 28
    Height = 13
    Caption = 'Notes'
    FocusControl = DBMemo1
  end
  object Label13: TLabel
    Left = 376
    Top = 384
    Width = 37
    Height = 13
    Caption = 'Graphic'
    FocusControl = DBImage2
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 48
    Width = 134
    Height = 21
    DataField = 'NAME'
    DataSource = DataSource_ANIMAIS
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 88
    Width = 134
    Height = 21
    DataField = 'SIZE'
    DataSource = DataSource_ANIMAIS
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 128
    Width = 134
    Height = 21
    DataField = 'WEIGHT'
    DataSource = DataSource_ANIMAIS
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 168
    Width = 264
    Height = 21
    DataField = 'AREA'
    DataSource = DataSource_ANIMAIS
    TabOrder = 3
  end
  object DBImage1: TDBImage
    Left = 24
    Top = 208
    Width = 209
    Height = 185
    DataField = 'BMP'
    DataSource = DataSource_ANIMAIS
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 400
    Width = 240
    Height = 25
    DataSource = DataSource_ANIMAIS
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 376
    Top = 48
    Width = 134
    Height = 21
    DataField = 'Species No'
    DataSource = DataSource_BIOLIFE
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 376
    Top = 88
    Width = 199
    Height = 21
    DataField = 'Category'
    DataSource = DataSource_BIOLIFE
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 376
    Top = 128
    Width = 394
    Height = 21
    DataField = 'Common_Name'
    DataSource = DataSource_BIOLIFE
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 376
    Top = 168
    Width = 524
    Height = 21
    DataField = 'Species Name'
    DataSource = DataSource_BIOLIFE
    TabOrder = 9
  end
  object DBEdit9: TDBEdit
    Left = 376
    Top = 208
    Width = 134
    Height = 21
    DataField = 'Length (cm)'
    DataSource = DataSource_BIOLIFE
    TabOrder = 10
  end
  object DBEdit10: TDBEdit
    Left = 376
    Top = 248
    Width = 134
    Height = 21
    DataField = 'Length_In'
    DataSource = DataSource_BIOLIFE
    TabOrder = 11
  end
  object DBMemo1: TDBMemo
    Left = 376
    Top = 288
    Width = 185
    Height = 89
    DataField = 'Notes'
    DataSource = DataSource_BIOLIFE
    TabOrder = 12
  end
  object DBImage2: TDBImage
    Left = 376
    Top = 400
    Width = 273
    Height = 225
    DataField = 'Graphic'
    DataSource = DataSource_BIOLIFE
    TabOrder = 13
  end
  object DBNavigator2: TDBNavigator
    Left = 664
    Top = 568
    Width = 240
    Height = 25
    DataSource = DataSource_BIOLIFE
    TabOrder = 14
    OnClick = DBNavigator2Click
  end
  object DataSource_ANIMAIS: TDataSource
    DataSet = Table_ANIMAIS
    Left = 24
  end
  object Table_ANIMAIS: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    TableName = 'animals.dbf'
    Left = 64
    object Table_ANIMAISNAME: TStringField
      FieldName = 'NAME'
      Size = 10
    end
    object Table_ANIMAISSIZE: TSmallintField
      FieldName = 'SIZE'
    end
    object Table_ANIMAISWEIGHT: TSmallintField
      FieldName = 'WEIGHT'
    end
    object Table_ANIMAISAREA: TStringField
      FieldName = 'AREA'
    end
    object Table_ANIMAISBMP: TBlobField
      FieldName = 'BMP'
      BlobType = ftTypedBinary
      Size = 1
    end
  end
  object DataSource_BIOLIFE: TDataSource
    DataSet = Table_BIOLIFE
    Left = 376
  end
  object Table_BIOLIFE: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    TableName = 'biolife.db'
    Left = 416
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
