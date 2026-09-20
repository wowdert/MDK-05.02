type
  anketa = record
    fio: string;
    birth: string;
    kurs: 1..5;
  end;

var
  students: array[1..3] of anketa;
  i: integer;

begin
  students[1].fio := 'Иванов И.И.';
  students[1].birth := '12.05.2005';
  students[1].kurs := 1;

  students[2].fio := 'Петров П.П.';
  students[2].birth := '20.08.2004';
  students[2].kurs := 2;

  students[3].fio := 'Сидорова А.С.';
  students[3].birth := '03.01.2003';
  students[3].kurs := 3;

  writeln('Ф.И.О.', ' ':10, 'Дата рожд.', ' ':5, 'Курс');
  writeln('------------------------------------------');

  for i := 1 to 3 do
  begin
    writeln(students[i].fio:15, students[i].birth:15, students[i].kurs:8);
  end;
end.