import math
print('x        y')
print('~~~~~~~~~~~~~~~~~~~~')
for i in range(-40, 36):
    x = i / 5
    if -8 <= x <= 0:
        print(f'{x:6.1f}      не определено')
        continue

    if x < -6:
        y = math.pow(x, 3) * math.pow(x, (0.1 * x)) - math.cos(x)
    elif x < -5:
        y = math.pow(math.exp(x), x) - (math.sin(x) / math.cos(x))
    elif x < 5:
        y = math.pow(x, (0.1 * x)) / 45
    else:
        y = x - math.exp(x * x) / (math.sin(x) / math.cos(x))

    print(f'{x:6.1f}      {y:0.2f}')

print('~~~~~~~~~~~~~~~~~~~~')