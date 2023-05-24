program ProjectFiguraGeometrica;

uses
  QForms,
  UnitPrincipal in 'UnitPrincipal.pas' {formFiguraGeometrica};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformFiguraGeometrica, formFiguraGeometrica);
  Application.Run;
end.
