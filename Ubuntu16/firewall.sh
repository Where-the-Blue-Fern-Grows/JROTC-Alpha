#enable the firewall
sudo ufw enable

#turn on logging for the firewall
sudo ufw logging on

#deny multiple things
sudo ufw deny 21
sudo ufw deny 23
sudo ufw deny cups

#uninstall these services
sudo apt-get purge -y cups
sudo apt-get purge -y bluetooth
