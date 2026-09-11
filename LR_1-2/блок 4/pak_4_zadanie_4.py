A=int(input('A='))
X=int(input('X='))
if A>38 :
    S=X+(A-38)*(X/38*1.5)
else:
    S=X*(A/38)
print(S)