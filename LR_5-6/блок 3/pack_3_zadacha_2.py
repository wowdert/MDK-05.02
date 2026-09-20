import random
arr = []
n = 20
print('Исходный массив:')
for i in range(n):
    arr.append(random.randint(-50, 50))
    print(arr[i], end=' ')
print()
j = 0
for i in range(n):
    if arr[i] >= 0:
        arr[j] = arr[i]
        j += 1
print('Массив после удаления:')
if j > 0:
    for i in range(j):
        print(arr[i], end=' ')
    print()
    print(f'Количество элементов: {j}')
else:
    print('Все элементы были отрицательными')


