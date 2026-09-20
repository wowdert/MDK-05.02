function stepen (a,b: integer):integer; //параметризация
begin
  if b<0 then //база рекурсии
    stepen:=1
  else stepen:=a * stepen(a, b - 1); //декомпозиция
end;
begin
var x := readinteger('Введите x ');
var y := readinteger('Введите y ');
  print(stepen(x,y));
end.