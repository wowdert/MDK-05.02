begin
  var a := Arr(66, 46, 26, 64, 73, 62, 37, 57, 46, 9);
  Print('массив:   ', a);
  var i := a.IndexMax;
  a := a[:i] + a[i + 1:];
  PrintLn;
  Print('результат:', a);
end.