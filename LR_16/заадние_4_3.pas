var
  L: List<integer>;
  i: integer;
begin
  L := new List<integer>;
  Randomize;
  for i := 1 to 10 do
    L.Add(Random(1, 50));
  writeln('Весь список:');
  for i := 0 to L.Count - 1 do
  begin
    write(L[i], ' '); 
  end;
  writeln; 
  writeln('Только четные элементы:');
  for i := 0 to L.Count - 1 do
  begin
    if L[i] mod 2 = 0 then
      write(L[i], ' ');
  end;
end.