uses CRT;
uses Math;
var
    a, b: real;
    n: integer;
    choice: integer;

//Функция, заданная в условии: 2*x^3 + 0*x^2 + 5*x + 14
function f(x: real): real;
begin
    f := 2 * Power(x, 3) + 0 * Power(x, 2) + 5 * x + 14;
end;

//Функция для вычисления интеграла методом трапеций
function TrapezoidalIntegral(a, b: real; n: integer): real;
var
    h, sum, x: real;
    i: integer;
begin
    h := (b - a) / n;
    sum := 0.5 * (f(a) + f(b));
    
    for i := 1 to n - 1 do
    begin
        x := a + i * h;
        sum := sum + f(x);
    end;
    
    TrapezoidalIntegral := sum * h;
end;

//Функция для оценки погрешности методом Рунге
function EstimateError(a, b: real; n: integer): real;
var
    I_n, I_2n: real;
begin
    I_n := TrapezoidalIntegral(a, b, n);
    I_2n := TrapezoidalIntegral(a, b, 2 * n);
    
//Для метода трапеций порядок точности p = 2
    EstimateError := abs(I_2n - I_n) / 3.0;
end;

//Процедура для вычисления интеграла с заданной точностью
procedure CalculateWithPrecision(a, b, eps: real);
var
    n: integer;
    I_prev, I_curr, error: real;
    iteration: integer;
begin
    n := 100; //начальное количество отрезков
    
    writeln;
    writeln('Вычисление интеграла с точностью ', eps:0:10, ':');
    writeln('n':10, 'Интеграл':20, 'Погрешность':20);
    writeln('----------------------------------------');
    
    I_prev := TrapezoidalIntegral(a, b, n);
    
    for iteration := 1 to 10 do
    begin
        n := n * 2;
        I_curr := TrapezoidalIntegral(a, b, n);
        error := abs(I_curr - I_prev) / 3.0;
        
        writeln(n:10, I_curr:20:10, error:20:2);
        
        if error < eps then
        begin
            writeln;
            writeln('Требуемая точность достигнута!');
            exit;
        end;
        
        I_prev := I_curr;
        
        if iteration = 10 then
        begin
            writeln;
            writeln('Достигнуто максимальное количество итераций.');
        end;
    end;
end;

//Процедура для отображения меню
procedure ShowMenu;
begin
    writeln;
    writeln('============ МЕНЮ ============');
    writeln('1. Ввести пределы интегрирования');
    writeln('2. Вычислить интеграл (метод трапеций)');
    writeln('3. Оценить погрешность');
    writeln('4. Вычислить с заданной точностью');
    writeln('5. Изменить количество отрезков (текущее: ', n, ')');
    writeln('0. Выход');
    write('Выберите пункт: ');
end;

//Основная программа
begin
    writeln('Вычисление площади фигуры, ограниченной кривой y = 2x^3 + 5x + 14');
    writeln('и осью OX (в положительной части по оси OY)');
    writeln;
    
//Инициализация переменных
    a := 0;
    b := 0;
    n := 1000;
    
    repeat
        ShowMenu;
        readln(choice);
        
        case choice of
            1: begin
                write('Введите нижний предел интегрирования a: ');
                readln(a);
                write('Введите верхний предел интегрирования b: ');
                readln(b);
                
                if a > b then
                begin
                    writeln('Внимание: a > b, пределы будут поменяны местами.');
                    swap(a, b);
                end;
            end;
            
            2: begin
                if a = b then
                begin
                    writeln('Пределы интегрирования не заданы или равны.');
                end
                else
                begin
                    writeln;
                    writeln('Результат вычисления интеграла:');
                    writeln('∫[', a:0:2, ', ', b:0:2, '] (2x^3 + 5x + 14) dx ≈ ', 
                            TrapezoidalIntegral(a, b, n):0:10);
                end;
            end;
            
            3: begin
                if a = b then
                begin
                    writeln('Пределы интегрирования не заданы или равны.');
                end
                else
                begin
                    writeln;
                    writeln('Оценка погрешности:');
                    writeln('Значение интеграла: ', TrapezoidalIntegral(a, b, n):0:10);
                    writeln('Оценка погрешности: ', EstimateError(a, b, n):0:10);
                    if abs(TrapezoidalIntegral(a, b, n)) > 1e-10 then
                        writeln('Относительная погрешность: ', 
                                (EstimateError(a, b, n) / abs(TrapezoidalIntegral(a, b, n))) * 100:0:2, '%')
                    else
                        writeln('Относительная погрешность: значение интеграла близко к нулю');
                end;
            end;
            
            4: begin
                if a = b then
                begin
                    writeln('Пределы интегрирования не заданы или равны.');
                end
                else
                begin
                    var eps: real;
                    write('Введите требуемую точность (например, 0.0001): ');
                    readln(eps);
                    CalculateWithPrecision(a, b, eps);
                end;
            end;
            
            5: begin
                write('Введите количество отрезков разбиения: ');
                readln(n);
                if n <= 0 then
                begin
                    writeln('Количество отрезков должно быть положительным. Установлено значение 100.');
                    n := 100;
                end;
            end;
            
            0: begin
                writeln('Выход из программы.');
            end;
        end;
        
    until choice = 0;
end.