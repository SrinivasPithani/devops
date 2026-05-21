import random
set1 = set()
set2 = set()

for t1 in range(5):
    set1.add(random.randint(1,6))
    set2.add(random.randint(1,6))
print (set1, set2)
print ("So you have these numbers {} in common".format(set1.intersection(set2)))
