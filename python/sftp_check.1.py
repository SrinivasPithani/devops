import pysftp, time
import shutil, os
import configparser

# x1. Connect to SFTP with the known server key : Status : Successfull
# 2. Understand the time it takes to transfer the file : In Progress
# 3. Move the file to destniation using the system commands : TBD
# 3.1 Currently the perl script does this , it connects to FTP system , fetch the file & during this time wget is set in such a way that the destination is displayed on screen this is to extract the destination ( based on the prefix ) , this is used in the $src, $dest, $path, $suffix [Filename:: Module ] . Need to implement the same so highlight  the subtasks needed 
# 3.2 Fetch the files first to a src folder ,lets says src_test
# 3.3 
# 4. Catch the errors when the program quits : TBD
# 5. Progress bar : TBD
# 6. Logging : TBD
#
#
# Ref: https://stackoverflow.com/questions/38939454/verify-host-key-with-pysftp#43389508

#Define variables needed for the script
                                    
read_config = configparser.ConfigParser()
read_config.read("/root/kvm/python/devops/python/xsftp_conf.ini")
x1 = read_config.get("source", "sftp_servername")
x2 = read_config.get("source", "username")
x3 = read_config.get("source", "password")

# Date to be avaialble in the same format as before i.e "2019-01-08T00:00:08+0000_adc.ftp" using `date --iso-8601=seconds --utc
# For example format to be in :               2019-01-07T21:01:11+0000_rhl.ftp
# Below date is printed in following manner : 2019-01-09T10:24:28.032152
# Ref: https://www.pythoncentral.io/how-to-get-and-format-the-current-time-in-python/
ctime = time.localtime()
xtime = time.strftime('%Y-%m-%dT%H:%M+0000', ctime)
ytime = time.strftime('%Y%m%d.%H%M', ctime)
print(xtime, ytime)

d1 = read_config.get("dirs", "local_src")
d2 = read_config.get("dirs", "local_dst")
# Check if src_test/postclose directory exists , if yes then delete it as SFTP connection could fail 
def sftp_download(x1, x2, x3, content ):
    cnopts = pysftp.CnOpts()
    cnopts.hostkeys.load('/root/.ssh/known_hosts')
    with pysftp.Connection(host=x1,username=x2,password=x3, cnopts=cnopts) as conn :
        #print(conn.listdir())
        #IsDirectory Check
        #d1 = read_config.get("dirs", "local_src")
        #if os.path.isdir(d1): 
        #        print(d1 + " " + "directory exists" + "can't proceed ")
        #        #Rename the directory
        #        rename_src(d1, ytime)

        #else:
        print("Proceeding with SFTP download")
        print(content , "  from the sftp loop")
        ##conn.get_d(content , d1 , preserve_mtime=True)
        conn.close()

def rename_src(d1, ytime):
    dst = d1 + "_" + ytime
    shutil.move(d1, dst)
    print("Rename completed")
    sftp_download(x1, x2, x3)

platts_dir = []
for key, value in read_config.items("platts"):
    platts_dir=value.split(",")
    print(type(platts_dir), platts_dir)

for content in range(len(platts_dir)):
    sftp_download(x1, x2, x3, platts_dir[content])
#Copy the data from source to destination and rename the file in destination with the formatted time
# shutil.copy(src_dir, dst_dir)
# Ref: https://www.geeksforgeeks.org/rename-multiple-files-using-python/
d2 = read_config.get("dirs", "local_dst")
#shutil.copytree(src_dir, dst_dir)
print("copy in progress")
#os.system('rsync -avz {}/ {}'.format(d1, d2))
#os.system("rsync -avz {}/ {}".format(d1, d2))
print("copy is completed")

# Remember that src_dir & dst_dir shouldnt exist for the recursive copy as it fails with error " directory exists "
def dest_rename(d2, dir):
  for dir_list in range(len(dir)):
     os.chdir(d2)
     for pfile in os.listdir("postclose"):
          print("This is printed")
          #dst_filename = d2 + xtime + '_' + pfile    # dst_test/xtime_fdu.ftp
          #shutil.move(d2 + pfile, dst_filename) # renames the file from ahd.ftp to 2019-01-09T13:53+0000_ahd.ftp

dest_rename(d2, platts_dir)
# Delete the src postclose directory 
  #shutil.rmtree(src_dir)

#$ Connect to SFTP
#$ Do a recursive copy on the folders - postclose, symbols, today
#$ sync the  destination folder with renamed files and it has to be looped 

