program ProjectLetras;

uses
  Forms,
  UnitLetras in 'UnitLetras.pas' {FormLetras};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormLetras, FormLetras);
  Application.Run;
end.
