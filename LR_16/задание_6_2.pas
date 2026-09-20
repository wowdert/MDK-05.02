type t_chs = set of Char;
const
  lett: t_chs = ['a'..'z', 'A'..'Z', '_'];
  num: t_chs = ['0'..'9'];
var
  s: string; // переименовал из str, так как str - зарезервированное слово
  i: byte;
  flag: boolean;

begin
  write('Введите строку: ');
  readln(s);
  
  if s.Length = 0 then 
    flag := false
  else
  begin
    flag := s[1] in lett;
    for i := 2 to s.Length do
      if not (s[i] in lett + num) then
        flag := false;
  end;
  writeln('Результат: ', flag);
end.