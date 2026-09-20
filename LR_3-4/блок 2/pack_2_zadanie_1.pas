program Zadanie_1;
uses CRT;
var a:real;
    m:integer;
begin
  writeln('введите сумму вклада');
  readln(a);
  writeln('месяц    вклад');
  writeln('~~~~~~~~~~~~~~~~');
  m := 1;
  while m <= 12 do
  begin
    a := a * 1.05;
    writeln(m, '         ', a);
    m := m + 1;
  end;
  writeln('~~~~~~~~~~~~~~~~~');
  readln;
end.