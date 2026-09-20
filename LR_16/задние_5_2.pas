var
  n, lastDigit, lastTwoDigits: integer;
  suffix: string;
begin
  write('Введите количество лет: ');
  readln(n);
  lastDigit := n mod 10;
  lastTwoDigits := n mod 100;
  if (lastTwoDigits >= 11) and (lastTwoDigits <= 14) then
    suffix := 'лет'
  else
    case lastDigit of
      1: suffix := 'год';
      2, 3, 4: suffix := 'года';
      else suffix := 'лет';
    end;
  writeln(n, ' ', suffix);
end.