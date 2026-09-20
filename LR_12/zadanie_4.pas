var
  f, temp: text;
  k, lineNum: integer;
  line: string;
begin
  write('Введите номер строки K: ');
  readln(k);
  
  assign(f, 'text.txt');
  assign(temp, 'temp.txt');
  
  reset(f);
  rewrite(temp);
  
  lineNum := 1;
  
  while not eof(f) do
  begin
    readln(f, line);
    
    if lineNum = k then
      writeln(temp);
    
    writeln(temp, line);
    lineNum := lineNum + 1;
  end;
  
  close(f);
  close(temp);
  
  erase(f);
  rename(temp, 'text.txt');
end.