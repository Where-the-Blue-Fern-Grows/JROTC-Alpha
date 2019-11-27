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
#panic when out of memory
echo "vm.panic_on_oom = 1" >> //etc/sysctl.conf
#reboot system 10 seconds after panic
echo "kernel.panic = 10" >> //etc/sysctl.conf
#apply new sysctl.conf settings
sudo chmod 700 //etc/sysctl.conf
sudo sysctl -p

#ip spoofing
sudo chmod 702 //etc/host.conf
echo "order bind,hosts" >> //etc/host.conf
echo "nospoof on" >> //etc/host.conf
sudo chmod 700 //etc/host.conf









