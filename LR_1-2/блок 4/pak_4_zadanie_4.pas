program Zadanie_4;
uses CRT;
var A,X,S:real;
begin
  write('X='); //плата за 38 часов
  readln(X);
  write('A='); //количесво часов работы
  readln(A);
  if (A>38) then 
    S:=X+(A-38)*(X/38*1.5)
  else S:=X*(A/38);
  write('S=' , S);
end.