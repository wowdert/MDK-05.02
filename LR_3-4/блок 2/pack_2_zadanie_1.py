a = int(input('введите сумму вклада: '))
print('месяц    вклад')
print('~~~~~~~~~~~~~~~~~')
m = 1
while m <= 12:
    a = a * 1.05
    print(m, '         ', a)
    m = m + 1
print('~~~~~~~~~~~~~~~~~')
input()