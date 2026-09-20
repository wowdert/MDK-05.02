var
  f: file of char;
  c: char;
  line: string;
  lastSpacePos: Integer;
  fileName: string;
  i: Integer;
begin
  fileName := 'C:\Users\user\Desktop\учеба\ОАиП\ЛР_13\zadanie_1.txt';
  assignFile(f, fileName);
  reset(f);

  line := '';//накопление символов
  //записываем содержимое файла в строку 
  while not EOF(f) do
  begin
    Read(f, c);
    line := line + c;
  end;
 //последний пробел ищем в строке
  lastSpacePos := 0;
  for i := Length(line) downto 1 do
  begin
    if line[i] = ' ' then
    begin
      lastSpacePos := i;
      Break;//если нашли пробел с конца
    end;
  end;
  if lastSpacePos > 0 then
  begin
//обрезаем строку
    line := Copy(line, 1, lastSpacePos - 1);
 
    Rewrite(f); //переписывваем фаил

    for i := 1 to Length(line) do
      Write(f, line[i]);
    
    CloseFile(f);
  end
  else
    WriteLn('В файле нет пробела!');
end.