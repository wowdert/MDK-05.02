program Zadaniie_12;
uses CRT;
var
  a,b,c,d: integer;
  n,f: integer;
  s: real;
  ch: char;
begin
  n := 0;
  f := 0;
  s := 0;
  repeat
    n := n + 1;
    writeln('Студент ', n);
    readln(a,b,c,d);
    s := s + a + b + c + d;
    if a=2 then f := f + 1
    else if b=2 then f := f + 1
    else if c=2 then f := f + 1
    else if d=2 then f := f + 1;
    write('Дальше? (д/н): ');
    readln(ch);
  until ch = 'н';
  writeln('Неуспевающих: ', f);
  writeln('Средний балл: ', s/(n*4):0:1);
  readln;
end.