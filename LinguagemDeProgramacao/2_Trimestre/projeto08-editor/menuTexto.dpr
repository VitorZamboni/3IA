program menuTexto;

uses
  Forms,
  menu in 'menu.pas' {Form1},
  Unit1 in 'Unit1.pas' {AboutBox};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.Run;
end.
