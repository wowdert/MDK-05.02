n=int(input('введите количество судей: '))
s = 0
min = 10
max = 0
for i in range(n):
    x = int(input('введите оценки судей: '))
    s += x
    if x > max:
        max = x
    if x < min:
        min = x
s = s - min - max
print(f'{s/(n-2):.1f}')
