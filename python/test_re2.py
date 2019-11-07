#python3

import re
rec1=re.compile('a.b')

m=rec1.match('a\nb')
print(m)

rec2=re.compile('a.b',re.DOTALL)
m=rec2.match('a\nb')
print(m)


rec3=re.compile('[a-z]*',re.IGNORECASE)
n=rec3.match('DoTNOTALL')
print(n)

rec4=re.compile("^python\s\w+")
l=rec4.findall("""python one life
is too short
python two 
you need python""")
print(l)

rec4=re.compile("^python\s\w+",re.MULTILINE)
l=rec4.findall("""python one life
is too short
python two 
you need python""")
print(l)

a1=re.match('Crow|Servo','CrowHello!')
print(a1)

a2=re.search('^Life','Life is too short')
a3=re.search('Life$','My Life')
print(a2)
print(a3)

a4=re.findall("\Apython\s\w+","""python one life
is too short
python two 
you need python""",re.M)
print(a4)

p = re.compile(".+(?=:)")
m = p.search("http://google.com")
print(m.group())
