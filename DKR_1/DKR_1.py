import math
x = float(input('Введите значение х: '))
error = False
if x < -6:
    if x <= -6:
        error = True
    else:
        y = math.pow(x, 3) * math.pow(x, (0.1 * x)) - math.cos(x)
elif -6 <= x < -5:
    if x <= -6 and -5 < x:
        error = True
    else:
        y = math.pow(math.exp(x), x) - (math.sin(x) / math.cos(x))
elif -5 <= x < 5:
    if x <= -5:
        error = True
    else:
        y = math.pow(x, (0.1 * x)) / 45
else:  # x >= 5
    if x <= 5:
        error = True
    else:
        y = math.pow(x, 2) / x - math.pow(math.exp(x), x) / (math.sin(x) / math.cos(x))
if error:
    print('значение x не подходит условию')
else:
    print(f'{y:.2f}')