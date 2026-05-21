import pysftp, time
import shutil, os
import configparser, logging
                                    
read_config = configparser.ConfigParser()
read_config.read("/root/kvm/python/devops/python/xsftp_conf.ini")
x1 = read_config.get("source", "sftp_servername")
x2 = read_config.get("source", "username")
x3 = read_config.get("source", "password")

ctime = time.localtime()
xtime = time.strftime('%Y-%m-%dT%H:%M:%S+0000', ctime)
ytime = time.strftime('%Y%m%d.%H%M', ctime)
print(xtime, ytime)

d1 = read_config.get("dirs", "local_src")
d2 = read_config.get("dirs", "local_dst")
def sftp_download(x1, x2, x3, content ):
    cnopts = pysftp.CnOpts()
    cnopts.hostkeys.load('/root/.ssh/known_hosts')
    with pysftp.Connection(host=x1,username=x2,password=x3, cnopts=cnopts) as conn :
        print("Proceeding with SFTP download")
        print(content , "  from the sftp loop")
        f1 = str.join("/",(d1,content)) 
        if os.path.exists(f1):
           #print("do nothing")
           conn.get_d(content , f1 , preserve_mtime=True)
           conn.close()
        else:
           #print("None")
           os.mkdir(f1)
           conn.get_d(content , f1 , preserve_mtime=True)
           conn.close()

# This is for platts , we need three directories to be downloaded - postclose, symbol, today. They will be collected in a list
platts_dir = []
for key, value in read_config.items("platts"):
    platts_dir=value.split(",")
    print(type(platts_dir), platts_dir)

for content in range(len(platts_dir)):
    if platts_dir[content].startswith("post"):
       sftp_download(x1, x2, x3, platts_dir[content])

#shutil.copytree(src_dir, dst_dir)
print("copy in progress")
#os.system('rsync -avz {}/ {}'.format(d1, d2))
os.system("rsync -avz {}/ {}".format(d1, d2))
print("copy is completed")

# Remember that src_dir & dst_dir shouldnt exist for the recursive copy as it fails with error " directory exists "
def dest_rename(d2, dir):
  for dir_list in range(len(dir)):
     os.chdir(d2)
     print(d2)
     if dir[dir_list].startswith("post"):
        d3 = str.join("/", (d2, dir[dir_list])) + "/"
        for pfile in os.listdir(d3):
           print("This is printed")
           dst_filename = d3 + xtime + '_' + pfile    # dst_test/xtime_fdu.ftp
           shutil.move(d3 + pfile, dst_filename) # renames the file from ahd.ftp to 2019-01-09T13:53+0000_ahd.ftp
     else:
        print("{} is ignored ".format(dir[dir_list]))

dest_rename(d2, platts_dir)
# Delete the src postclose directory 
  #shutil.rmtree(src_dir)
# function to delete the files 
def del_files(params):
   os.chdir(params)
   for pfile in directory:
      #go the directory
      os.chdir(params)
      os.system("rm -f {}".format(pfile))


#Pending - Delete the source directory files, logging has to be updated , scheduler to be run 
