unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Sales1: TMenuItem;
    Customers1: TMenuItem;
    Image1: TImage;
    Label1: TLabel;
    procedure Sales1Click(Sender: TObject);
    procedure Customers1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses uVendas, uClientes;

{$R *.dfm}

procedure TFormPrincipal.Sales1Click(Sender: TObject);
begin
  FormVendas.ShowModal;
end;

procedure TFormPrincipal.Customers1Click(Sender: TObject);
begin
  FormClientes.ShowModal;
end;

end.
