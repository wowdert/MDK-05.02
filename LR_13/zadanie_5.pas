var
  f, temp: TextFile;
  x: integer;
  numbers: array of Real;
  minVal, maxVal: Real;
  minIdx, maxIdx, i, n: Integer;
begin
  // 1. Считаем все числа в массив
  AssignFile(f, 'C:\Users\user\Desktop\учеба\ОАиП\ЛР_13\zadanie_5.txt');
  Reset(f);

  n := 0;
  while not Eof(f) do
  begin
    Read(f, x);
    Inc(n);
    SetLength(numbers, n);
    numbers[n-1] := x;
  end;
  CloseFile(f);

  if n = 0 then
  begin
    WriteLn('Файл пустой.');
    Exit;
  end;

  // 2. Найдем минимальный и максимальный элементы
  minVal := numbers[0]; maxVal := numbers[0];
  minIdx := 0; maxIdx := 0;

  for i := 0 to n-1 do
  begin
    if numbers[i] < minVal then
    begin
      minVal := numbers[i];
      minIdx := i;
    end;
    if numbers[i] > maxVal then
    begin
      maxVal := numbers[i];
      maxIdx := i;
    end;
  end;

  // 3. Меняем местами в массиве
  numbers[minIdx] := maxVal;
  numbers[maxIdx] := minVal;

  // 4. Перезаписываем файл
  AssignFile(f, 'C:\Users\user\Desktop\учеба\ОАиП\ЛР_13\zadanie_5.txt');
  Rewrite(f);
  for i := 0 to n-1 do
    Write(f, numbers[i]:0:0, ' ');

  CloseFile(f);
  WriteLn('Минимальный и максимальный элементы успешно обменяны.');
end.
