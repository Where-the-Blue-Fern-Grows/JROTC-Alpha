rmmod cramfs
rmmod freevxfs
rmmod jffs2
rmmod hfs
rmmod hfsplus
rmmod udf

df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type d \( -perm -0002 -a ! -perm -1000 \) 2>/dev/null

systemctl is-enabled autofs

aideinit

sudo chmod 702 //etc/pam.d/common-auth

echo auth required pam_tally2.so file=/var/log/tallylog deny=5 even_deny_root\ unlock_time=900 >> //etc/pam.d/common-auth

sudo chmod 702 //etc/pam.d/common-password

sudo sed -i '/obscure sha512/aremember=5\nminlen=15\nucredit=-1\nlcredit=-1\ndcredit=-1\nocredit=-'//etc/pam.d/common-password
