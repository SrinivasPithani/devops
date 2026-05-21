import random

attempts = 0
tobeguessed = random.randint(1, 100)

while attempts < 6:
    try:
        guess = int(input("Enter the input:"))
    except:
        print ("Only integers are allowed")
        continue
    if guess == tobeguessed:
        print ("You have guessed it correct in " + str(attempts + 1 ) + " attempts")
        break
    if guess > tobeguessed:
        print (" Thats too high" )
    else:
        print (" Thats too low" )
    attempts += 1

if attempts == 6:
    print ("You are done with your attempts , such a shame")
