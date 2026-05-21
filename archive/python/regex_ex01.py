import re
match = "ok we have a meeting at 4:00 & I need to send email to srini_ondroid@gmail.com \
         ,along with this I need to send email to Idt@id.com idt123@i123.com"
mo = re.findall(r'\d:\d\d', match)
mail_mo = re.findall(r'[\w+-_]+@[\w+.]+', match)

stx = "This is not that"
mostx = re.findall(r'this', stx,re.IGNORECASE)
print (mostx)

#Print the number of matches
print("The number of email matches are " + str(len(mail_mo)) )
#Print the list
for items in range(len(mail_mo)):
      print (mail_mo[items])

#Open up a file

fo = open('testfile.txt', 'r')

#mo_mail = re.findall(r'[\w+-_]+@[\w+.]+', fo.read())

#for items in range(len(mo_mail)):
#      print(mo_mail[items].split("\n"))
