type
  toy = record
    name: string;
    price: integer;
    age: string; // например, "3-5" или "от 7 лет"
  end;
var
  shop: array[1..3] of toy;
  i: integer;
begin
  with shop[1] do
  begin
    name := 'Конструктор';
    price := 1500;
    age := '6+';
  end;
  with shop[2] do
  begin
    name := 'Кукла';
    price := 800;
    age := '3+';
  end;
  with shop[3] do
  begin
    name := 'Машинка';
    price := 450;
    age := '3-10';
  end;
  writeln('Список игрушек в продаже:');
  writeln('-----------------------------------');
  for i := 1 to 3 do
  begin
    with shop[i] do
      writeln(name:12, ' | Цена: ', price:5, ' | Возраст: ', age);
  end;
end.