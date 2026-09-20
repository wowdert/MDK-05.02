n = 0
f = 0
s = 0
while True:
    n += 1
    print(f'Студент {n}')
    a, b, c, d = map(int, input('4 оценки: ').split())
    s += a + b + c + d
    if 2 in [a, b, c, d]:
        f += 1
    ch = input('Дальше? (д/н): ')
    if ch == 'н':
        break
print(f'Неуспевающих: {f}')
print(f'Средний балл: {s / (n * 4):.1f}')