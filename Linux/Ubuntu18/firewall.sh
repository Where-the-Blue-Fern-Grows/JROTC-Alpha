#reset whatever current firewall they might have
sudo ufw reset

#enable the firewall
sudo ufw enable

#turn on logging for the firewall
sudo ufw logging on high

#directions and such
sudo ufw default allow outgoing
sudo ufw default deny incoming

#deny multiple things
sudo ufw deny 21
sudo ufw deny 23
sudo ufw deny cups

#uninstall these services
sudo apt-get purge -y cups
sudo apt-get purge -y bluetooth

#cherry on top
sudo apt-get autoremove -y

#Config default deny
sudo iptables -P INPUT DROP
sudo iptables -P OUTPUT DROP
sudo iptables -P FORWARD DROP
#loopback traffic
sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A OUTPUT -o lo -j ACCEPT
sudo iptables -A INPUT -s 127.0.0.0/8 -j DROP
#outbound and established connections
sudo iptables -A OUTPUT -p tcp -m state --state NEW,ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -p udp -m state --state NEW,ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -p icmp -m state --state NEW,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -p tcp -m state --state ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -p udp -m state --state ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -p icmp -m state --state ESTABLISHED -j ACCEPT
