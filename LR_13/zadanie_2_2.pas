program SplitRealText;

var
  Fsrc, Fodd, Feven: Text;
  r: Real;
  i, n: Integer;

begin
  { === Шаг 1: создаём исходный файл программно === }

  Assign(Fsrc, 'C:\Users\user\Desktop\учеба\ОАиП\ЛР_13\source.txt');
  Rewrite(Fsrc);

  Write('Сколько чисел записать в файл? ');
  ReadLn(n);

  Writeln('Введите ', n, ' чисел:');

  for i := 1 to n do
  begin
    ReadLn(r);
    WriteLn(Fsrc, r);
  end;

  Close(Fsrc);


  { === Шаг 2: читаем source.txt и распределяем === }

  Assign(Fsrc, 'C:\Users\user\Desktop\учеба\ОАиП\ЛР_13\source.txt');
  Reset(Fsrc);

  Assign(Fodd, 'C:\Users\user\Desktop\учеба\ОАиП\ЛР_13\odd.txt');
  Rewrite(Fodd);

  Assign(Feven, 'C:\Users\user\Desktop\учеба\ОАиП\ЛР_13\even.txt');
  Rewrite(Feven);

  i := 1;

  while not Eof(Fsrc) do
  begin
    ReadLn(Fsrc, r);

    if i mod 2 = 1 then
      WriteLn(Fodd, r)
    else
      WriteLn(Feven, r);

    Inc(i);
  end;

  Close(Fsrc);
  Close(Fodd);
  Close(Feven);

  Writeln('Готово! Файлы созданы.');
end.
