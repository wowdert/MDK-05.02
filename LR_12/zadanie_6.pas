var f1, f2: text; s: string;
begin
  assign(f1, 'pusto.txt'); reset(f1);
  assign(f2, 'temp.txt'); rewrite(f2);
  
  while not eof(f1) do begin
    readln(f1, s);
    if s <> '' then writeln(f2, s);
  end;
  
  close(f1); close(f2);
  erase(f1); rename(f2, 'pusto.txt');
end.