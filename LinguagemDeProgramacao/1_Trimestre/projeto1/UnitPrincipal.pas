unit UnitPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormPrincipal = class(TForm)
    ButtonEscrever: TButton;
    EditNome: TEdit;
    ButtonApagar: TButton;
    procedure ButtonEscreverClick(Sender: TObject);
    procedure ButtonApagarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.ButtonEscreverClick(Sender: TObject);
begin
 EditNome.Text := 'Ola Mundo';
end;

procedure TFormPrincipal.ButtonApagarClick(Sender: TObject);
begin
EditNome.Text := '';
end;

end.

