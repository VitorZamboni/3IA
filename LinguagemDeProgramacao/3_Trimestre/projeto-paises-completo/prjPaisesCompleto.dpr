program prjPaisesCompleto;

uses
  Forms,
  uPaisesCompleto in 'uPaisesCompleto.pas' {FormPaises};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPaises, FormPaises);
  Application.Run;
end.
