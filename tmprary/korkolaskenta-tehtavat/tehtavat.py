def nykyarvo(K,q,n):
    return K/(q**n)

def erienNykyarvo(erat, q):
    n = 0
    for i, K in enumerate(erat):
        n += nykyarvo(K,q,i)
    return n

print(erienNykyarvo([0,200,300,400,500,600],1.045 ))

print(erienNykyarvo([64000,54000,30000],1.04))

print(erienNykyarvo([64000,54000,30000],1.01))

print(erienNykyarvo([7000, 5000, 3500],1.045))
