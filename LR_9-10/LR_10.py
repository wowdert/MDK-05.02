import random

N = 8


def main():
    # Инициализация матрицы
    a = [[0] * N for _ in range(N)]
    b = [0] * N

    # Заполнение матрицы случайными числами от 0 до 9
    random.seed()  # аналог Randomize в Pascal

    for i in range(N):
        for j in range(N):
            a[i][j] = random.randint(0, 9)

    # Вывод матрицы
    print('Матрица:')
    for i in range(N):
        for j in range(N):
            print(f'{a[i][j]:3}', end='')
        print()

    # Обработка строк матрицы
    for i in range(N):
        found = False
        # Проверяем пары соседних элементов в строке
        for j in range(N - 1):
            if a[i][j] + a[i][j + 1] == 7:
                found = True
                break  # можно прервать цикл, если нашли пару

        if found:
            b[i] = 1
        else:
            b[i] = -1

    # Вывод результата
    print('Результат:')
    for i in range(N):
        print(f'{b[i]:3}', end='')
    print()


if __name__ == "__main__":
    main()