result=[]
for div in range(2000, 3000):
#    print div
    if (div % 7 == 0) and (div % 5 != 0):
        result.append(str(div))

print ':'.join(result)

