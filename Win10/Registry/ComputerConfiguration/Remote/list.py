import os
list = [f for f in os.listdir('.') if os.path.isfile(f)]
s = open("gp.bat","a")
for x in list:
    line = "regedit.exe /s %~dp0/{0}\n".format(x)
    s.write(line)
s.close()
with open("gp.bat","r") as f:
    lines = f.readlines()
with open("gp.bat","w") as f:
    for x in lines:
        if x.strip("\n") != "regedit.exe /s %~dp0/list.py":
            f.write(x)
