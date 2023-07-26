unit menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Menus, ClipBrd;

type
  TForm1 = class(TForm)
    memTexto: TMemo;
    stbStatus: TStatusBar;
    sdgSalvarComo: TSaveDialog;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Novo1: TMenuItem;
    Abrir1: TMenuItem;
    Salvar1: TMenuItem;
    SalvarComo1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Editar1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    N2: TMenuItem;
    SelecionarTudo1: TMenuItem;
    N3: TMenuItem;
    ExibirLinhadeStatus1: TMenuItem;
    Caracter1: TMenuItem;
    Negrito1: TMenuItem;
    Itlico1: TMenuItem;
    Sublinhado1: TMenuItem;
    N4: TMenuItem;
    Fonte1: TMenuItem;
    Arial1: TMenuItem;
    Courier1: TMenuItem;
    amanho1: TMenuItem;
    N101: TMenuItem;
    N121: TMenuItem;
    N141: TMenuItem;
    N161: TMenuItem;
    N201: TMenuItem;
    N251: TMenuItem;
    Ajuda1: TMenuItem;
    odgAbrir: TOpenDialog;
    procedure Sair1Click(Sender: TObject);
    procedure Negrito1Click(Sender: TObject);
    procedure Itlico1Click(Sender: TObject);
    procedure Sublinhado1Click(Sender: TObject);
    procedure Arial1Click(Sender: TObject);
    procedure Courier1Click(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure N121Click(Sender: TObject);
    procedure N141Click(Sender: TObject);
    procedure N161Click(Sender: TObject);
    procedure N201Click(Sender: TObject);
    procedure N251Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Recortar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure memTextoChange(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure SelecionarTudo1Click(Sender: TObject);
    procedure ExibirLinhadeStatus1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Ajuda1Click(Sender: TObject);
  private
    { Private declarations }
    Arquivo: String;
    Alterado: boolean;
  public
    { Public declarations }
    function Salvar: Boolean;
    function SalvarComo: Boolean;
    function SalvarAlteracoes: Boolean;
  end;

var
  Form1: TForm1;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm1.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Negrito1Click(Sender: TObject);
begin
  Negrito1.Checked := not Negrito1.Checked;
  if(Negrito1.Checked) then
  begin
      memTexto.Font.Style := memTexto.Font.Style + [fsBold];
  end
  else
  begin
    memTexto.Font.Style := memTexto.Font.Style - [fsBold];
  end;
end;

procedure TForm1.Itlico1Click(Sender: TObject);
begin
  Itlico1.Checked := not Itlico1.Checked;
  if(Itlico1.Checked) then
  begin
      memTexto.Font.Style := memTexto.Font.Style + [fsItalic];
  end
  else
  begin
    memTexto.Font.Style := memTexto.Font.Style - [fsItalic];
  end;
end;

procedure TForm1.Sublinhado1Click(Sender: TObject);
begin
  Sublinhado1.Checked := not Sublinhado1.Checked;
  if(Sublinhado1.Checked) then
  begin
      memTexto.Font.Style := memTexto.Font.Style + [fsUnderline];
  end
  else
  begin
    memTexto.Font.Style := memTexto.Font.Style - [fsUnderline];
  end;
end;

procedure TForm1.Arial1Click(Sender: TObject);
begin
   Arial1.Checked := true;
   memTexto.Font.Name := 'Arial';
end;

procedure TForm1.Courier1Click(Sender: TObject);
begin
  Courier1.Checked := true;
  memTexto.Font.Name := 'Courier';
end;

procedure TForm1.N101Click(Sender: TObject);
begin
  N101.Checked := true;
  memTexto.Font.Size := 10;
end;

procedure TForm1.N121Click(Sender: TObject);
begin
  N121.Checked := true;
  memTexto.Font.Size := 12;
end;

procedure TForm1.N141Click(Sender: TObject);
begin
  N141.Checked := true;
  memTexto.Font.Size := 14;
end ;

procedure TForm1.N161Click(Sender: TObject);
begin
  N161.Checked := true;
  memTexto.Font.Size := 16;
end;

procedure TForm1.N201Click(Sender: TObject);
begin
  N201.Checked := true;
  memTexto.Font.Size := 20;
end;

procedure TForm1.N251Click(Sender: TObject);
begin
  N251.Checked := true;
  memTexto.Font.Size := 25;
end;

procedure TForm1.Editar1Click(Sender: TObject);
begin
  if(memTexto.SelLength > 0) then
  begin
      Copiar1.Enabled:=true;
      Recortar1.Enabled:=true;
  end
  else
  begin
      Copiar1.Enabled:=false;
      Recortar1.Enabled:=false;
  end;
  if (Clipboard.HasFormat(CF_TEXT)) then
  begin
    Colar1.Enabled:=true;
  end
  else
  begin
    Colar1.Enabled:=false;
  end;
end;

procedure TForm1.Recortar1Click(Sender: TObject);
begin
  memTexto.CutToClipboard;
end;

procedure TForm1.Copiar1Click(Sender: TObject);
begin
  memTexto.CopyToClipboard;
end;

procedure TForm1.Colar1Click(Sender: TObject);
begin
  memTexto.PasteFromClipboard;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Alterado:=false;
  Arquivo:='Sem Nome';
end;

procedure TForm1.memTextoChange(Sender: TObject);
begin
  alterado:=true;
  stbStatus.SimpleText:= 'O texto foi alterado';
end;

function TForm1.Salvar: Boolean;
begin
  if Arquivo = 'Sem Nome' then
  begin  salvar:=SalvarComo;
  end
  else
  begin
    Alterado:=false;
    stbStatus.SimpleText:='O texto não foi alterado';
    memTexto.Lines.SaveToFile(Arquivo);
   Salvar:=true;
  end;

end;

function TForm1.SalvarAlteracoes:Boolean;
var
  Resposta:Integer;
begin
  SalvarAlteracoes:= true;
  Resposta:= MessageDlg(
   'O texto do arquivo '+ Arquivo +' foi alterado.' + #13#13 + 'Deseja salvar alterações',
    mtWarning,
    mbYesNoCancel, 0
  );
  if(Resposta = IDYES) then
    SalvarAlteracoes:= Salvar;
  if(Resposta = IDCANCEL) then
    SalvarAlteracoes:=false;
end;

function TForm1.SalvarComo: Boolean;
begin
  sdgSalvarComo.FileName:=Arquivo;
  if (sdgSalvarComo.Execute) then
  begin    Arquivo:=sdgSalvarComo.FileName;
    memTexto.Lines.SaveToFile(Arquivo);
    Alterado:=false;
    stbStatus.SimpleText:='O texto foi alterado';
    Form1.Caption:='Minhas anotações - '+ Arquivo;
    SalvarComo:=true;
  end
  else
    SalvarComo:=false;
end;

procedure TForm1.Salvar1Click(Sender: TObject);
begin
  SalvarComo;
end;

procedure TForm1.Novo1Click(Sender: TObject);
begin
  if not Alterado or SalvarAlteracoes then
  begin
    memTexto.Text:='';
    Alterado:=false;
    stbStatus.SimpleText:='O texto não foi alterado';
    Arquivo:='Sem nome';
    Form1.Caption:='Minhas Anotações - Sem Nome';
  end;
end;

procedure TForm1.Abrir1Click(Sender: TObject);
begin
  if not alterado or SalvarAlteracoes then
    if odgAbrir.Execute then
    begin
      Arquivo:=odgAbrir.FileName;
      if FileExists(Arquivo) then
      begin
        memTexto.Lines.LoadFromFile(Arquivo);
        Alterado:=false;
        stbStatus.SimpleText:='O texto não foi alterado';
        Form1.Caption:='Minhas anotações - '+Arquivo;
      end;
    end
    else
    begin
      ShowMessage('Arquivo não existe');
    end;
end;

procedure TForm1.SelecionarTudo1Click(Sender: TObject);
begin
  memTexto.SelectAll;
  
end;

procedure TForm1.ExibirLinhadeStatus1Click(Sender: TObject);
begin
   if stbStatus.Visible then
   begin
    stbStatus.Visible := false;
    ExibirLinhadeStatus1.Caption:='&Exibir linha de status';
   end
   else
   begin
    stbStatus.Visible := true;
    ExibirLinhadeStatus1.Caption:='&Ocultar linha de status';
   end;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
'   if not Alterado or SalvarAlteracoes then
  begin
    CanClose:=true;
  end
  else
    CanClose:=false;
end;

procedure TForm1.Ajuda1Click(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

end.
