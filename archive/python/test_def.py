import os, shutil
import time
#Copy the data from source to destination and rename the file in destination with the formatted time
ctime = time.localtime()
xtime = time.strftime('%Y-%m-%dT%H:%M+0000', ctime)

src_dir = '/root/kvm/python/devops/python/src_test/postclose/'
dst_dir = '/root/kvm/python/devops/python/dst_test/'
# shutil.copy(src_dir, dst_dir)
# Ref: https://www.geeksforgeeks.org/rename-multiple-files-using-python/
shutil.copytree(src_dir, dst_dir)
print("copy is completed")

# Remember that src_dir & dst_dir shouldnt exist for the recursive copy as it fails with error " directory exists "
for pfile in os.listdir(dst_dir):
  print(pfile)
  dst_filename = dst_dir + xtime + '_' + pfile    # dst_test/xtime_fdu.ftp
  #shutil.copy(pfile , dst_dir)
  shutil.move(dst_dir + pfile, dst_filename)
  #print(src_filename, dst_filename)
