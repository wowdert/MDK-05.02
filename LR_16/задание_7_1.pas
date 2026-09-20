begin
  var L := Lst(0, 93, 71, 88, 99, 44, 50, 36, 72, 1);
  Println('список: ', L);
  var k := L.IndexMax;
  L.RemoveAt(k);
  Print('результат: ', L);
end.