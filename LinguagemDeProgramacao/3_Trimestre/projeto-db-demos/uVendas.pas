unit uVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons;

type
  TFormVendas = class(TForm)
    TableVendas: TTable;
    DataSourceVendas: TDataSource;
    TableVendasVendorNo: TFloatField;
    TableVendasVendorName: TStringField;
    TableVendasAddress1: TStringField;
    TableVendasAddress2: TStringField;
    TableVendasCity: TStringField;
    TableVendasState: TStringField;
    TableVendasZip: TStringField;
    TableVendasCountry: TStringField;
    TableVendasPhone: TStringField;
    TableVendasFAX: TStringField;
    TableVendasPreferred: TBooleanField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendas: TFormVendas;

implementation

{$R *.dfm}

procedure TFormVendas.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.
