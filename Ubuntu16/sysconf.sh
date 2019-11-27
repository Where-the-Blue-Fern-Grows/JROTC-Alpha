#uninstall potentially unwanted filesystems
rmmod cramfs
rmmod freevxfs
rmmod jffs2
rmmod hfs
rmmod hfsplus
rmmod udf

#no idea what this does yet
df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type d \( -perm -0002 -a ! -perm -1000 \) 2>/dev/null

#nor this
systemctl is-enabled autofs

#intrusion detection enabled
aideinit

#configure common-auth
sudo chmod 702 //etc/pam.d/common-auth
echo "auth required pam_tally2.so file=/var/log/tallylog deny=5 even_deny_root\ unlock_time=900" >> //etc/pam.d/common-auth
sudo chmod 700 //etc/pam.d/common-auth

#configure password complexity requirements
sudo chmod 702 //etc/pam.d/common-password
sudo sed -i '/obscure sha512/aremember=5\nminlen=15\nucredit=-1\nlcredit=-1\ndcredit=-1\nocredit=-'//etc/pam.d/common-password
sudo chmod 700 //etc/pam.d/common-password

#enable auditing
sudo auditctl -e 1

#dunno what this does
sudo sysctl -p

#configure sysctl.conf

