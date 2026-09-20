function NOD(a, b: integer): integer; //параметризация
begin
  if b = 0 then //база рекурсии
    NOD := abs(a)
  else
    NOD := NOD(b, a mod b); //декомпозиция
end;
begin
  var x := ReadInteger('Первое число: ');
  var y := ReadInteger('Второе число: ');
  print('НОД(', x, ', ', y, ') = ', NOD(x, y));
end.