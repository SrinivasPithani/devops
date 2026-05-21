# This app gives user flexibility to add students, retreive student info & print info

choice = print (input("What you want to do ? pr -> print, add -> add info, modify --> mod \n"))

def print_student_info():
    i = "fine"
    print ("ID:{}".format(i))
    print(i)


if choice == "pr":
    print_student_info()
elif choice == "add" :
    add_student_info()
elif choice == "mod" :
    od_student_info()
