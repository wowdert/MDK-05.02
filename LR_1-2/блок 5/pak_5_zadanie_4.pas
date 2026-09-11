program zadanie_5;
uses CRT;
var
  S: string;
  C: integer;
  R: integer;
begin
  write('Введите координату клетки: ');
  readln(S);
  C:= Ord(S[1]) - Ord('A') + 1; 
  R:= Ord(S[2]) - Ord('0'); 
  if (C+R) mod 2=0 then
    writeln('BLACK')
  else
    writeln('WHITE');
end.