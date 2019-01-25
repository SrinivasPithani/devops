import urllib.request as ureq
import urllib.error as uerr

u = "https://concord.myaspect.net"

uresp = ureq.urlopen(u)

print(uresp.read)
