begin
  var a := Arr(20, 3, 18, 33, 93, 58, 30, 56, 15, 3);
  Println('массив: ', a);
  write('введите n: ');
  var n := ReadInteger;
  var i := a.IndexMin;
  a := a[:i] + Arr(n) + a[i:];
  Print('результат: ', a);
end.