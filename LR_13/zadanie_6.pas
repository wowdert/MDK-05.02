var
  f: File of Char;
  ch: Char;
  i: Integer;
begin
  AssignFile(f, 'C:\Users\user\Desktop\учеба\ОАиП\ЛР_13\zadanie_6.txt');
  Reset(f);

  i := 1;
  while not Eof(f) do
  begin
    Read(f, ch);
    if i mod 2 = 0 then
    begin
      Seek(f, FilePos(f) - 1); // возвращаемся на текущую позицию для записи
      ch := '!';
      Write(f, ch);
    end;
    i := i + 1;
  end;

  CloseFile(f);
  WriteLn('Символы на четных позициях заменены на "!"');
end.
