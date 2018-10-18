inp = input("Enter 6 number separated by commas & no space bn them:")
inp_set= inp.split(",")
int_set={int(t1) for t1 in inp_set}

print (int_set)
