program prjDbDemos;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {FormPrincipal},
  uVendas in 'uVendas.pas' {FormVendas},
  uClientes in 'uClientes.pas' {FormClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormVendas, FormVendas);
  Application.CreateForm(TFormClientes, FormClientes);
  Application.Run;
end.
