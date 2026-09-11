program Zadanie_8
uses CRT;
var A,B,C: real;
begin
  write ('A='); //цена одной машины
  readln (A);
  write ('B='); // колличество проданых машин
  read (B);
  C:=A*B; //общая выручка с продажи машин
  Write ('C=', C );
end.