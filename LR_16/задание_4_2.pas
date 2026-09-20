type
  toy = record
    name: string[20];
    price: integer;
    age: string[10];
  end;
var
  f: file of toy;
  t, t_from_file: toy;
begin
  assign(f, 'toys.txt');
  rewrite(f); 
  t.name := 'Мишка'; t.price := 500; t.age := '3+';
  write(f, t); 
  t.name := 'Мяч'; t.price := 300; t.age := '0+';
  write(f, t); 
  close(f);
  reset(f); 
  writeln('Данные из файла:');
  while not eof(f) do 
  begin
    read(f, t_from_file);
    writeln(t_from_file.name, ' - ', t_from_file.price, ' руб.');
  end;
  close(f);
end.