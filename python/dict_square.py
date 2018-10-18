numbers = range(10)
sqre = {}

for n in numbers:
    if n % 2 == 0:
        sqre[n] = n**2

print (sqre)

se = [ 1, 3, 5]
print (sqre.values())

print (sqre.items())
