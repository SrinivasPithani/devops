import subprocess

print(input("Enter your name:"))

proc = subprocess.Popen(['echo', 'to stdout'], stdout=subprocess.PIPE,)

val = proc.communicate()

print(repr(val[0]))
