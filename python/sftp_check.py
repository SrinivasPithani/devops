import pysftp, time
import shutil, os

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
config = {
            "platts_postclose" : "postclose",
            "platts_symbols"   : "symbols",
            "
                                    
src_dir = '/root/kvm/python/devops/python/src_test/postclose/'
dst_dir = '/root/kvm/python/devops/python/dst_test/'
platts_dir = ["postclose", "symbols" ]

cnopts = pysftp.CnOpts()
cnopts.hostkeys.load('/root/.ssh/known_hosts')
# Check if src_test/postclose directory exists , if yes then delete it as SFTP connection could fail 
with pysftp.Connection(host="sftp.platts.com",username="plt_aspect",password="ftp59562", cnopts=cnopts) as conn :
        print(conn.listdir())
        conn.get_r('postclose', 'src_dir', preserve_mtime=True)
        conn.close()

# Date to be avaialble in the same format as before i.e "2019-01-08T00:00:08+0000_adc.ftp" using `date --iso-8601=seconds --utc
# For example format to be in :               2019-01-07T21:01:11+0000_rhl.ftp
# Below date is printed in following manner : 2019-01-09T10:24:28.032152
# Ref: https://www.pythoncentral.io/how-to-get-and-format-the-current-time-in-python/
ctime = time.localtime()
xtime = time.strftime('%Y-%m-%dT%H:%M+0000', ctime)
print(xtime)

#Copy the data from source to destination and rename the file in destination with the formatted time
# shutil.copy(src_dir, dst_dir)
# Ref: https://www.geeksforgeeks.org/rename-multiple-files-using-python/
shutil.copytree(src_dir, dst_dir)
print("copy is completed")

# Remember that src_dir & dst_dir shouldnt exist for the recursive copy as it fails with error " directory exists "
for pfile in os.listdir(dst_dir):
  print(pfile)
  dst_filename = dst_dir + xtime + '_' + pfile    # dst_test/xtime_fdu.ftp
  shutil.move(dst_dir + pfile, dst_filename) # renames the file from ahd.ftp to 2019-01-09T13:53+0000_ahd.ftp

# Delete the src postclose directory 
  shutil.rmtree(src_dir)
