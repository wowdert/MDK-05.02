var
  n, i, divCount, sum: Int64;
  f_in, f_out: Text;

// Функция для подсчета делителей числа
function CountDivisors(x: Int64): Int64;//Int64 для хранения большого числа
var
  count, i: Int64;
  
begin
  count := 0;
  // Подсчитываем количество делителей для числа x
  for i := 1 to x do
    if x mod i = 0 then
      count := count + 1;  // Увеличиваем счетчик делителей
  CountDivisors := count;
end;

begin
  assign(f_in, 'C:\Users\user\Desktop\учеба\ОАиП\ЛР_12\z3.in.txt');
  assign(f_out, 'C:\Users\user\Desktop\учеба\ОАиП\ЛР_12\z3.out.txt');
  reset(f_in);
  rewrite(f_out);
// Чтение числа n из входного файла
  readln(f_in, n);

  sum := 0;

  // Перебор чисел от 1 до n
  for i := 1 to n do
  begin
    divCount := CountDivisors(i);  // Получаем количество делителей числа i
    if divCount = 5 then  // Если количество делителей равно 5
      sum := sum + i;  // Добавляем число i в сумму
  end;

  writeln(f_out, sum);

  close(f_in);
  close(f_out);
end.
