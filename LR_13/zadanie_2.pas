type
  TString = string[255];

var
  f, g: Text;
  lines: array of TString;
  line: string;
  maxLen, i: integer;

begin
  Assign(f, 'C:\Users\user\Desktop\учеба\ОАиП\ЛР_13\zadanie_2.txt');
  Reset(f);

  maxLen := 0;

  { Считываем все строки в массив и сразу ищем максимальную длину }
  SetLength(lines, 0);
  while not Eof(f) do
  begin
    ReadLn(f, line);
    SetLength(lines, Length(lines) + 1);
    lines[High(lines)] := line;

    if Length(line) > maxLen then
      maxLen := Length(line);
  end;
  Close(f);

  { Создаём файл результата }
  Assign(g, 'C:\Users\user\Desktop\учеба\ОАиП\ЛР_13\zadanie_2-1.txt');
  Rewrite(g);

  { Пишем строки максимальной длины в обратном порядке }
  for i := High(lines) downto 0 do
    if Length(lines[i]) = maxLen then
      WriteLn(g, lines[i]);

  Close(g);

  Writeln('Максимальная длина: ', maxLen);
end.
