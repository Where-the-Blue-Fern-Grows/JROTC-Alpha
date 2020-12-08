#This script does 4 things:
#1. Retrieve list of all USER SIDs (Not system-generated accounts)
#2. For each SID, spit out full set of .regs from template .regs, but with SID inserted to key paths
#3. Creates a batch script that runs the .regs
#4. Executes batch script with administrator privileges

import re

#transfers txt file containing SIDs into var sid
open1 = open("sid.txt","r")
sid = ""
for line in open1:
    sid = sid+line
print(contents)

#matches to user SIDs. var x is lone string of SID. Prints to console
z = re.findall("\w-\w-\w-\w{2}-\w{9,}-\w{9,}-\w{9,}-\w{4,}", contents)
for x in z:
    print(x)


open2 = open("dotreg1.txt","r")
dotreg1 = ""
for line in open2:
    script = script+line
t2 = open("script.txt","w")
t2.write(script.replace('PLACEHOLDER', z))
