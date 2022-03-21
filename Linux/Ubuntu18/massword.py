#Edited in nano. Will not work in IDLE.

import subprocess

password_prefix = "CYPAT$$sec23alpha"

currentUser = subprocess.run(['whoami'],capture_output=True,text=True).stdout.rstrip() 
if currentUser != "root": #Check if script is being run with root privileges
	print("\nWARNING: Run this script as root! Exiting...\n")
	exit()
else: input("\nWarning: run \"su root\" before running this script or you will encounter errors.\nPress enter to continue or Ctrl+C to exit...") #Even if we check the EUID, we cannot detect if they are using sudo, which will give an error.

print("\nDetecting real users...\n")
shells = [ x for x in subprocess.run(['cat','/etc/shells'],capture_output=True,text=True).stdout.split("\n") if x and x[0] != "#" ] #Get a list of actual usable shells, rather than guessing which ones are used by system accounts to prevent login
users = dict()

cmd = subprocess.run(['cat','/etc/passwd'],capture_output=True,text=True) #Grab list of "real" users from /etc/passwd, from if they have a login shell or not.
output = cmd.stdout.split("\n")
for user in output:
	lines = user.split(":")
	if len(lines) > 0:
		username = lines[0].rstrip()
		login_shell = lines[-1].rstrip()
		if login_shell in shells and username != currentUser:
			users[username] = password_prefix+username

def users_subject():
	print("\nUsers selected for password change:", ', '.join(users.keys()))

while True: #Prompt to remove the main user
	users_subject()
	main_user = input("Type the name of the main user as specified in the README:\nWARNING: Do not f*dge this up.\n> ").lower()
	if main_user in users:
		del users[main_user]
		break
	elif main_user not in users:
		print("Invalid user.\n")

while True: #Prompt to remove any additional users that may have snuck into the list
	users_subject()
	choice = input("Are there any users that should be excluded this list? Type the name. If there are none, type \"none\".\n> ").lower()
	if choice == "none": break
	elif choice in users:
		del users[choice]
	else:
		print("Invalid input.\n")

print("FINAL:")
users_subject()

while True: #Change the prefix from the default if need be
	print("\nCurrent password prefix: "+password_prefix)
	choice = input("Is this correct? [Y/n]\n> ").lower()
	if choice == "y": break
	elif choice == "n": password_prefix = str(input("Type new prefix: \n> "))
	else: print("Invalid input.\n")
for user in users: users[user] = password_prefix+user

subprocess.run(['mkdir','/usr/share/massword'],stderr=subprocess.DEVNULL) #Send stderr to /dev/null to ignore errors because this may not be the 1st time running the script
with open("/usr/share/massword/prefix","w") as file: file.write(password_prefix) #Create a new folder in /usr/share and save the prefix inside of it, in case of a lockout and the prefix has been forgotten
print("Prefix saved to /usr/share/massword/prefix.\n")

print("\nChanging passwords...\n")

for user in users: #Change the passwords 1 by 1 with chpasswd
	echo = subprocess.run(['echo',user+':'+users[user]],capture_output=True)
	print("Changing "+user+"'s password to "+users[user]+"...")
	chpasswdcmd = subprocess.run('chpasswd',input=echo.stdout)
	if chpasswdcmd.returncode != 0:
		print("Something went wrong lol. Exiting...")
		exit()
	elif chpasswdcmd.returncode == 0: print("Success.")

print("\nAll passwords changed. Have a great day! Free Hong Kong.\n")
