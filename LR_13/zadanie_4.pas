var
  f: TextFile;
  x, prev, next, lastMax: Real;
  hasPrev, found: Boolean;
begin
  AssignFile(f, 'C:\Users\user\Desktop\учеба\ОАиП\ЛР_13\zadanie_4.txt'); 
  Reset(f);

  hasPrev := False;
  found := False;
  lastMax := 0;

  if not Eof(f) then
  begin
    Read(f, prev); // читаем первый элемент
    hasPrev := True;
  end;

  while not Eof(f) do
  begin
    Read(f, next);  // читаем следующий элемент
    if hasPrev and (not Eof(f)) then
    begin
      // локальный максимум проверяем через соседей: prev < x > next
      if (prev > x) and (prev > next) then
      begin
        lastMax := prev;
        found := True;
      end;
    end;
    x := prev;
    prev := next;
  end;

  // Проверка последнего элемента: локальный максимум не учитываем, так как сосед справа нет
  CloseFile(f);

  if found then
    WriteLn('Последний локальный максимум: ', lastMax:0:2)
  else
    WriteLn('Локальные максимумы не найдены');
end.
