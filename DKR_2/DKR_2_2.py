s1 = input("введите строку: ")
s2 = input("какую строку на последоватльность вы хотите проверить?: ")

def str_len(s):
    count = 0
    for char in s:
        count += 1
    return count
len1 = str_len(s1)
len2 = str_len(s2)
if len2 == 0:
    print("да, является подпоследовательностью")
elif len2 > len1:
    print("ошибка, строка слишком длинная")
else:
    i = 0
    j = 0
    list1 = []
    for char in s1:
        list1.append(char)
    list2 = []
    for char in s2:
        list2.append(char)
    while i < len1 and j < len2:
        if list1[i] == list2[j]:
            j += 1
        i += 1
    if j == len2:
        print("да, является подпоследовательностью")
    else:
        print("нет, не является подпоследовательностью")
