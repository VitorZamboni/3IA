unit UnitLetras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormLetras = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Bevel1: TBevel;
    LabelTexto: TLabel;
    RadioButtonArial: TRadioButton;
    RadioButtonTimes: TRadioButton;
    RadioButtonWing: TRadioButton;
    RadioButtonNormal: TRadioButton;
    RadioButtonNegrito: TRadioButton;
    RadioButtonItalico: TRadioButton;
    RadioButtonSize10: TRadioButton;
    RadioButtonSize14: TRadioButton;
    RadioButtonSize36: TRadioButton;
    ButtonClose: TButton;
    procedure RadioButtonArialClick(Sender: TObject);
    procedure RadioButtonTimesClick(Sender: TObject);
    procedure RadioButtonWingClick(Sender: TObject);
    procedure RadioButtonNormalClick(Sender: TObject);
    procedure RadioButtonNegritoClick(Sender: TObject);
    procedure RadioButtonItalicoClick(Sender: TObject);
    procedure RadioButtonSize10Click(Sender: TObject);
    procedure RadioButtonSize14Click(Sender: TObject);
    procedure RadioButtonSize36Click(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLetras: TFormLetras;

implementation

{$R *.dfm}

procedure TFormLetras.RadioButtonArialClick(Sender: TObject);
begin
  LabelTexto.Font.Name := 'Arial';
end;

procedure TFormLetras.RadioButtonTimesClick(Sender: TObject);
begin
   LabelTexto.Font.Name := 'Times New Roman';
end;

procedure TFormLetras.RadioButtonWingClick(Sender: TObject);
begin
   LabelTexto.Font.Name := 'Wingdings';
end;

procedure TFormLetras.RadioButtonNormalClick(Sender: TObject);
begin
  LabelTexto.Font.Style := [];
end;

procedure TFormLetras.RadioButtonNegritoClick(Sender: TObject);
begin
  LabelTexto.Font.Style := [fsBold];
end;

procedure TFormLetras.RadioButtonItalicoClick(Sender: TObject);
begin
   LabelTexto.Font.Style := [fsItalic];
end;

procedure TFormLetras.RadioButtonSize10Click(Sender: TObject);
begin
  LabelTexto.Font.Size := 10;
end;

procedure TFormLetras.RadioButtonSize14Click(Sender: TObject);
begin
  LabelTexto.Font.Size := 14;
end;

procedure TFormLetras.RadioButtonSize36Click(Sender: TObject);
begin
  LabelTexto.Font.Size := 36;
end;

procedure TFormLetras.ButtonCloseClick(Sender: TObject);
begin
 close;
end;

end.
