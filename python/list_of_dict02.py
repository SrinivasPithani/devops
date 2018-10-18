def crtsturep(nmlist, sublist, mrklist):
    stu_rep = {  "Name": nmlist,
                 "Subjects": sublist,
                 "Marks": mrklist,
               }
    return stu_rep

nm = input("Enter the name of the student:")
sub = input("Enter the subs with commas separating:")
mrk = input("Enter the marks with commans:")

sublist = sub.split(",")
mrklist = mrk.split(",")

print (crtsturep(nm, sublist, mrklist))
                    

