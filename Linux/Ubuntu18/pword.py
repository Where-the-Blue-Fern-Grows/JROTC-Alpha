users = []
print("Enter name of users (Type \"Done\" when done):")
while True:
                newuser = input("")
                if newuser == "Done":
                                print(users)
                                r=input("Is this right? [y/n]\n")
                                if r == "y":
                                                break
                else:
                                users.append(newuser)
mp=input("Enter a master password:\n")
f = open("script.txt", "w")
f.write("")
f.close()
for x in users:
                cmd=("echo -e \"%s\\n%s\" | sudo passwd %s\n") % (mp, mp, x)
                f = open("script.txt", "a")
                f.write(cmd)
                f.close()
                
