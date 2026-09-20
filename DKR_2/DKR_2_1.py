n = int(input("Сколько чисел в массиве? "))
arr = []
for i in range(n):
    num = int(input(f"Число {i+1}: "))
    arr.append(num)
a = int(input("Сколько чисел в последовательности? "))
seq = []
for i in range(a):
    num = int(input(f"Число последовательности {i+1}: "))
    seq.append(num)
if a == 0:
    print("Да, пустая последовательность есть")
elif a > n:
    print("Нет, последовательность слишком длинная")
else:
    found = False
    for i in range(n - a + 1):
        match = True
        for j in range(a):
            if arr[i + j] != seq[j]:
                match = False
                break
        if match:
            found = True
            print(f"Да, найдена с позиции {i+1}")
            break
    if not found:
        print("Нет, последовательность не найдена")
