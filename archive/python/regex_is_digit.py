import re
string = "   link/ether 08:00:27:5d:65:c2 brd ff:ff:ff:ff:ff:ff \
    inet6 fe80::a00:27ff:fe5d:65c2/64 scope link \
           valid_lft forever preferred_lft forever"

ip = "net 127.0.0.1/8 scope h ct 15 17:59:29 db0 NetworkManager[329]: <info>  [1539622769.1679] dhcp4 (enp0s3):   address 10.0.2.15\
Oct 15 17:59:29 db0 NetworkManager[329]: <info>  [1539622769.1692] dhcp4 (enp0s3):   plen 24 (255.255.255.0)\
Oct 15 17:59:29 db0 NetworkManager[329]: <info>  [1539622769.1692] dhcp4 (enp0s3):   gateway 10.0.2.2\
Oct 15 17:59:29 db0 NetworkManager[329]: <info>  [1539622769.1693] dhcp4 (enp0s3):   server identifier 10.0.2.2\
Oct 15 17:59:29 db0 NetworkManager[329]: <info>  [1539622769.1693] dhcp4 (enp0s3):   lease time 86400\
Oct 15 17:59:29 db0 NetworkManager[329]: <infi " 

regobj = re.compile(r'\d\d\d-\d\d\d\d')
matchobj = regobj.search("This has 123-1234 & 123-123 & 789-0953")
matchobjx = regobj.findall("This has 123-2341 & 230-894 & 983-2983")
regex_mac = r"([0-9]+:|[0-9][a-z]:+|[a-z][0-9]+)+"
regex_ip = r"(\d+.\d+.\d+.\d+)"
matchobj = re.search(regex_mac, string)
matchip = re.findall(regex_ip, ip)
#matchobj = re.search(regex, "Jan     10.12.1912")
if matchip != None :
    print (matchip.group())
else:
    print ("Match not found")
