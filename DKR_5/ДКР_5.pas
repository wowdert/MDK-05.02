uses crt;

// Компараторы
function Ascending(a, b: integer): boolean;
begin
  result := a < b;
end;

function Descending(a, b: integer): boolean;
begin
  result := a > b;
end;

// Сортировка вставками
procedure InsertionSort(var arr: array of integer; cmp: function(a, b: integer): boolean);
var
  i, j, key: integer;
begin
  for i := 1 to High(arr) do
  begin
    key := arr[i];
    j := i - 1;
    while (j >= 0) and cmp(key, arr[j]) do
    begin
      arr[j + 1] := arr[j];
      j := j - 1;
    end;
    arr[j + 1] := key;
  end;
end;

// Сортировка слиянием
procedure Merge(var arr: array of integer; left, mid, right: integer; cmp: function(a, b: integer): boolean);
var
  i, j, k: integer;
  L, R: array of integer;
begin
  SetLength(L, mid - left + 1);
  SetLength(R, right - mid);
  
  for i := 0 to High(L) do
    L[i] := arr[left + i];
  for j := 0 to High(R) do
    R[j] := arr[mid + 1 + j];
  
  i := 0; j := 0; k := left;
  
  while (i <= High(L)) and (j <= High(R)) do
  begin
    if cmp(L[i], R[j]) then
    begin
      arr[k] := L[i];
      i := i + 1;
    end
    else
    begin
      arr[k] := R[j];
      j := j + 1;
    end;
    k := k + 1;
  end;
  
  while i <= High(L) do
  begin
    arr[k] := L[i];
    i := i + 1;
    k := k + 1;
  end;
  
  while j <= High(R) do
  begin
    arr[k] := R[j];
    j := j + 1;
    k := k + 1;
  end;
end;

procedure MergeSortRecursive(var arr: array of integer; left, right: integer; cmp: function(a, b: integer): boolean);
var
  mid: integer;
begin
  if left < right then
  begin
    mid := (left + right) div 2;
    MergeSortRecursive(arr, left, mid, cmp);
    MergeSortRecursive(arr, mid + 1, right, cmp);
    Merge(arr, left, mid, right, cmp);
  end;
end;

procedure MergeSort(var arr: array of integer; cmp: function(a, b: integer): boolean);
begin
  if Length(arr) > 0 then
    MergeSortRecursive(arr, 0, High(arr), cmp);
end;

//основная программа

var
  arr: array of integer;
  f: text;
  i, n, choice, order: integer;
  cmp: function(a, b: integer): boolean;
  inputFile, outputFile: string;
  
begin
  inputFile := 'C:\Users\user\Desktop\учеба\ОАиП\ДКР_5\ДКР_5_массивы.txt';
  outputFile := 'C:\Users\user\Desktop\учеба\ОАиП\ДКР_5\ДКР_5_после_сортировки.txt';
  
  // Чтение из файла
  assign(f, 'C:\Users\user\Desktop\учеба\ОАиП\ДКР_5\ДКР_5_массивы.txt');
  reset(f);
  n := 0;
  while not eof(f) do
  begin
    SetLength(arr, n + 1);
    read(f, arr[n]);
    n := n + 1;
  end;
  close(f);
  
  // Выбор сортировки
  writeln('Выберите алгоритм:');
  writeln('1 - Вставками');
  writeln('2 - Слиянием');
  readln(choice);
  
  // Выбор порядка
  writeln('Порядок:');
  writeln('1 - По возрастанию');
  writeln('2 - По убыванию');
  readln(order);
  
  // Установка компаратора
  if order = 1 then
    cmp := Ascending
  else
    cmp := Descending;
  
  // Сортировка
  if choice = 1 then
    InsertionSort(arr, cmp)
  else
    MergeSort(arr, cmp);
  
  // Запись в файл
  assign(f, outputFile);
  rewrite(f);
  for i := 0 to High(arr) do
    writeln(f, arr[i]);
  close(f);
  
  writeln('Готово');
end.