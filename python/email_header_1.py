#!/usr/bin/python2
from email import message
import smtplib

#Email body part
m1 = message.Message()
m1.add_header('From','spithani@aspectenterprise.com')
m1.add_header('To','spithani@aspectenterprise.com')
m1.add_header('Subject','Test for header check02 ')
m1.add_header('X-Test', 'MFA Testing message')
m1.set_payload('Test and go \n')
print(m1.as_string())

#Email sending part 
sender='spithani@aspectenterprise.com'
#recipients = "spithani@aspectenterprise.com"
recipients = "srini.ondroid@gmail.com"
s = smtplib.SMTP('mailhost.oilspace.net:25')
#s = smtplib.SMTP('localhost')
s.sendmail(sender, recipients, m1.as_string())
s.quit
