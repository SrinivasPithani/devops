import smtplib
import time

server = "mail.aspectenterprise.com"
sender = "pithani@aspectenterprise.com"
recipients = "srini.ondroid@gmail.com"

message = "From: me@example.com\nSubject: Test email "
session = smtplib.SMTP(server)
session.sendmail(sender,recipients,message)
session.quit()
