program zadacha_2;
uses crt;
var a: array of integer;
    n, i: integer;
    b:boolean;
begin
  writeln('введите размер массива');
  readln(n);
  if n<=0 then
  begin
    writeln('размер массива должен быть положительным');
    exit;
  end;
  SetLength(a, n);
  writeln('введите элементы массива:');
  for i:=0 to n-1 do
  begin
    write('элемент ', i+1, ': ');
    readln(a[i])
  end;
  writeln('введенный массив');
  for i:=0 to n-1 do
    write(a[i], ' ');
  writeln;
  b:= true;
  if n>1 then
  begin
    for i:=0 to n-2 do
    begin
      if a[i]<a[i+1] then
      begin
        b:=false;
        break;
      end;
    end;
  end;
  if b then
    writeln ('массив упорядочен по убыванию')
  else
    writeln ('массив НЕ упорядочен по убыванию');
end.
