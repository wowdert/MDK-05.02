uses CRT;
var 
  x, y: real;
  i: integer;
begin
  writeln('x        y');
  writeln('~~~~~~~~~~~~~~~~~~~~');
  
  for i := -40 to 35 do
  begin
    x := i / 5;
    if (x >= -8) and (x <= 0) then
    begin
      writeln(x:6:1, '      не определено');
      continue;
    end;
    if x < -6 then
      y := power(x, 3) * power(x, (0.1 * x)) - cos(x)
    else if x < -5 then
      y := power(exp(x), x) - (sin(x) / cos(x))
    else if x < 5 then
      y := power(x, (0.1 * x)) / 45
    else
      y := x - exp(x*x) / (sin(x) / cos(x));
    
    writeln(x:6:1, '      ', y:0:2);
  end;
  
  writeln('~~~~~~~~~~~~~~~~~~~~');      
end.