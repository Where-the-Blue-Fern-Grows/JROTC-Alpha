sudo fuser -k //var/lib/dpkg/lock-frontend
prelink -ua
sudo apt-get purge -y wireshark
sudo apt-get purge -y apache2
sudo apt-get purge -y apache2-bin
sudo apt-get purge -y apache2-data
sudo apt-get purge -y wireshark-common
sudo apt-get purge -y totem
sudo apt-get purge -y cheese
sudo apt-get purge -y gnomine
sudo apt-get purge -y nmap
sudo apt-get purge -y mahjongg
sudo apt-get purge -y rhythmbox*
sudo apt-get purge -y shotwell*
sudo apt-get purge -y medusa
sudo apt-get purge -y john
sudo apt-get purge -y sqlmap
sudo apt-get purge -y hydra
sudo apt-get purge -y zenmap
sudo apt-get purge -y ophcrack
sudo apt-get purge -y minetest
sudo apt-get purge -y samba
sudo apt-get purge -y samba-common
sudo apt-get purge -y python-samba
sudo apt-get purge -y telnet
sudo apt-get purge -y tcpdump
sudo apt-get purge -y cups
sudo apt-get purge -y cups-browsed
sudo apt-get purge -y cups-common
sudo apt-get purge -y postgresql
sudo apt-get purge -y libwire*
sudo apt-get purge -y musescore-soundfont-gm
sudo apt-get purge -y postgresql\*
sudo apt-get purge -y prelink
sudo apt-get purge -y openbsd-inetd
sudo apt-get purge -y nis
sudo apt-get purge -y rsh-client
sudo apt-get purge -y rsh-redone-client
sudo apt-get purge -y talk
sudo apt-get purge -y ldap-utils
sudo apt-get update -y
sudo apt-get install -y clamav clamav-daemon rkhunter chkrootkit auditd aide aide-common unattended-upgrades thunderbird tree apparmor ntp tcpd iptables rsyslog
sudo apt-get autoremove -y
sudo apt-get autoclean -y
sudo apt-get upgrade -y
sudo apt-get update -y
sudo apt-get upgrade -y
