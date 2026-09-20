begin
  var a := Arr(96, 79, 71, 87, 61, 21, 51, 74, 67, 89);
  var slice:= a[1::2];
  println ('срез:' ,slice);
  println('min:' ,slice.min);
end.