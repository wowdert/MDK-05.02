program Zadanie_7;
uses CRT;
var n,i,s,min,max,x: integer;
begin
  writeln('введите количество судей');
  readln(n);
  s:=0;
  min:=10;
  max:=0;
  for i:= 1 to n do
  begin
    writeln('введите оценки судей');
    readln(x);
    s:=s+x;
    if x>max then max:=x;
    if x<min then min:=x;
  end;
  s:=s-min-max;
  writeln(s/(n-2):0:1);
end.