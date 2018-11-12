import re

string_tomatch = "ok this is now 14:34 and we have to acheive 13:20"

#mo = re.search(r'\d\d:\d\d' , string_tomatch)
#print(mo.group())

mo = re.search(r'i?', "piiiggiiiy")
print(mo.group())

mao = re.findall(r'[\w.-]+@[\w.-]+', "Now this is my email id-it@id.com and id@ii.com")
print(mao)
stri = "this is id-it@ms.com and it-iw@iy.com"

mai = re.findall(r'[\w.-]+@[\w.-]+', stri)
print(mai)
