procedure fib(i, n, count: integer); //параметризация
begin
  println(i + n);
  if count < 10 then //база рекурсии
    fib(n, i + n, count + 1); //декомпозиция
end;
begin
  fib(0, 1, 1);
end.