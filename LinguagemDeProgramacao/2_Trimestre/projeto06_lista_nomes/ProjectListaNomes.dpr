program ProjectListaNomes;

uses
  Forms,
  UnitListaNomes in 'UnitListaNomes.pas' {FormNome};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormNome, FormNome);
  Application.Run;
end.
