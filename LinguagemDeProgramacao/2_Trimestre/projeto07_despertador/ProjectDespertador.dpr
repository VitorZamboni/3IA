program ProjectDespertador;

uses
  Forms,
  UnitDespertador in 'UnitDespertador.pas' {FormRelogio},
  UnitOpcoes in 'UnitOpcoes.pas' {FormOpcoes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormRelogio, FormRelogio);
  Application.CreateForm(TFormOpcoes, FormOpcoes);
  Application.Run;
end.
