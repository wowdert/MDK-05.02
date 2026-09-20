program SimpleMatrix;

const
  N = 8;

var
  a: array[1..N, 1..N] of integer;
  b: array[1..N] of integer;
  i, j: integer;
  found: boolean;

begin
  Randomize;
  
  for i := 1 to N do
    for j := 1 to N do
      a[i, j] := Random(10);
  
  writeln('Матрица:');
  for i := 1 to N do
  begin
    for j := 1 to N do
      write(a[i, j]:3);
    writeln;
  end;

  for i := 1 to N do
  begin
    found := false;
    for j := 1 to N - 1 do
      if a[i, j] + a[i, j + 1] = 7 then
        found := true;
    
    if found then
      b[i] := 1
    else
      b[i] := -1;
  end;

  writeln('Результат:');
  for i := 1 to N do
    write(b[i]:3);
end.