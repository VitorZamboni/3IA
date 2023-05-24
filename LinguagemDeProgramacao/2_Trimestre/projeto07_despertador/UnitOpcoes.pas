unit UnitOpcoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask;

type
  TFormOpcoes = class(TForm)
    LabelAlarme: TLabel;
    MaskEditAlarme: TMaskEdit;
    RadioGroupAlarme: TRadioGroup;
    GroupBoxEfeitos: TGroupBox;
    CheckBoxNegrito: TCheckBox;
    CheckBoxItalico: TCheckBox;
    CheckBoxSublinhado: TCheckBox;
    ButtonOk: TButton;
    ButtonCancela: TButton;
    procedure FormActivate(Sender: TObject);
    procedure ButtonCancelaClick(Sender: TObject);
    procedure MaskEditAlarmeChange(Sender: TObject);
    procedure RadioGroupAlarmeClick(Sender: TObject);
    procedure ButtonOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormOpcoes: TFormOpcoes;
  HoraAlarme: String;
  LigaAlarme, Negrito, Italico, Sublinhado: Boolean;
  OpcaoAlarme: Integer;

implementation

uses UnitDespertador, Math;

{$R *.dfm}

procedure TFormOpcoes.FormActivate(Sender: TObject);
begin
  MaskEditAlarme.SetFocus;
  HoraAlarme := MaskEditAlarme.Text;
  LigaAlarme := RadioGroupAlarme.Enabled;
  OpcaoAlarme := RadioGroupAlarme.ItemIndex;
  Negrito := CheckBoxNegrito.Checked;
  Italico := CheckBoxItalico.Checked;
  Sublinhado := CheckBoxSublinhado.Checked;
end;

procedure TFormOpcoes.ButtonCancelaClick(Sender: TObject);
begin
  MaskEditAlarme.Text := HoraAlarme;
  HoraAlarme := MaskEditAlarme.Text;
  LigaAlarme := RadioGroupAlarme.Enabled;
  OpcaoAlarme := RadioGroupAlarme.ItemIndex;
  Negrito := CheckBoxNegrito.Checked;
  Italico := CheckBoxItalico.Checked;
  Sublinhado := CheckBoxSublinhado.Checked;
end;

procedure TFormOpcoes.MaskEditAlarmeChange(Sender: TObject);
begin
  if(MaskEditAlarme.Text <> ' : ') then
  begin
    RadioGroupAlarme.Enabled := true;
    RadioGroupAlarme.ItemIndex := 0;
  end
  else
  begin
    RadioGroupAlarme.ItemIndex := 1;
    RadioGroupAlarme.Enabled := false;
  end;
end;

procedure TFormOpcoes.RadioGroupAlarmeClick(Sender: TObject);
begin
  if(RadioGroupAlarme.ItemIndex=0)then
  begin
    FormRelogio.ImageDesperta.Visible := true;
  end
  else
  begin
    FormRelogio.ImageDesperta.Visible := false;
  end;
end;

procedure TFormOpcoes.ButtonOkClick(Sender: TObject);
begin
  with FormRelogio.LabelHora.Font do
  begin
    if(CheckBoxNegrito.Checked) then
      Style := Style + [fsBold]
    else
      Style := Style - [fsBold];

    if(CheckBoxItalico.Checked) then
      Style := Style + [fsItalic]
    else
      Style := Style - [fsItalic];

    if(CheckBoxSublinhado.Checked) then
      Style := Style + [fsUnderline]
    else
      Style := Style - [fsUnderline];
  end;
  close;
end;

procedure TFormOpcoes.FormCreate(Sender: TObject);
begin
  FormOpcoes.Top := (Screen.Height-FormOpcoes.Height) div 2;
  FormOpcoes.Left := (Screen.Width-FormOpcoes.Width) div 2;
end;

end.
