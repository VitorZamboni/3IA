unit UnitBolinhas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TformBolinha = class(TForm)
    bevelQuadro: TBevel;
    shapeBolinha: TShape;
    scrollBarHorizantal: TScrollBar;
    scrollBarVertical: TScrollBar;
    buttonSair: TButton;
    procedure FormCreate(Sender: TObject);
    procedure scrollBarHorizantalChange(Sender: TObject);
    procedure scrollBarVerticalChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formBolinha: TformBolinha;

implementation

{$R *.dfm}

procedure TformBolinha.FormCreate(Sender: TObject);
begin
  scrollBarHorizantal.Min := bevelQuadro.Left;
  scrollBarHorizantal.Max := (bevelQuadro.Width + bevelQuadro.Left) - shapeBolinha.Width;

  scrollBarVertical.Min := bevelQuadro.Top;
  scrollBarVertical.Max := (bevelQuadro.Top + bevelQuadro.Height) - shapeBolinha.Width;
end;

procedure TformBolinha.scrollBarHorizantalChange(Sender: TObject);
begin
  shapeBolinha.Left := scrollBarHorizantal.Position;
end;

procedure TformBolinha.scrollBarVerticalChange(Sender: TObject);
begin
  shapeBolinha.Top := scrollBarVertical.Position;
end;

end.
