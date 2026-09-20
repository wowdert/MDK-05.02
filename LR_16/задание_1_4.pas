var
  L: List<integer>;
  i, min, max: integer;
begin
  L := new List<integer>;
  Randomize;
  for i := 1 to 10 do
    L.Add(Random(-100, 100));
  writeln('Список элементов:');
  for i := 0 to L.Count - 1 do
    write(L[i], ' ');
  writeln;
  max := L[0];
  min := L[0];
  for i := 1 to L.Count - 1 do
  begin
    if L[i] > max then 
      max := L[i];
    if L[i] < min then 
      min := L[i];
  end;
  writeln('Максимальный элемент: ', max);
  writeln('Минимальный элемент: ', min);
end.