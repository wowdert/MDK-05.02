var
  arr: array of integer;  // глобальная переменная - массив
  n, i: integer;          // глобальные переменные - размер массива и счетчик

function MultiplyAll(a: array of integer): integer; 
// a - ФОРМАЛЬНЫЙ ПАРАМЕТР (передача по значению - создается копия массива)
begin
  var p := 1;             // локальная переменная
  for var i := 0 to Length(a) - 1 do  // i - локальная переменная цикла
    p := p * a[i];
  MultiplyAll := p;
end;

function MultiplyEven(a: array of integer): integer;
// a - ФОРМАЛЬНЫЙ ПАРАМЕТР (передача по значению)
begin
  var p := 1;             // локальная переменная
  for var i := 0 to Length(a) - 1 do  // i - локальная переменная цикла
    if a[i] mod 2 = 0 then
      p := p * a[i];
  MultiplyEven := p;
end;

begin
  write('Введите количество элементов массива: ');
  readln(n);              // работа с глобальной переменной n
  
  SetLength(arr, n);      // работа с глобальной переменной arr
  
  writeln('Введите элементы массива:');
  for i := 0 to n - 1 do  // i - глобальная переменная
  begin
    write('arr[', i + 1, '] = ');
    readln(arr[i]);       // работа с глобальной переменной arr
  end;
  
  // MultiplyAll(arr) - arr ФАКТИЧЕСКИЙ ПАРАМЕТР (передача по значению)
  writeln('Произведение всех элементов: ', MultiplyAll(arr));
  
  // MultiplyEven(arr) - arr ФАКТИЧЕСКИЙ ПАРАМЕТР (передача по значению)
  writeln('Произведение четных элементов: ', MultiplyEven(arr));
end.