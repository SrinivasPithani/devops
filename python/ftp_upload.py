import subprocess, os
from ftplib import FTP
import logging
import smtplib

#path = "/tmp/aspect_test.log"
logging.basicConfig(filename="/tmp/ftp_upload.log", level=logging.INFO, format="%(asctime)s:%(levelname)s:%(message)s")

fp = { "site": "ftp01.aotenergy.com",
       "login": "aspect_log_files",
       "password": "Asp3ct+P4$$",
       "des_folder": "aspect_log_files",
       "port": "21",
      }

def ftp_upload(f2up):
    try:
          ftp = FTP(host=fp["site"], user=fp["login"], passwd=fp["password"])
          print("AOT FTP connected ")  
          logging.info("AOT FTP Connected")
          ftp.cwd("aspect_log_files") 
          f = open(f2up, 'rb')          
          ftp.storbinary('STOR backup.tar.gz', f)
          ftp.close()
          subprocess.call('echo "AOT UPLOAD SUCCESSFUL " | mail -s "AOT FTP UPLOAD SUCCESSFUL" spithani@aspectenterprise.com', shell=True)
    except: 
          logging.info("AOT FTP connection failure") 
          #Send notification
          subprocess.call('echo "AOT FAILED UPLOAD" | mail -s "AOT FTP UPLOAD FAILED " spithani@aspectenterprise.com', shell=True)


#find the files which needs to be uploaded , zip them & name them 
subprocess.call('rsync -avz uk1as53:/var/log/aot_ftp_upload/ftp_upload.tar.gz /tmp/aot_uploads/ ', shell=True)
subprocess.call('mv /tmp/aot_uploads/backup.tar.gz /tmp/aot_uploads/test_upload_`date +'%d%m%Y'`')
f2up = "/tmp/aot_uploads/backup.tar.gz"
ftp_upload(f2up)
#update time
#date = subprocess.call("date +'%d%m%Y-%H%M'", shell=True)
