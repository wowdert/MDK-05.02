uses GraphABC;

// Функция
function f(x: real): real;
begin
  f := 2*x*x*x + 5*x + 14;
end;

// Метод трапеций
function TrapArea(a, b: real; n: integer): real;
var
  h, sum: real;
  i: integer;
begin
  h := (b - a) / n;
  sum := (f(a) + f(b)) / 2;
  for i := 1 to n-1 do
    sum := sum + f(a + i*h);
  TrapArea := sum * h;
end;

// Основная программа
begin
  // Ввод данных
  var a, b: real;
  var n: integer;
  
  write('Введите начало (a): ');
  readln(a);
  write('Введите конец (b): ');
  readln(b);
  write('Введите количество трапеций: ');
  readln(n);
  
  // Создаем окно
  SetWindowSize(800, 600);
  SetWindowTitle('Метод трапеций');
  
  // Находим min и max функции
  var minY := f(a);
  var maxY := f(a);
  for var i := 0 to n do
  begin
    var x := a + (b-a)*i/n;
    var y := f(x);
    if y < minY then minY := y;
    if y > maxY then maxY := y;
  end;
  
  // Добавляем отступы
  if minY > 0 then minY := 0;
  if maxY < 0 then maxY := 0;
  
  // Настройки отрисовки
  var margin := 50;
  var graphW := Window.Width - 2*margin;
  var graphH := Window.Height - 2*margin;
  
  // Масштаб
  var scaleX := graphW / (b-a);
  var scaleY := graphH / (maxY-minY);
  
  // Начало координат
  var x0 := margin + Round(-a * scaleX);
  var y0 := Window.Height - margin - Round(-minY * scaleY);
  
  // Очистка окна
  ClearWindow(clWhite);
  
  // Рисуем оси
  SetPenColor(clBlack);
  SetPenWidth(2);
  Line(margin, y0, Window.Width-margin, y0); // ось X
  Line(x0, margin, x0, Window.Height-margin); // ось Y
  
  // Подписи осей
  TextOut(Window.Width-margin+10, y0-15, 'X');
  TextOut(x0+10, margin-15, 'Y');
  
  // Рисуем трапеции
  var h := (b-a)/n;
  for var i := 0 to n-1 do
  begin
    var x1 := a + i*h;
    var x2 := x1 + h;
    var y1 := f(x1);
    var y2 := f(x2);
    
    // Координаты в пикселях
    var x1p := x0 + Round(x1 * scaleX);
    var x2p := x0 + Round(x2 * scaleX);
    var y1p := y0 - Round(y1 * scaleY);
    var y2p := y0 - Round(y2 * scaleY);
    
    // Рисуем трапецию (заполненный четырехугольник)
    SetBrushColor(RGB(200, 230, 255));
    SetPenColor(clBlue);
    
    // Создаем массив точек трапеции
    var points := new Point[4];
    points[0] := new Point(x1p, y1p);
    points[1] := new Point(x2p, y2p);
    points[2] := new Point(x2p, y0);
    points[3] := new Point(x1p, y0);
    
    Polygon(points);
  end;
  
  // Рисуем график функции
  SetPenColor(clRed);
  SetPenWidth(3);
  var prevX, prevY: integer;
  
  for var i := 0 to n do
  begin
    var x := a + (b-a)*i/n;
    var y := f(x);
    
    var xp := x0 + Round(x * scaleX);
    var yp := y0 - Round(y * scaleY);
    
    if i > 0 then
      Line(prevX, prevY, xp, yp);
    
    // Точки на графике
    SetBrushColor(clWhite);
    Circle(xp, yp, 3);
    
    prevX := xp;
    prevY := yp;
  end;
  
  // Выводим результат
  var area := TrapArea(a, b, n);
  SetFontColor(clGreen);
  SetFontSize(14);
  TextOut(10, 10, 'Площадь = ' + TrapArea(a, b, n));
  TextOut(10, 30, 'Трапеций: ' + IntToStr(n));
  TextOut(10, 50, 'Начало: ' + FloatToStr(a));
  TextOut(10, 70, 'Конец: ' + FloatToStr(b));
end.