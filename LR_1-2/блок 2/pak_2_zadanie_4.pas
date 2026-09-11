program Zadanie_4;
uses CRT;
var a,b,c,d,e,S,F:integer;
begin
  writeln ('введите четырехзначное число');
  readln(a);
  b:=a div 1000;
  c:=(a div 100) mod 10;
  d:=(a div 10) mod 10;
  e:=a mod 10;
  S:=b+c+d+e;
  F:=b*c*d*e;
  write ('S=', S);
  write ('F=', F);
end.