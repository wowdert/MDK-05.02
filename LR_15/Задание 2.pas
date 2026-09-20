   function sumTo (a: integer): integer; //параметризация
   begin
        if (a<=1) then //база рекурсии
          a:=1
        else
          a:=a+(sumTo(a-1)); //декомпозиция
   sumTo:=a;
end;
begin
  var x := readinteger('Введите x ');
  Println(sumto(x));
end.