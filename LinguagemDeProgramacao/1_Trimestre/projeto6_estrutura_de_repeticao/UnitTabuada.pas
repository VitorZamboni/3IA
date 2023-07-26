unit UnitTabuada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFormTabuada = class(TForm)
    Label1: TLabel;
    EditTabuada: TEdit;
    UpDownTabuada: TUpDown;
    ListBoxFor: TListBox;
    ListBoxWhile: TListBox;
    ListBoxRepeat: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ButtonCalcula: TButton;
    ButtonFechar: TButton;
    procedure ButtonFecharClick(Sender: TObject);
    procedure ButtonCalculaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTabuada: TFormTabuada;

implementation

{$R *.dfm}

procedure TFormTabuada.ButtonFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormTabuada.ButtonCalculaClick(Sender: TObject);
var
  i, resultado : Integer;
begin
  ListBoxRepeat.Items.Clear;
  ListBoxWhile.Items.Clear;
  ListBoxFor.Items.Clear;

  for i:= 1 to 10 do
  begin
    resultado := i * StrToInt(EditTabuada.Text);
    ListBoxFor.Items.Add(EditTabuada.Text +' x '+IntToStr(i)+' = '+ IntToStr(resultado));
  end;
  i:=1;
  while i<= 10 do
  begin
    resultado := i * StrToInt(EditTabuada.Text);
    ListBoxWhile.Items.Add(EditTabuada.Text +' x '+IntToStr(i)+' = '+ IntToStr(resultado));
    i := i + 1;
  end;
  i:=1;

  repeat
    resultado := i * StrToInt(EditTabuada.Text);
    ListBoxRepeat.Items.Add(EditTabuada.Text +' x '+IntToStr(i)+' = '+ IntToStr(resultado));
    i := i + 1;
  until(i>10);
end;

end.
