unit uPaisesCompleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, DBCtrls, ComCtrls, DB, DBTables, Menus,
  StdCtrls, Mask, Grids, DBGrids;

type
  TFormPaises = class(TForm)
    BevelBarraTopo: TBevel;
    BevelBarraBase: TBevel;
    BevelNavigator: TBevel;
    DBNavigatorPaises: TDBNavigator;
    PanelBarra: TPanel;
    SpeedButtonNovo: TSpeedButton;
    SpeedButtonAtualiza: TSpeedButton;
    SpeedButtonCancela: TSpeedButton;
    SpeedButtonApaga: TSpeedButton;
    SpeedButtonLocaliza: TSpeedButton;
    SpeedButtonFicha: TSpeedButton;
    SpeedButtonListagem: TSpeedButton;
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
    procedure FormCreate(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure Atualizar1Click(Sender: TObject);
    procedure Deletar1Click(Sender: TObject);
    procedure Ficha1Click(Sender: TObject);
    procedure Listagem1Click(Sender: TObject);
    procedure PageControlFicharioChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure PageControlFicharioChange(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
  private
    { Private declarations }
    Alterado: boolean;
  public
    { Public declarations }
    procedure Desabilita;
    procedure Habilita;
  end;

var
  FormPaises: TFormPaises;

implementation

uses Math;

{$R *.dfm}

procedure TFormPaises.TableCountryCalcFields(DataSet: TDataSet);
begin
  TableCountryDensidade.Value := (TableCountryPopulation.Value / TableCountryArea.Value);  
end;

procedure TFormPaises.Sair1Click(Sender: TObject);
begin
  self.Close;
end;

procedure TFormPaises.Registro1Click(Sender: TObject);
begin
  Primeiro1.Enabled := (not TableCountry.Bof);
  Anterior1.Enabled := (not TableCountry.Bof);
  Prximo1.Enabled := (not TableCountry.Eof);
  ltimo1.Enabled := (not TableCountry.Eof);
end;

procedure TFormPaises.Primeiro1Click(Sender: TObject);
begin
  TableCountry.First;
end;

procedure TFormPaises.Anterior1Click(Sender: TObject);
begin
  TableCountry.Prior;
end;

procedure TFormPaises.Prximo1Click(Sender: TObject);
begin
  TableCountry.Next;
end;

procedure TFormPaises.ltimo1Click(Sender: TObject);
begin
  TableCountry.Last;
end;

procedure TFormPaises.Novo1Click(Sender: TObject);
begin
  TableCountry.Append;
  Alterado := True;
  Desabilita;

end;

procedure TFormPaises.Desabilita;
begin
  if ((TableCountry.State = dsEdit) or
      (TableCountry.State = dsInsert)) then
  begin
    SpeedButtonNovo.Enabled := false;
    Novo1.Enabled := false;
    SpeedButtonApaga.Enabled := false;
    Deletar1.Enabled := false;
    SpeedButtonLocaliza.Enabled := false;
    Localizar1.Enabled := false;
    SpeedButtonFicha.Enabled := false;
    Ficha1.Enabled := false;
    SpeedButtonListagem.Enabled := false;
    Listagem1.Enabled := false;
    DBNavigatorPaises.Enabled := false;

    SpeedButtonAtualiza.Enabled := true;
    Atualizar1.Enabled := true;
    SpeedButtonCancela.Enabled := true;
    Cancelar1.Enabled := true;
  end;
end;

procedure TFormPaises.Habilita;
begin
  SpeedButtonNovo.Enabled := true;
  Novo1.Enabled := true;
  SpeedButtonApaga.Enabled := true;
  Deletar1.Enabled := true;
  SpeedButtonLocaliza.Enabled := true;
  Localizar1.Enabled := true;
  SpeedButtonFicha.Enabled := true;
  Ficha1.Enabled := true;
  SpeedButtonListagem.Enabled := true;
  Listagem1.Enabled := true;
  DBNavigatorPaises.Enabled := true;

  SpeedButtonAtualiza.Enabled := false;
  Atualizar1.Enabled := false;
  SpeedButtonCancela.Enabled := false;
  Cancelar1.Enabled := false;
end;

procedure TFormPaises.FormCreate(Sender: TObject);
begin
  Habilita;
end;

procedure TFormPaises.Cancelar1Click(Sender: TObject);
begin
  TableCountry.Cancel;
  Alterado := false;
  Habilita;
end;

procedure TFormPaises.Atualizar1Click(Sender: TObject);
begin
  TableCountry.Post;
  Alterado := false;
  Habilita;
end;

procedure TFormPaises.Deletar1Click(Sender: TObject);
var
  Resposta: integer;
begin
  Resposta := MessageDlg('Tem certeza que deseja excluir, ' +
              TableCountry.FieldByName('Name').AsString + '?',
              mtWarning,
              [mbYes, mbNo], 0);
  if (Resposta = IDYES) then
  begin
    TableCountry.Delete;
    Alterado := false;
    Habilita;
  end;
end;

procedure TFormPaises.Ficha1Click(Sender: TObject);
begin
  Ficha1.Enabled := true;
  PageControlFichario.ActivePage := TabSheetFicha;
  SpeedButtonFicha.Down := true;
  SpeedButtonNovo.Enabled := true;
  Novo1.Enabled := true;
end;

procedure TFormPaises.Listagem1Click(Sender: TObject);
begin
  Listagem1.Enabled := true;
  PageControlFichario.ActivePage := TabSheetListagem;
  SpeedButtonNovo.Enabled := false;
  Novo1.Enabled := false;
end;

procedure TFormPaises.PageControlFicharioChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
 if (TableCountry.State = dsEdit) or
  (TableCountry.State = dsInsert) then
  AllowChange := false
 else
  AllowChange := true;
end;

procedure TFormPaises.PageControlFicharioChange(Sender: TObject);
begin
  if (PageControlFichario.ActivePage = TabSheetFicha) then
  begin
    Ficha1.Checked := true;
    SpeedButtonFicha.Down := true;
  end
  else
  begin
    Listagem1.Checked := true;
    SpeedButtonListagem.Down := true;
  end
end;

procedure TFormPaises.Localizar1Click(Sender: TObject);
var
  Chave : String;
begin
  Chave := InputBox('Localizar', 'Digite o nome do pa�s', '');
  if Chave <> '' then
  begin
    TableCountry.SetKey;
    if not TableCountry.FindKey([Chave]) then
      begin
        Beep;
        MessageDlg('n�o foi possivel localizar o pais' + #13 + Chave, mtInformation, [mbOK], 0);
      end;
  end;
end;

end.
