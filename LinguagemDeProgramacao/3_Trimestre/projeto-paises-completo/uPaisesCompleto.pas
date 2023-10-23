unit uPaisesCompleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, DBCtrls, ComCtrls, DB, DBTables, Menus,
  StdCtrls, Mask, Grids, DBGrids;

type
  TForm1 = class(TForm)
    BevelBarraTopo: TBevel;
    BevelBarraBase: TBevel;
    BevelNavigator: TBevel;
    DBNavigator1: TDBNavigator;
    PanelBarra: TPanel;
    SpeedButtonNovo: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DataSourceCountry: TDataSource;
    TableCountry: TTable;
    PageControlFichario: TPageControl;
    TabSheetFicha: TTabSheet;
    TabSheetListagem: TTabSheet;
    MainMenu1: TMainMenu;
    Registro1: TMenuItem;
    Vizualizar1: TMenuItem;
    Primeiro1: TMenuItem;
    Anterior1: TMenuItem;
    Prximo1: TMenuItem;
    ltimo1: TMenuItem;
    N1: TMenuItem;
    Novo1: TMenuItem;
    Atualizar1: TMenuItem;
    Cancelar1: TMenuItem;
    Deletar1: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    Ficha1: TMenuItem;
    Listagem1: TMenuItem;
    N3: TMenuItem;
    Localizar1: TMenuItem;
    TableCountryName: TStringField;
    TableCountryCapital: TStringField;
    TableCountryContinent: TStringField;
    TableCountryArea: TFloatField;
    TableCountryPopulation: TFloatField;
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
    StatusBarStatus: TStatusBar;
    TableCountryDensidade: TFloatField;
    DBGrid1: TDBGrid;
    procedure TableCountryCalcFields(DataSet: TDataSet);
    procedure Sair1Click(Sender: TObject);
    procedure Registro1Click(Sender: TObject);
    procedure Primeiro1Click(Sender: TObject);
    procedure Anterior1Click(Sender: TObject);
    procedure Prximo1Click(Sender: TObject);
    procedure ltimo1Click(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
  private
    { Private declarations }
    Alterado: boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Math;

{$R *.dfm}

procedure TForm1.TableCountryCalcFields(DataSet: TDataSet);
begin
  TableCountryDensidade.Value := (TableCountryPopulation.Value / TableCountryArea.Value);  
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
  self.Close;
end;

procedure TForm1.Registro1Click(Sender: TObject);
begin
  Primeiro1.Enabled := (not TableCountry.Bof);
  Anterior1.Enabled := (not TableCountry.Bof);
  Prximo1.Enabled := (not TableCountry.Eof);
  ltimo1.Enabled := (not TableCountry.Eof);
end;

procedure TForm1.Primeiro1Click(Sender: TObject);
begin
  TableCountry.First;
end;

procedure TForm1.Anterior1Click(Sender: TObject);
begin
  TableCountry.Prior;
end;

procedure TForm1.Prximo1Click(Sender: TObject);
begin
  TableCountry.Next;
end;

procedure TForm1.ltimo1Click(Sender: TObject);
begin
  TableCountry.Last;
end;

procedure TForm1.Novo1Click(Sender: TObject);
begin
  TableCountry.Append;
  Alterado := True;
end;

end.
