program ProjectTabuada;

uses
  Forms,
  UnitTabuada in 'UnitTabuada.pas' {FormTabuada};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormTabuada, FormTabuada);
  Application.Run;
end.
