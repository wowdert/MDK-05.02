program Zadanie_8;
uses CRT;
var Tf:real;
    Tc:integer;
begin
  writeln('Цельсий    Фаренгейт');
  writeln('~~~~~~~~~~~~~~~~~~~~~~');
  for Tc:=0 to 25 do
  begin
    Tf:=9*Tc/5+32;
    writeln(Tc:5, '         ', Tf:5)
  end;
  writeln('~~~~~~~~~~~~~~~~~~~~~');
  readln 
end.
