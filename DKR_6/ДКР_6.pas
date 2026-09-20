uses crt;
const
  MAX_SIZE = 5;

type
  TNode = record
    data: integer;
    prev: integer;
    next: integer;
    isUsed: boolean;
  end;

var
  List: array[1..MAX_SIZE ] of TNode;
  head, tail: integer;
  choice, val: integer;

procedure InitList; //подготовка к работе (обнуляет head и tail)
var i: integer;
begin
  head := 0;
  tail := 0;
  for i := 1 to MAX_SIZE do 
    List[i].isUsed := false;
end;

function FindFreeSlot: integer; //поиск свободного места
var i: integer;
begin
  Result := 0;
  for i := 1 to MAX_SIZE do
    if not List[i].isUsed then 
      begin 
      Result := i;
      exit;
      end;
end;

//Добавление в начало
procedure AddToHead(value: integer);
var slot: integer;
begin
  slot := FindFreeSlot;
  if slot = 0 then 
    begin 
    println('Мест нет!');
    exit; 
    end;

  List[slot].data := value; //запись числа в найденую ячейку
  List[slot].isUsed := true; // отметка что ячейка занята
  List[slot].prev := 0;    
  List[slot].next := head;   

  if head <> 0 then
    List[head].prev := slot  
  else
    tail := slot;  

  head := slot;    
  println('Добавлено в начало.');
end;

procedure AddToTail(value: integer); //добавление в конец
var slot: integer;
begin
  slot := FindFreeSlot;
  if slot = 0 then 
    begin 
    println('Мест нет!'); 
    exit;
    end;
  List[slot].data := value;
  List[slot].isUsed := true;
  List[slot].next := 0;
  List[slot].prev := tail;
  if tail <> 0 then 
    List[tail].next := slot 
    else head := slot;
  tail := slot;
  println('Добавлено в конец.');
end;

procedure DeleteValue(value: integer); //удаление элемента
var curr: integer;
begin
  curr := head;
  while curr <> 0 do
  begin
    if List[curr].data = value then //если  элемент найден
    begin
      if List[curr].prev <> 0 then 
        List[List[curr].prev].next := List[curr].next 
        else 
          head := List[curr].next; // если удаляется первый элемент
      if List[curr].next <> 0 then 
        List[List[curr].next].prev := List[curr].prev 
        else 
          tail := List[curr].prev; // если удаляем последний элемент
      List[curr].isUsed := false;
      println('Удалено.'); 
      exit;
    end;
    curr := List[curr].next;
  end;
  println('Не найдено.');
end;

procedure PrintList; // вывод списка
var curr: integer;
begin
  curr := head;
  if curr = 0 then 
    begin 
      println('Список пуст'); 
      exit; 
    end;
  
  while curr <> 0 do
  begin
    print('[', List[curr].data, ']');
    curr := List[curr].next;
    if curr <> 0 then 
      print(' <-> '); 
  end;
  println;
end;

begin
  InitList;
  repeat
    println('--- МЕНЮ ---');
    println('1. Добавить элемент в начало');
    println('2. Добавить элемент в конец');
    println('3. Удалить по значению');
    println('4. Вывести список');
    println('0. Выход');
    print('Выбор: '); readln(choice);

    case choice of
      1: begin 
        print('Число: '); 
        readln(val); 
        AddToHead(val); 
      end;
      2: begin 
        print('Число: '); 
        readln(val); 
        AddToTail(val); 
      end;
      3: begin 
        print('Число: '); 
        readln(val); 
        DeleteValue(val); 
      end;
      4: PrintList;
    end;
    println;
  until choice = 0;
end.