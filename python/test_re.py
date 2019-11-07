#python3

import re
re = re.compile('[a-z]+')

m=re.match("python")
print(m)

m=re.match("3 python")
print(m)

n=re.search("3 python")
print(n)

f=re.findall("life is too short")
print(f)

p=re.finditer("life is too short")
print(p)
print("\n")


k=re.match("programming lan")
print(k)
print("-------------------------------------------")
print(k.group())
print(k.start())
print(k.end())
print(k.span())

