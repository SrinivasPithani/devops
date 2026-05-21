import random
toGuess = random.randint(1,50)
print ("Enter the number between 1-50 to be guessed: " )
numGuesses = 0

while numGuesses < 5 :
    #String check 
    numGuessed = input()
    if isinstance(numGuessed, str):
        print ("Enter numbers only - No strings allowed")
    else:
        numGuessed = int(numGuessed)
    
    #Guess number check 
    if numGuessed > toGuess:
        print ("The number guessed is high")
    if numGuessed < toGuess:
        print ("The number guessed is low")
    numGuesses = numGuesses + 1
    #print numGuesses
    if toGuess == numGuessed:
        print "You have guessed correctly in " , numGuesses ," guesses"
        numGuesses = 6

if numGuesses == 6:
    print "Such a shame, the number was ", toGuess

