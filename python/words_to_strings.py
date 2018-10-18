import subprocess
content = []
content = (subprocess.getoutput("ls -lrt /home/neon/Desktop/python | awk '{print $NF}'")).rsplit("\n")
#for t1 in range(len(content)):
content0 = (subprocess.getoutput("ls -lrt /home/neon/Desktop/python | awk '{print $NF}'"))
print (content0.split("\n"))
print (content0[0])
#print (content)
