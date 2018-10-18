num = int(input('Enter the number:'))
tri_list = []
c1 = 1
while num > 0:
    tri_list.append(c1)
    for c2 in range(len(tri_list)):
#        print (num)
        print ( "\t" , end =' ')
        print (tri_list[c2] , end=' ')
    print()
    num -= 1
    c1 += 1
#    print (c1)
