program zadanie_3;
uses CRT;
var a: array [1..20] of integer;
    i,max,max_i,min_p,min_p_i,last_5:integer;
begin
  randomize;
  for i:=1 to 20 do
  begin
    a[i]:=random(118)-52;
    write(a[i], ' ');
  end;
  max:=a[i];
  max_i:=1;
  for i:=2 to 20 do
    if a[i]>max then
    begin
      max:=a[i];
      max_i:=i;
    end;
    writeln('максимум ' ,  max, ' (номер ',  max_i, ')');
    min_p:=100;
    min_p_i:=0;
    for i:= i to 20 do
      if (a[i]>0) and (a[i]<min_p) then
      begin
        min_p:=a[i];
        min_p_i:=i;
      end;
      if min_p_i>0 then
        writeln('мин. положительный: ', min_p, ' (номер ', min_p_i,')')
      else 
        writeln ('нет положительных');
      last_5:=0;
      for i:=1 to 20 do
        if a[i] mod 5 =0 then 
          last_5:=i;
        if last_5>0 then
          writeln ('последний кратный 5: номер ', last_5)
        else
          writeln('нет кратных 5');
end.
