sudo chown root:root //boot/grub/grub.cfg
sudo chmod 700 //boot/grub/grub.cfg
chown root:root /etc/crontab
chmod og-rwx /etc/crontab
chown root:root /etc/cron.hourly
chmod og-rwx /etc/cron.hourly
chown root:root /etc/cron.daily
chmod og-rwx /etc/cron.daily
chown root:root /etc/cron.weekly
chmod og-rwx /etc/cron.weekly
chown root:root /etc/cron.monthly
chmod og-rwx /etc/cron.monthly
chown root:root /etc/cron.d
chmod og-rwx /etc/cron.d
rm /etc/cron.deny
rm /etc/at.deny
touch /etc/cron.allow
touch /etc/at.allow
chmod og-rwx /etc/cron.allow
chmod og-rwx /etc/at.allow
chown root:root /etc/cron.allow
chown root:root /etc/at.allow
chown root:root //etc/passwd
chmod 700 //etc/passwd
chown root:shadow //etc/shadow
chmod o-rwx,g-wx //etc/shadow
chown root:root //etc/group
chmod 700 //etc/group
chown root:shadow //etc/gshadow
chmod o-rwx,g-rw //etc/gshadow
chown root:root //etc/passwd-
chmod u-x,go-wx //etc/passwd-
chown root:root //etc/shadow-
chown root:shadow //etc/shadow-
chmod o-rwx,g-rw //etc/shadow-
chown root:root //etc/group-
chmod u-x,go-wx //etc/group-
chown root:root //etc/gshadow-
chown root:shadow /etc/gshadow-    
chmod o-rwx,g-rw //etc/gshadow-
chown root:root //etc/motd
chmod 700 //etc/motd
chown root:root //etc/issue
chmod 700 //etc/issue
chown root:root //etc/issue.net
chmod 700 //etc/issue.net
chown root:root //etc/hosts.allow
chmod 700 //etc/hosts.allow
chown root:root //etc/hosts.deny
chmod 700 //etc/hosts.deny
