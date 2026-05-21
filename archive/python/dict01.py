import subprocess
peach = subprocess.getoutput("ls -lrt /home/neon| awk '{print $NF}'")
fruits = {'yellow': "banana",
          'red': "apple",
          'pink': peach,
        }
print (fruits)

