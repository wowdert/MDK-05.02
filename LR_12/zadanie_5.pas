var
  f_in, f_out: text;
  num, max, min: integer;
begin
  assign(f_in, 'input.txt');
  assign(f_out, 'output.txt');
  
  reset(f_in);
  
  readln(f_in, num);
  max := num;
  min := num;
  
  while not eof(f_in) do
  begin
    readln(f_in, num);
    if num > max then max := num;
    if num < min then min := num;
  end;
  
  close(f_in);
  
  rewrite(f_out);
  writeln(f_out, max);
  writeln(f_out, min);
  close(f_out);
end.