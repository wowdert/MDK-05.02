program zadacha_2;
uses crt;
var arr: array [1..50] of integer;
    i, j,n:integer;
begin
  randomize;
    n:=20;
    writeln ('исходный массив: ');
    for i:=1 to n do
    begin
      arr[i]:=random(101)-50;
      write(arr[i], ' ');
    end;
    writeln;
    j:=0;
    for i:=1 to n do
    begin
      if arr[i]>=0 then
      begin
        j:=j+1;
        arr[j]:=arr[i];
      end;
    end;
    write('массив после удаления: ');
    if j>0 then
    begin
      for i:=1 to j do
        write(arr[i], ' ');
      writeln;
      writeln('количество элементов: ',j);
    end
    else writeln('все элементы были отрицательными');
end.