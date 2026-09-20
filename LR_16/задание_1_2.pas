type
  anketa = record
    fio: string;
    birth: string;
    kurs: 1..5;
  end;
var
  student: anketa;
begin
  student.fio := 'Иванов Иван Иванович';
  student.birth := '01.01.2005';
  student.kurs := 2;
  writeln('Ф.И.О.: ', student.fio);
  writeln('Дата рождения: ', student.birth);
  writeln('Курс: ', student.kurs);
end.