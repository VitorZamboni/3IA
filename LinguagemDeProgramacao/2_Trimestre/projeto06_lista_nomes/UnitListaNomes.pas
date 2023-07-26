unit UnitListaNomes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TFormNome = class(TForm)
    Label1: TLabel;
    EditNome: TEdit;
    ButtonAdd: TButton;
    ButtonRemover: TButton;
    ListBoxNomes: TListBox;
    Label2: TLabel;
    SpeedButtonBaixo: TSpeedButton;
    SpeedButtonCima: TSpeedButton;
    procedure EditNomeChange(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure ListBoxNomesClick(Sender: TObject);
    procedure ButtonRemoverClick(Sender: TObject);
    procedure SpeedButtonCimaClick(Sender: TObject);
    procedure SpeedButtonBaixoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNome: TFormNome;

implementation

{$R *.dfm}

procedure TFormNome.EditNomeChange(Sender: TObject);
begin
  if (EditNome.Text <> '') then
    ButtonAdd.Enabled := True
  else
    ButtonAdd.Enabled := False;
end;

procedure TFormNome.ButtonAddClick(Sender: TObject);
begin
  ListBoxNomes.Items.Add(EditNome.Text);
  EditNome.Text := '';
  EditNome.SetFocus;
end;

procedure TFormNome.ListBoxNomesClick(Sender: TObject);
begin
    if (ListBoxNomes.ItemIndex <> -1) then
    begin
      ButtonRemover.Enabled:= true;
      SpeedButtonCima.Enabled:=(ListBoxNomes.ItemIndex <> 0);
      SpeedButtonBaixo.Enabled:=(ListBoxNomes.ItemIndex <> ListBoxNomes.Count - 1);
    end
    else
    begin
      ButtonRemover.Enabled:=false;
      SpeedButtonCima.Enabled:=false;
      SpeedButtonBaixo.Enabled:=false;
    end;
end;

procedure TFormNome.ButtonRemoverClick(Sender: TObject);
begin
  EditNome.Text:=ListBoxNomes.Items.Strings[ListBoxNomes.ItemIndex];
  ListBoxNomes.Items.Delete(ListBoxNomes.ItemIndex);
  ButtonRemover.Enabled:=false;
  SpeedButtonBaixo.Enabled:=false;
  SpeedButtonCima.Enabled:=false;
end;

procedure TFormNome.SpeedButtonCimaClick(Sender: TObject);
var
  PosisaoAtual : integer;
begin
  PosisaoAtual := ListBoxNomes.ItemIndex;
  ListBoxNomes.Items.Move(PosisaoAtual, PosisaoAtual -1);
  ListBoxNomes.ItemIndex := PosisaoAtual -1;
  ListBoxNomesClick(ListBoxNomes);
end;

procedure TFormNome.SpeedButtonBaixoClick(Sender: TObject);
var
  PosisaoAtual : integer;
begin
  PosisaoAtual := ListBoxNomes.ItemIndex;
  ListBoxNomes.Items.Move(PosisaoAtual, PosisaoAtual +1);
  ListBoxNomes.ItemIndex := PosisaoAtual +1;
  ListBoxNomesClick(ListBoxNomes);
end;

procedure TFormNome.FormCreate(Sender: TObject);
begin
  FormNome.Top := (Screen.Height - FormNome.Height) div 2;
  FormNome.Left := (Screen.Width - FormNome.Width) div 2;
end;

end.
