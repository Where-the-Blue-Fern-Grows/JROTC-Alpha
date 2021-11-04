import re
workingString = "sudo apt-get purge -y"
parsefile = open("packageparse.txt","r")
for line in parsefile:
    x = re.split("'",line)
    if x[1] != "en":
        workingString += " "+x[1]
print(workingString)
