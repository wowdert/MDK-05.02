program Zadanie_5;
uses CRT;
var a:integer;
begin
  writeln('введите год');
  readln(a);
  If a mod 400=0 then 
    writeln ('год является високосным')
    else writeln ('год не является високосным');
end.