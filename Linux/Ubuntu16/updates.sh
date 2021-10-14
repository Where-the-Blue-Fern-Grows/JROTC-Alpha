sudo fuser -k //var/lib/dpkg/lock-frontend
prelink -ua
sudo apt-get update -y
sudo apt-get purge -y wireshark*
sudo apt-get purge -y apache2* totem cheese nmap mahjongg rhythmbox* shotwell* medusa john sqlmap hydra zenmap ophcrack minetest samba* python-samba telnet tcpdump cups* postgresql libwire* musescore-soundfont-gm postgresql\* prelink openbsd-inetd nis rsh-client rsh-redone-client talk ldap-utils
sudo apt-get install -y clamav clamav-daemon rkhunter chkrootkit auditd aide aide-common unattended-upgrades thunderbird tree apparmor ntp tcpd iptables rsyslog apparmor-utils
sudo apt-get autoremove -y
sudo apt-get autoclean -y
sudo apt-get upgrade -y
sudo dpkg-reconfigure -plow unattended-upgrades
sudo freshclam
sudo chkrootkit
cd //usr/local/src
sudo wget http://www.rfxn.com/downloads/maldetect-current.tar.gz
sudo tar -xzf maldetect-current.tar.gz
cd maldetect-*
sudo sh ./install.sh
