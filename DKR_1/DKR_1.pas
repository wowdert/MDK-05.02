uses CRT;
var x,y:real;
    error:boolean;
begin
  writeln('ведите значение х');
  readln(x);
  error:=false;
  if (x<-6) then
  begin
    if x<=-6 then
      error:=true
    else
      y:=power(x,3)*power(x,(0.1*x))-cos(x);
  end
  else if (-6<=x) and (x<-5) then
  begin
    if (x<=-6) and (-5<x) then
      error:=true
    else
       y:= power(exp(x),x)-(sin(x)/cos(x));
  end
  else if (-5<=x) and (x<5) then
  begin
    if (x<=-5) then
      error:=true
    else
       y:= power(x,(0.1*x))/45
    end
       else 
       begin
         if (x<=5) then 
           error:=true
         else
            y:= power(x,2)/x-power(exp(x),x)/(sin(x)/cos(x));
         end;
       if error then
         writeln('значение x не подходит условию')
       else writeln(y:0:2);
  end.