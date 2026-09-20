uses graphABC;
var i, j, x1, x2, y1, y2, N, cellSize: integer;
   h, x, y: real;
begin   
  x1 := 100; y1 := 100;
  x2 := 500; y2 := 500;
  N := 8;
  
  Rectangle(x1, y1, x2, y2);
  
  cellSize := (x2 - x1) div N;
  
  h := (x2 - x1) / N;
  x := x1 + h;
  for i := 1 to N-1 do begin
    Line(round(x), y1, round(x), y2);
    x := x + h;
  end;
  
  y := y1 + h;
  for i := 1 to N-1 do begin
    Line(x1, round(y), x2, round(y));
    y := y + h;
  end;

  for i := 0 to N-1 do begin
    for j := 0 to N-1 do begin
      if (i + j) mod 2 = 1 then begin
        SetBrushColor(clBlack);
        FillRect(x1 + i * cellSize, y1 + j * cellSize, 
                 x1 + (i + 1) * cellSize, y1 + (j + 1) * cellSize);
      end;
    end;
  end;
end.