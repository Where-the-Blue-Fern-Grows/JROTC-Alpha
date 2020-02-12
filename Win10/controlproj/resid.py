import re
t1 =  open("sid.txt","r")
contents = ""
for line in t1:
    contents = contents+line

z = re.findall("\w-\w-\w-\w{2}-\w{9,}-\w{9,}-\w{9,}-\w{4,}", contents)
for x in z:
    print(x)

t2  = open("script.txt","r")
script = ""
for line in t2:
    script = script+line
t2 = open("script.txt","w")
t2.write(script.replace('PLACEHOLDER', z))
