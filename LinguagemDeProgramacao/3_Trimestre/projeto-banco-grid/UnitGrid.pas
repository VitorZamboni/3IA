unit UnitGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, ExtCtrls, DBCtrls;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    Table_BIOLIFE: TTable;
    Table_BIOLIFESpeciesNo: TFloatField;
    Table_BIOLIFECategory: TStringField;
    Table_BIOLIFECommon_Name: TStringField;
    Table_BIOLIFESpeciesName: TStringField;
    Table_BIOLIFELengthcm: TFloatField;
    Table_BIOLIFELength_In: TFloatField;
    Table_BIOLIFENotes: TMemoField;
    Table_BIOLIFEGraphic: TGraphicField;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
