import sys
sum = 0
try:
    n = int(input("Enter the number:"))
except:
    print ("Only integers are allowed")
    sys.exit()

for t in range(1, (n+1)):
    if t % 2 == 0:
        continue
    sum = sum + t
print (sum)
