unit FractalMinkovsky;

interface

procedure RenderScene(depth: integer; scale, offX, offY: real);

implementation

uses GraphABC;

function TX(x, sc, offX: real): integer := Round(x * sc + offX);
function TY(y, sc, offY: real): integer := Round(y * sc + offY);

procedure DrawMinkowski(x, y, x1, y1: real; d: integer; sc, offX, offY: real);
var dx, dy, ux, uy: real;
begin
  if d = 0 then //база 
  begin
    Line(TX(x, sc, offX), TY(y, sc, offY),
         TX(x1, sc, offX), TY(y1, sc, offY));
    exit;
  end;

{Декомпозиция}
  dx := (x1 - x) / 4;
  dy := (y1 - y) / 4;
  ux := -dy;
  uy := dx;

  DrawMinkowski(x, y, x + dx, y + dy, d - 1, sc, offX, offY);
  DrawMinkowski(x + dx, y + dy, x + dx + ux, y + dy + uy, d - 1, sc, offX, offY);
  DrawMinkowski(x + dx + ux, y + dy + uy, x + 2*dx + ux, y + 2*dy + uy, d - 1, sc, offX, offY);
  DrawMinkowski(x + 2*dx + ux, y + 2*dy + uy, x + 2*dx, y + 2*dy, d - 1, sc, offX, offY);
  DrawMinkowski(x + 2*dx, y + 2*dy, x + 2*dx - ux, y + 2*dy - uy, d - 1, sc, offX, offY);
  DrawMinkowski(x + 2*dx - ux, y + 2*dy - uy, x + 3*dx - ux, y + 3*dy - uy, d - 1, sc, offX, offY);
  DrawMinkowski(x + 3*dx - ux, y + 3*dy - uy, x + 3*dx, y + 3*dy, d - 1, sc, offX, offY);
  DrawMinkowski(x + 3*dx, y + 3*dy, x1, y1, d - 1, sc, offX, offY);
end;

procedure DrawUI(depth: integer; scale: real);
begin
  SetBrushColor(ARGB(220,255,255,255));
  FillRectangle(5,5,250,110);
  SetPenColor(clBlack);
  Rectangle(5,5,250,110);

  SetFontSize(10);
  TextOut(15,15,'Фрактал Минковского');
  TextOut(15,35,'Глубина (W/S): '+IntToStr(depth));
  TextOut(15,55,'Масштаб (Z/X): '+FloatToStr(Round(scale*10)/10));
  TextOut(15,75,'Стрелки: перемещение');
end;

procedure RenderScene(depth: integer; scale, offX, offY: real);
begin
  ClearWindow(clWhite);
  SetPenColor(clBlack);
  DrawMinkowski(0,0,800,0,depth,scale,offX,offY);
  DrawUI(depth,scale);
end;
end.