uses CRT;
var
    n, a, i, j: integer;
    arr, seq: array of integer;
    mat: boolean;
begin
    write('Размер массива: '); 
    readln(n);
    SetLength(arr, n);
    for i := 0 to n - 1 do
    begin
        write('Элемент ', i + 1, ': ');
        readln(arr[i]);
    end;   
    write('Размер последовательности: '); 
    readln(a);
    SetLength(seq, a);
    for i := 0 to a - 1 do
    begin
        write('Число послед. ', i + 1, ': ');
        readln(seq[i]);
    end;  
    if a = 0 then writeln('Пустая последовательность найдена')
    else if a > n then writeln('Последовательность слишком длинная')
    else begin
        mat := false;
        for i := 0 to n - a do begin
            mat := true;
            for j := 0 to a - 1 do
                if arr[i + j] <> seq[j] then begin
                    mat := false;
                    break;
                end;
            if mat then begin
                writeln('Найдена с позиции ', i + 1);
                break;
            end;
        end;
        if not mat then writeln('Не найдена');
    end;
end.
