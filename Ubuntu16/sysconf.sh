#uninstall potentially unwanted filesystems
rmmod cramfs
rmmod freevxfs
rmmod jffs2
rmmod hfs
rmmod hfsplus
rmmod udf

#nor this
systemctl is-enabled autofs

#intrusion detection enabled
aideinit

#configure common-auth
sudo chmod 702 //etc/pam.d/common-auth
echo "auth required pam_tally2.so file=/var/log/tallylog deny=5 even_deny_root\ unlock_time=900" >> //etc/pam.d/common-auth
sudo chmod 700 //etc/pam.d/common-auth

#enable auditing
sudo auditctl -e 1

#configure sysctl.conf
sudo chmod 702 //etc/sysctl.conf
#ip spoofing protection
echo "net.ipv4.conf.default.rp_filter = 1" >> //etc/sysctl.conf
echo "net.ipv4.conf.all.rp_filter = 1" >> //etc/sysctl.conf
#block syn attacks
echo "net.ipv4.tcp_syncookies = 1" >> //etc/sysctl.conf
echo "net.ipv4.tcp_max_syn_backlog = 2048" >> //etc/sysctl.conf
echo "net.ipv4.tcp_synack_retries = 2" >> //etc/sysctl.conf
echo "net.ipv4.tcp_syn_retries = 5" >> //etc/sysctl.conf
#control ip packet forwarding
echo "net.ipv4.ip_forward = 0" >> //etc/sysctl.conf
#ignore icmp redirects
echo "net.ipv4.conf.all.accept_redirects = 0" >> //etc/sysctl.conf
echo "net.ipv6.conf.all.accept_redirects = 0" >> //etc/sysctl.conf
echo "net.ipv4.conf.default.accept_redirects = 0" >> //etc/sysctl.conf
echo "net.ipv6.conf.default.accept_redirects = 0" >> //etc/sysctl.conf
#ignore send redirects
echo "net.ipv4.conf.all.send_redirects = 0" >> //etc/sysctl.conf
echo "net.ipv4.conf.default.send_redirects = 0" >> //etc/sysctl.conf
#disable source packet routing
echo "net.ipv4.conf.all.accept_source_route = 0" >> //etc/sysctl.conf
echo "net.ipv6.conf.all.accept_source_route = 0" >> //etc/sysctl.conf
echo "net.ipv4.conf.default.accept_source_route = 0" >> //etc/sysctl.conf
echo "net.ipv6.conf.default.accept_source_route = 0" >> //etc/sysctl.conf
#log martians
echo "net.ipv4.conf.all.log_martians = 1" >> //etc/sysctl.conf
echo "net.ipv4.icmp_ignore_bogus_error_responses = 1" >> //etc/sysctl.conf
#ignore icmp broadcast requests
echo "net.ipv4.icmp_echo_ignore_broadcasts = 1" >> //etc/sysctl.conf
#ignore directed pings
echo "net.ipv4.icmp_echo_ignore_all = 1" >> //etc/sysctl.conf
echo "kernel.exec-shield = 1" >> //etc/sysctl.conf
echo "kernel.randomize_va_space = 1" >> //etc/sysctl.conf
#disable ipv6 :(
echo "net.ipv6.conf.all.disable_ipv6 = 1" >> //etc/sysctl.conf
echo "net.ipv6.conf.default.disable_ipv6 = 1" >> //etc/sysctl.conf
echo "net.ipv6.conf.lo.disable_ipv6 = 1" >> //etc/sysctl.conf
#deny redirects
echo "net.ipv4.conf.all.secure_redirects = 0" >> //etc/sysctl.conf
#log packets with impossible addresses to kernel log
echo "net.ipv4.conf.default.secure_redirects = 0" >> //etc/sysctl.conf
#ipv6 configurations
echo "net.ipv6.conf.default.router_solicitations = 0" >> //etc/sysctl.conf
echo "net.ipv6.conf.default.accept_ra_rtr_pref = 0" >> //etc/sysctl.conf
echo "net.ipv6.conf.default.accept_ra_pinfo = 0" >> //etc/sysctl.conf
echo "net.ipv6.conf.default.accept_ra_defrtr = 0" >> //etc/sysctl.conf
echo "net.ipv6.conf.default.autoconf = 0" >> //etc/sysctl.conf
echo "net.ipv6.conf.default.dad_transmits = 0" >> //etc/sysctl.conf
echo "net.ipv6.conf.default.max_addresses = 1" >> //etc/sysctl.conf
echo "net.ipv4.conf.all.send redirects = 0" >> //etc/sysctl.conf
echo "net.ipv4.conf.all.accept redirects = 0" >> //etc/sysctl.conf
echo "net.ipv4.conf.all.secure redirects = 0" >> //etc/sysctl.conf
echo "net.ipv4.conf.all.log martians = 1" >> //etc/sysctl.conf
echo "net.ipv4.conf.all.rp filter = 1" >> //etc/sysctl.conf
echo "net.ipv6.conf.all.accept ra = 0" >> //etc/sysctl.conf
echo "net.ipv6.conf.default.accept_ra = 0" >> //etc/sysctl.conf
echo "net.ipv6.conf.all.accept redirects = 0" >> //etc/sysctl.conf
echo "kernel.randomize_va_space = 2" >> //etc/sysctl.conf
#panic when out of memory
echo "vm.panic_on_oom = 1" >> //etc/sysctl.conf
#reboot system 10 seconds after panic
echo "kernel.panic = 10" >> //etc/sysctl.conf
#apply new sysctl.conf settings
sudo chmod 700 //etc/sysctl.conf
sudo sysctl -p
#do the thing
sudo sysctl -w net.ipv4.ip forward=0
sudo sysctl -w net.ipv4.route.flush=1
sudo sysctl -w net.ipv4.conf.all.send_redirects=0
sudo sysctl -w net.ipv4.conf.default.send redirects=0
sudo sysctl -w net.ipv4.route.flush=1
sudo sysctl -w net.ipv4.conf.all.accept_source_route=0
sudo sysctl -w net.ipv4.conf.default.accept source route=0
sudo sysctl -w net.ipv4.route.flush=1
sudo sysctl -w net.ipv4.conf.all.accept_redirects=0
sudo sysctl -w net.ipv4.conf.default.accept redirects=0
sudo sysctl -w net.ipv4.route.flush=1
sudo sysctl -w net.ipv4.conf.all.secure_redirects=0
sudo sysctl -w net.ipv4.conf.default.secure_redirects=0
sudo sysctl -w net.ipv4.route.flush=1
sudo sysctl -w net.ipv4.conf.all.log_martians=1
sudo sysctl -w net.ipv4.conf.default.log martians=1
sudo sysctl -w net.ipv4.route.flush=1
sudo sysctl -w net.ipv4.icmp echo ignore broadcasts=1
sudo sysctl -w net.ipv4.route.flush=1
sudo sysctl -w net.ipv4.icmp_ignore_bogus_error_responses=1
sudo sysctl -w net.ipv4.route.flush=1
sudo sysctl -w net.ipv4.conf.all.rp_filter=1
sudo sysctl -w net.ipv4.conf.default.rp filter=1
sudo sysctl -w net.ipv4.route.flush=1
sudo sysctl -w net.ipv4.tcp syncookies=1
sudo sysctl -w net.ipv4.route.flush=1
sudo sysctl -w net.ipv6.conf.all.accept_ra=0
sudo sysctl -w net.ipv6.conf.default.accept ra=0
sudo sysctl -w net.ipv6.route.flush=1
sudo sysctl -w net.ipv6.conf.all.accept_redirects=0
sudo sysctl -w net.ipv6.conf.default.accept redirects=0
sudo sysctl -w net.ipv6.route.flush=1
sudo sysctl -w kernel.randomize_va_space=2
systemctl disable avahi-daemon
systemctl disable cups
systemctl disable isc-dhcp-server
systemctl disable isc-dhcp-server6
systemctl disable slapd
systemctl disable nfs-server
systemctl disable rpcbind
systemctl disable bind9
systemctl disable vsftpd
systemctl disable apache2
systemctl disable dovecot
systemctl disable smbd
systemctl disable squid
systemctl disable snmpd
systemctl disable rsync
systemctl disable nis


#ip spoofing
sudo chmod 702 //etc/host.conf
echo "order bind,hosts" >> //etc/host.conf
echo "nospoof on" >> //etc/host.conf
sudo chmod 700 //etc/host.conf

#restrict core dumps
sudo chmod 702 //etc/security/limits.conf
echo "* hard core" >> //etc/security/limits.conf
sudo chmod 700 //etc/security/limits.conf
sudo chmod 702 //etc/sysctl.conf
echo "fs.suid_dumpable = 0" >> //etc/sysctl.conf
sudo chmod 700 //etc/sysctl.conf
sudo sysctl -w fs.suid_dumpable=0

#config motd
sudo chmod 777 //etc/motd
echo "This system is for authorized users only. Individual use of this system and/or network without authority, or in excess of your authority, is strictly prohibited." > //etc/motd
sudo chmod 700 //etc/motd
sudo chmod 777 //etc/issue
echo "This system is for the use of authorized users only.  Individuals using this computer system without authority, or in excess of their authority, are subject to having all of their activities on this system monitored and recorded by system personnel.  In the course of monitoring individuals improperly using this system, or in the course of system maintenance, the activities of authorized users may also be monitored.  Anyone using this system expressly consents to such monitoring and is advised that if such monitoring reveals possible evidence of criminal activity, system personnel may provide the evidence of such monitoring to law enforcement officials." > //etc/issue
sudo chmod 700 //etc/issue
sudo chmod 777 //etc/issue.net
echo "This system is for the use of authorized users only.  Individuals using this computer system without authority, or in excess of their authority, are subject to having all of their activities on this system monitored and recorded by system personnel.  In the course of monitoring individuals improperly using this system, or in the course of system maintenance, the activities of authorized users may also be monitored.  Anyone using this system expressly consents to such monitoring and is advised that if such monitoring reveals possible evidence of criminal activity, system personnel may provide the evidence of such monitoring to law enforcement officials." > //etc/issue.net
sudo chmod 700 //etc/issue.net
touch //etc/dconf/profile/gdm
sudo chmod 777 //etc/dconf/profile/gdm
echo "user-db:user" >> //etc/dconf/profile/gdm
echo "system-db:gdm" >> //etc/dconf/profile/gdm
echo "file-db:/usr/share/gdm/greeter-dconf/defaults" >> //etc/dconf/profile/gdm
sudo chmod 700 //etc/dconf/profile/gdm

#Configure ntp
sudo chmod 777 //etc/ntp.conf
echo "restrict -4 default kod nomodify notrap nopeer noquery" >> //etc/ntp.conf
echo "restrict -6 default kod nomodify notrap nopeer noquery" >> //etc/ntp.conf
sudo chmod 700 //etc/ntp.conf

#Config hosts.deny
sudo chmod 777 //etc/hosts.deny
echo "ALL: ALL" >> //etc/hosts.deny
sudo chmod 700 //etc/hosts.deny

#Disable DCCP
sudo chmod 777 //etc/modprobe.d/CIS.conf
echo "install dccp /bin/true" >> //etc/modprobe.d/CIS.conf
echo "install sctp /bin/true" >> //etc/modprobe.d/CIS.conf
echo "install rds /bin/true" >> //etc/modprobe.d/CIS.conf
echo "install tipc /bin/true" >> //etc/modprobe.d/CIS.conf
sudo chmod 700 //etc/modprobe.d/CIS.conf



