import random
a=[random.randint(-52,65) for _ in range(20)]
print(a)
max_val=a[0]
max_idx=0
for i in range(1, 20):
    if a[i]>max_val:
        max_val=a[i]
        max_idx=i
print(f'максимум {max_val} (номер {max_idx+1})')
min_p=100
min_p_idx=-1
for i in range(20):
    if a[i]>0 and a[i]<min_p:
        min_p=a[i]
        min_p_idx=i
if min_p_idx!=-1:
    print(f'мин. положительный:  {min_p} (номер  {min_p_idx+1})')
else:
    print('нет положительных')
last_5=-1
for i in range(20):
    if a[i]%5==0:
        last_5=i
if last_5!=-1:
    print(f'посследний кратный 5:  {last_5} (номер  {last_5+1})')
else:
    print('нет кратных 5')