program ProjectNotas;

uses
  Forms,
  UnitNotas in 'UnitNotas.pas' {FormNotas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormNotas, FormNotas);
  Application.Run;
end.
