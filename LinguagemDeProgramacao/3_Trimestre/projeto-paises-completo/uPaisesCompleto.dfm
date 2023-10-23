object Form1: TForm1
  Left = 191
  Top = 119
  Width = 980
  Height = 672
  Caption = 'Sistema Paises Completo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BevelBarraTopo: TBevel
    Left = 0
    Top = 0
    Width = 964
    Height = 50
    Align = alTop
    Shape = bsTopLine
  end
  object BevelBarraBase: TBevel
    Left = 0
    Top = 144
    Width = 921
    Height = 321
    Shape = bsBottomLine
  end
  object BevelNavigator: TBevel
    Left = 8
    Top = 472
    Width = 937
    Height = 50
  end
  object DBNavigator1: TDBNavigator
    Left = 336
    Top = 488
    Width = 240
    Height = 25
    DataSource = DataSourceCountry
    TabOrder = 0
  end
  object PanelBarra: TPanel
    Left = 0
    Top = 50
    Width = 964
    Height = 79
    Align = alTop
    TabOrder = 1
    object SpeedButtonNovo: TSpeedButton
      Left = 8
      Top = 8
      Width = 65
      Height = 65
      Hint = 'Novo'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton2: TSpeedButton
      Left = 154
      Top = 8
      Width = 65
      Height = 65
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object SpeedButton3: TSpeedButton
      Left = 301
      Top = 8
      Width = 65
      Height = 65
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object SpeedButton4: TSpeedButton
      Left = 448
      Top = 8
      Width = 65
      Height = 65
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
    end
    object SpeedButton5: TSpeedButton
      Left = 594
      Top = 8
      Width = 65
      Height = 65
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
    object SpeedButton6: TSpeedButton
      Left = 741
      Top = 8
      Width = 65
      Height = 65
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
        0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
        0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
        0005555555575FF7777555555555000555555555555577755555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object SpeedButton7: TSpeedButton
      Left = 888
      Top = 8
      Width = 65
      Height = 65
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C8807FF7777777777FF700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object PageControlFichario: TPageControl
    Left = 16
    Top = 144
    Width = 937
    Height = 297
    ActivePage = TabSheetListagem
    TabOrder = 2
    object TabSheetFicha: TTabSheet
      Caption = 'Ficha do Pa'#237's'
      object Label1: TLabel
        Left = 8
        Top = 24
        Width = 28
        Height = 13
        Caption = 'Name'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 8
        Top = 64
        Width = 32
        Height = 13
        Caption = 'Capital'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 8
        Top = 104
        Width = 45
        Height = 13
        Caption = 'Continent'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 8
        Top = 144
        Width = 22
        Height = 13
        Caption = 'Area'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 8
        Top = 184
        Width = 50
        Height = 13
        Caption = 'Population'
        FocusControl = DBEdit5
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 40
        Width = 316
        Height = 21
        DataField = 'Name'
        DataSource = DataSourceCountry
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 80
        Width = 316
        Height = 21
        DataField = 'Capital'
        DataSource = DataSourceCountry
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 120
        Width = 316
        Height = 21
        DataField = 'Continent'
        DataSource = DataSourceCountry
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 8
        Top = 160
        Width = 134
        Height = 21
        DataField = 'Area'
        DataSource = DataSourceCountry
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 8
        Top = 200
        Width = 134
        Height = 21
        DataField = 'Population'
        DataSource = DataSourceCountry
        TabOrder = 4
      end
    end
    object TabSheetListagem: TTabSheet
      Caption = 'Listagem dos Pa'#237'ses'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 929
        Height = 269
        Align = alClient
        DataSource = DataSourceCountry
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object StatusBarStatus: TStatusBar
    Left = 0
    Top = 595
    Width = 964
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object DataSourceCountry: TDataSource
    DataSet = TableCountry
    Left = 904
  end
  object TableCountry: TTable
    Active = True
    OnCalcFields = TableCountryCalcFields
    DatabaseName = 'DBDEMOS'
    TableName = 'country.db'
    Left = 936
    object TableCountryName: TStringField
      FieldName = 'Name'
      Size = 24
    end
    object TableCountryCapital: TStringField
      FieldName = 'Capital'
      Size = 24
    end
    object TableCountryContinent: TStringField
      FieldName = 'Continent'
      Size = 24
    end
    object TableCountryArea: TFloatField
      FieldName = 'Area'
      DisplayFormat = '###,##0'
      EditFormat = '0'
    end
    object TableCountryPopulation: TFloatField
      FieldName = 'Population'
      DisplayFormat = '###,##0'
      EditFormat = '0'
    end
    object TableCountryDensidade: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Densidade'
      DisplayFormat = '#0.00'
      Calculated = True
    end
  end
  object MainMenu1: TMainMenu
    Left = 872
    object Registro1: TMenuItem
      Caption = 'Registro'
      OnClick = Registro1Click
      object Primeiro1: TMenuItem
        Caption = 'Primeiro'
        ShortCut = 16464
        OnClick = Primeiro1Click
      end
      object Anterior1: TMenuItem
        Caption = 'Anterior'
        ShortCut = 16449
        OnClick = Anterior1Click
      end
      object Prximo1: TMenuItem
        Caption = 'Pr'#243'ximo'
        ShortCut = 16466
        OnClick = Prximo1Click
      end
      object ltimo1: TMenuItem
        Caption = #218'ltimo'
        ShortCut = 16469
        OnClick = ltimo1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Novo1: TMenuItem
        Caption = 'Novo'
        ShortCut = 16462
        OnClick = Novo1Click
      end
      object Atualizar1: TMenuItem
        Caption = 'Atualizar'
      end
      object Deletar1: TMenuItem
        Caption = 'Deletar'
      end
      object Cancelar1: TMenuItem
        Caption = 'Cancelar'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Vizualizar1: TMenuItem
      Caption = 'Vizualizar'
      object Ficha1: TMenuItem
        Caption = 'Ficha'
        RadioItem = True
      end
      object Listagem1: TMenuItem
        Caption = 'Listagem'
        Checked = True
        RadioItem = True
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Localizar1: TMenuItem
        Caption = 'Localizar'
      end
    end
  end
end
