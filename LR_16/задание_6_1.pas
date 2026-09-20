begin
  var n := ReadInteger('Введите размер массива:');
  var a := ArrRandom(n, -5, 20);
  PrintLn('массив:', a);
  var L1 := a.Where(x -> x > 0).ToList;
  var L2 := a.Where(x -> x < 0).ToList;
  Print('L1: '); L1.Print;
  Print(' L2: '); L2.Print;
end.