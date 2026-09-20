uses CRT;
var
    s1, s2: string;
    len1, len2, i, j: integer;
begin
    write('введите строку: ');
    readln(s1);
    write('какую строку на последовательность вы хотите проверить?: ');
    readln(s2);    
    len1 := length(s1);
    len2 := length(s2);   
    if len2 = 0 then
        writeln('да, является подпоследовательностью')
    else if len2 > len1 then
        writeln('ошибка, строка слишком длинная')
    else
    begin
        i := 1;
        j := 1;       
        while (i <= len1) and (j <= len2) do
        begin
            if s1[i] = s2[j] then
                j := j + 1;
            i := i + 1;
        end;       
        if j = len2 + 1 then
            writeln('да, является подпоследовательностью')
        else
            writeln('нет, не является подпоследовательностью');
    end;
end.