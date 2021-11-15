#Run as root
#Loop through /etc/passwd
#Create set of usernames, excluding ones with no shell (/usr/sbin/nologin, /bin/false, /bin/sync)
#Discard "whoami" output from set
#Loop through set, creating a password with the template "JROTC$$cp18alpha"+username
#Echo each user:password into chpasswd

