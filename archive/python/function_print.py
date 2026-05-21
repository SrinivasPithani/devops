def print_name(name):
    global eggs 
    eggs = 100
    print ("Hey you are now " + str(eggs) )

print_name('Srini')
print_name('Spandu')
global eggs
eggs = 99
print (eggs)
