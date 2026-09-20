program SumEvenPositions;

var
  f: TextFile;
  x, sum: Real;
  i, n: Integer;
  fileName: string;

begin
  fileName := 'C:\Users\user\Desktop\учеба\ОАиП\ЛР_13\zadanie_3.txt';
  
  // Создаем и записываем числа в файл
  AssignFile(f, fileName);
  Rewrite(f);
  
  Writeln('Введите количество чисел:');
  ReadLn(n);
  
  Writeln('Введите ', n, ' чисел:');
  for i := 1 to n do
  begin
    ReadLn(x);
    WriteLn(f, x);
  end;
  
  CloseFile(f);
  
  // Теперь читаем из файла и вычисляем сумму
  AssignFile(f, fileName);
  Reset(f);
  
  sum := 0;
  i := 1;
  
  while not Eof(f) do
  begin
    ReadLn(f, x);
    if i mod 2 = 0 then
      sum := sum + x;
    i := i + 1;
  end;
  
  CloseFile(f);
  
  WriteLn('Сумма элементов с четными номерами: ', sum:0:2);
end.