procedure row(n:integer); // параметризация
begin
     if n >=1 then begin //база рекурсии
        print(n);
        row(n-2) //декомпозиция
     end;
end;
begin
    row(25);
end.