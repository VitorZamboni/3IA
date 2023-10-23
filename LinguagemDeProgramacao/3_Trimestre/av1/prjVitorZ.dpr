program prjVitorZ;

uses
  Forms,
  uVitorZ in 'uVitorZ.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
