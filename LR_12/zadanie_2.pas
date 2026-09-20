var
  f: text;
  N, K, i: integer;
  s: string;
begin
  readln(N, K);

  s := '';
  for i := 1 to K do
    s := s + '*';
  
  assign(f, 'stars.txt');
  rewrite(f);
  
  for i := 1 to N do
    writeln(f, s);
  
  close(f);
end.