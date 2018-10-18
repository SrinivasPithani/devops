num = int(input('Enter the number:'))
tri_list = []
while num > 0:
    tri_list.append(num)
    for c2 in range(len(tri_list)):
        print (tri_list[c2], end=' ')
    print()
    num -= 1
