S=input('Введите координату клетки: ')
C=ord(S[0]) - ord('A') + 1
R=int(S[1])
if (C+R) % 2 == 0:
    print('BLACK')
else:
    print('WHITE')