import os
#Test print
print ("Hello World")

#OS values 
uname = os.uname()
print uname
get_login = os.getlogin()
print get_login
getcwd = os.getcwd()
print getcwd

#This part renames the file/dir
os.rename("/home/neon/Desktop/apple","/home/neon/Desktop/banana")
