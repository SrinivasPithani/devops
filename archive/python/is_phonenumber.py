#print if 111-222-333 is a valid phone number
def checkPhonenumber(number):
    if len(number) != 7:
        print ("incorrect format")
        return False
    for t1 in range(0, 3):
        if number[t1].isdecimal():
            print (number[t1])
        return True
    if number[3] == "-":
        return True
    for t2 in range(4,7):
        if number[t2].isdecimal():
            return True

            
if checkPhonenumber('1a1-222'):
    print ("Number exists")
else:
    print ("Number dont't exist")
