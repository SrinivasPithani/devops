import pprint 
message = "It is very productive way of orgranising things which I really need to master"

count = {}

for char in message:
     count.setdefault(char, 0)
     count[char] = count[char] + 1

text = pprint.pformat(count)
print(text)pprint

