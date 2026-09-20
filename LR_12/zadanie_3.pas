var
  f: text;
  s: string;
begin
  write('Введите строку для добавления: ');
  readln(s);
  
  assign(f, 'stars.txt');
  append(f);
  
  writeln(f, s);
  
  close(f);
  
  writeln('Строка добавлена в файл stars.txt');
end.