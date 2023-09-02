unit Unit_ANIMAIS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TForm1 = class(TForm)
    DataSource_ANIMAIS: TDataSource;
    Table_ANIMAIS: TTable;
    Table_ANIMAISNAME: TStringField;
    Table_ANIMAISSIZE: TSmallintField;
    Table_ANIMAISWEIGHT: TSmallintField;
    Table_ANIMAISAREA: TStringField;
    Table_ANIMAISBMP: TBlobField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBImage1: TDBImage;
    DBNavigator1: TDBNavigator;
    DataSource_BIOLIFE: TDataSource;
    Table_BIOLIFE: TTable;
    Table_BIOLIFESpeciesNo: TFloatField;
    Table_BIOLIFECategory: TStringField;
    Table_BIOLIFECommon_Name: TStringField;
    Table_BIOLIFESpeciesName: TStringField;
    Table_BIOLIFELengthcm: TFloatField;
    Table_BIOLIFELength_In: TFloatField;
    Table_BIOLIFENotes: TMemoField;
    Table_BIOLIFEGraphic: TGraphicField;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBMemo1: TDBMemo;
    Label13: TLabel;
    DBImage2: TDBImage;
    DBNavigator2: TDBNavigator;
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}





