unit UnitPrincipal;

interface

uses
  Windows, SysUtils, Types, Classes, Variants, QTypes, QGraphics, QControls, QForms,
  QDialogs, QStdCtrls, QExtCtrls, Messages, QButtons;

type
  TformFiguraGeometrica = class(TForm)
    scrollBarRed: TScrollBar;
    scrollBarBlue: TScrollBar;
    scrollBarGreen: TScrollBar;
    labelRed: TLabel;
    labelGreen: TLabel;
    labelBlue: TLabel;
    shape: TShape;
    GroupBox1: TGroupBox;
    radioButtonCirculo: TRadioButton;
    radioButtonQuadrado: TRadioButton;
    bitBtnFechar: TBitBtn;
    editRed: TEdit;
    editGreen: TEdit;
    editBlue: TEdit;
    procedure radioButtonCirculoClick(Sender: TObject);
    procedure radioButtonQuadradoClick(Sender: TObject);
    procedure scrollBarRedChange(Sender: TObject);
    procedure scrollBarGreenChange(Sender: TObject);
    procedure scrollBarBlueChange(Sender: TObject);
    procedure editRedKeyPress(Sender: TObject; var Key: Char);
    procedure editGreenKeyPress(Sender: TObject; var Key: Char);
    procedure editBlueKeyPress(Sender: TObject; var Key: Char);
    procedure editRedChange(Sender: TObject);
    procedure editGreenChange(Sender: TObject);
    procedure editBlueChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formFiguraGeometrica: TformFiguraGeometrica;

implementation

{$R *.xfm}

procedure TformFiguraGeometrica.radioButtonCirculoClick(Sender: TObject);
begin
  shape.Shape := stCircle;
end;

procedure TformFiguraGeometrica.radioButtonQuadradoClick(Sender: TObject);
begin
  shape.Shape := stSquare;
end;


procedure TformFiguraGeometrica.scrollBarRedChange(Sender: TObject);
begin
  shape.Brush.Color := rgb(scrollBarRed.Position, scrollBarGreen.Position, scrollBarBlue.Position);
  editRed.Text := IntToStr(scrollBarRed.Position);
end;

procedure TformFiguraGeometrica.scrollBarGreenChange(Sender: TObject);
begin
  shape.Brush.Color := rgb(scrollBarRed.Position, scrollBarGreen.Position, scrollBarBlue.Position);
  editGreen.Text := IntToStr(scrollBarGreen.Position);
end;

procedure TformFiguraGeometrica.scrollBarBlueChange(Sender: TObject);
begin
  shape.Brush.Color := rgb(scrollBarRed.Position, scrollBarGreen.Position, scrollBarBlue.Position);
  editBlue.Text := IntToStr(scrollBarBlue.Position);
end;


procedure TformFiguraGeometrica.editRedKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(key in ['0'..'9']=false and (word(key)<>vk_back) and(editRed.Text ='')) then
  begin
    key := #0;
    editRed.Text := '0';
  end;
end;

procedure TformFiguraGeometrica.editGreenKeyPress(Sender: TObject;
  var Key: Char);
begin
   if(key in ['0'..'9']=false and (word(key)<>vk_back) and(editRed.Text ='')) then
   begin
    key := #0;
    editGreen.Text := '0';
   end;
end;

procedure TformFiguraGeometrica.editBlueKeyPress(Sender: TObject;
  var Key: Char);
begin
   if(key in ['0'..'9']=false and (word(key)<>vk_back) and(editRed.Text ='')) then
   begin
    key := #0;
    editBlue.Text := '0';
   end;
end;

procedure TformFiguraGeometrica.editRedChange(Sender: TObject);
begin
  scrollBarRed.Position := StrToInt(editRed.Text);
end;

procedure TformFiguraGeometrica.editGreenChange(Sender: TObject);
begin
   scrollBarGreen.Position := StrToInt(editGreen.Text);
end;

procedure TformFiguraGeometrica.editBlueChange(Sender: TObject);
begin
  scrollBarBlue.Position := StrToInt(editBlue.Text);
end;

end.
