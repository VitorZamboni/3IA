program ProjectBolinhas;

uses
  Forms,
  UnitBolinhas in 'UnitBolinhas.pas' {formBolinha};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformBolinha, formBolinha);
  Application.Run;
end.
