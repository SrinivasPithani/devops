import configparser
import sys

read_config = configparser.ConfigParser()
read_config.read("xsftp_conf.ini")
#x1 = read_config.get("source", "sftp_servername")
x1 = read_config.get("platts", "platts")
x2 = read_config.items("platts")
print(type(x1), x1)
print(x2)

for key, value in x2:
      list = value.split(",")
      print(type(list))

