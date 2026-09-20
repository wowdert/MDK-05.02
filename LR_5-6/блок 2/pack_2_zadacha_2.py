def check_descending_order_safe():
    try:
        n = int(input('Введите размер массива: '))
        if n <= 0:
            print('Размер массива должен быть положительным числом!')
            return
        arr = []
        print('Введите элементы массива:')
        for i in range(n):
            while True:
                try:
                    element = int(input(f'Элемент {i + 1}: '))
                    arr.append(element)
                    break
                except ValueError:
                    print('Ошибка! Введите целое число.')
        print('Введенный массив:')
        print(' '.join(map(str, arr)))
        is_descending = all(arr[i] >= arr[i + 1] for i in range(len(arr) - 1))
        if is_descending:
            print('Массив упорядочен по убыванию.')
        else:
            print('Массив НЕ упорядочен по убыванию.')
    except ValueError:
        print('Ошибка! Введите целое число для размера массива.')
check_descending_order_safe()