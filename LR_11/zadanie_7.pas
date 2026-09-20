uses GraphABC, Timers;

const
  SquareSize = 20;
  Speed = 5;

var
  x, y: Integer;
  dx, dy: Real;

procedure MoveTo(targetX, targetY: Integer);
var
  dist: Real;
  steps: Integer;
  i: Integer;
begin
  dist := Sqrt(Sqr(targetX - x) + Sqr(targetY - y));
  steps := Round(dist / Speed);
  if steps = 0 then Exit;
  dx := (targetX - x) / steps;
  dy := (targetY - y) / steps;

  for i := 1 to steps do
  begin
    ClearWindow; // Очистка окна для анимации
    x := Round(x + dx);
    y := Round(y + dy);
    SetBrushColor(clBlack);
    FillRect(x, y, x + SquareSize, y + SquareSize);
    Sleep(20); // Задержка для плавности анимации
  end;
end;

begin
  SetWindowSize(640, 480);
  x := 50;
  y := 450;

  MoveTo(320, 50); // Движение к верхней точке
  MoveTo(590, 450); // Движение к правой нижней точке
end.