program Project_ANIMAIS;

uses
  Forms,
  Unit_ANIMAIS in 'Unit_ANIMAIS.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
