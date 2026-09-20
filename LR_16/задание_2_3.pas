begin
  var text := 'яблоко банан груша яблоко апельсин банан яблоко';
  var words := text.ToLower.ToWords;
  var uniqueWords := new List<string>;
  foreach var w in words do
    if not uniqueWords.Contains(w) then
      uniqueWords.Add(w);
  uniqueWords.Sort;
  writeln('Алфавитный список слов:');
  uniqueWords.PrintLn;
  writeln;
  writeln('Количество различных слов: ', uniqueWords.Count);
end.