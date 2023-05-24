unit UnitDespertador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormRelogio = class(TForm)
    BevelHora: TBevel;
    LabelHora: TLabel;
    Timer: TTimer;
    ButtonFechar: TButton;
    ButtonOpcoes: TButton;
    ImageDesperta: TImage;
    procedure ButtonFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure ButtonOpcoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelogio: TFormRelogio;

implementation

uses UnitOpcoes;

{$R *.dfm}

procedure TFormRelogio.ButtonFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormRelogio.FormCreate(Sender: TObject);
begin
  FormRelogio.Top := (Screen.Height - FormRelogio.Height) div 2;
  FormRelogio.Left := (Screen.Width - FormRelogio.Width) div 2;

  LabelHora.Caption := TimeToStr(Time);
end;

procedure TFormRelogio.TimerTimer(Sender: TObject);
begin
  LabelHora.Caption := TimeToStr(Time);
  if (LabelHora.Caption > FormOpcoes.MaskEditAlarme.Text)
    and (FormOpcoes.RadioGroupAlarme.ItemIndex = 0) then
    Beep;
end;

procedure TFormRelogio.ButtonOpcoesClick(Sender: TObject);
begin
  FormOpcoes.ShowModal;
end;

end.



