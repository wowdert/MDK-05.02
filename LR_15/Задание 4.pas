procedure LoopFor(i, n: integer); //параметризация
begin
  println('Привет', i);
  if i<n then //база рекурсии
    LoopFor(i+1,n); //декомпозиция
end;
begin
  LoopFor(1,10);                    
end.