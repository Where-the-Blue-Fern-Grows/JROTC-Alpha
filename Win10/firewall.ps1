#Firewall script
#Disable every pre-existing rule
Set-NetFirewallRule * -Enabled False -Action NotConfigured

#Block multiple Windows features by pre-existing rules
Set-NetFirewallRule -DisplayGroup "AllJoyn Router","*BranchCache*","Cast to Device functionality","Connect","Cortana","Delivery Optimization","DIAL protocol server","Feedback Hub","File and Printer Sharing","Get Office","Groove Music","HomeGroup","iSCSI Service","mDNS","Media Center Extenders","Microsoft Edge","Microsoft Photos","Microsoft Solitaire Collection","Movies & TV","MSN Weather","Network Discovery","OneNote","*Wi-Fi*","Paint 3D","Proximity Sharing","*Remote*","Secure Socket Tunneling Protocol","*Skype*","SNMP Trap","Store","*Smart Card*","Virtual Machine Monitoring","Windows Collaboration Computer Name Registration Service","*Windows Media Player*","Windows Peer to Peer Collaboration Foundation","Windows View 3D Preview","*Wireless*","*WFD*","*Xbox*","3D Builder","Captive Portal Flow","Take a Test","Wallet" -Action Block -Enabled True -Profile Any

#Block multiple insecure protocols by pre-existing rules
Set-NetFirewallRule -DisplayName "*IPv6*","*ICMP*","*SMB*","*UPnP*","*FTP*","*Telnet*" -Action Block -Enabled True -Profile Any

#Block multiple ports with new rule
New-NetFirewallRule -DisplayName "FTP, SSH, Telnet" -LocalPort 20-23 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "TorPark onion routing" -LocalPort 81 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "TorPark control" -LocalPort 82 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "RTelnet" -LocalPort 107 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "RTelnet" -LocalPort 107 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "DHCPv6" -LocalPort 546-547 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "DHCPv6" -LocalPort 546-547 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Flash" -LocalPort 843 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "B.net (Free HK)" -LocalPort 1119 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "B.net (Free HK)" -LocalPort 1119 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Kazaa" -LocalPort 1214 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Kazaa" -LocalPort 1214 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "WASTE" -LocalPort 1337 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Civ" -LocalPort 1492 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Garena" -LocalPort 1513 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Garena" -LocalPort 1513 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "iSketch" -LocalPort 1626-1627 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Defunct RADIUS Ports" -LocalPort 1645-1646 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Windward" -LocalPort 1707 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Windward" -LocalPort 1707 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "America's Army" -LocalPort 1716 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Microsoft Media Services" -LocalPort 1755 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Microsoft Media Services" -LocalPort 1755 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "SSDP" -LocalPort 1900 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Macro Flash" -LocalPort 1935 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Macro Flash" -LocalPort 1935 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Netop" -LocalPort 1970 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Netop" -LocalPort 1970 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Civ 4" -LocalPort 2033 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Civ 4" -LocalPort 2033 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Warzone 2100" -LocalPort 2100 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Apple Notifs" -LocalPort 2195 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Apple Notifs Feedback" -LocalPort 2196 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "ArmA/Halo" -LocalPort 2302-2305 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "AIM/Ghost" -LocalPort 2351-2368 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Ultima Online" -LocalPort 2593 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Ultima Online" -LocalPort 2593 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Ultima Online 2" -LocalPort 2599 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Ultima Online 2" -LocalPort 2599 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "iSync" -LocalPort 3004 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Xbox LIVE" -LocalPort 3074 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Xbox LIVE" -LocalPort 3074 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "iSCSI" -LocalPort 3260 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "iSCSI" -LocalPort 3260 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "PlayStation" -LocalPort 3479-3480 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "PlayStation" -LocalPort 3479-3480 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Cyc" -LocalPort 3645 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Cyc" -LocalPort 3645 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "BF4" -LocalPort 3659 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Blizzard games/Club Penguin" -LocalPort 3724 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Blizzard games/Club Penguin" -LocalPort 3724 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "WarMUX" -LocalPort 3826 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "WarMUX" -LocalPort 3826 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Warframe" -LocalPort 3960 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Warframe again" -LocalPort 3962 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "OpenTTD" -LocalPort 3978-3979 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "OpenTTD" -LocalPort 3978-3979 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Diablo 2" -LocalPort 4000 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Diablo 2" -LocalPort 4000 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Microsoft Ants" -LocalPort 4001 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Amazon Echo" -LocalPort 4070 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Amazon Echo" -LocalPort 4070 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Microsoft Remote Web Workplace admin" -LocalPort 4125 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Apprentice" -LocalPort 4747 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Many things" -LocalPort 5000 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Many things" -LocalPort 5000 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "LoL" -LocalPort 5000-5500 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Neverwinter Nights" -LocalPort 5121 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Apple Notif 2" -LocalPort 5223 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Outlaws" -LocalPort 5310 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "PostgreSQL" -LocalPort 5432 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Freeciv" -LocalPort 5556 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "Freeciv" -LocalPort 5556 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "TeamViewer" -LocalPort 5938 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "TeamViewer" -LocalPort 5938 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "More b.net/CP 2 (Free HK)" -LocalPort 6112 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "More b.net/CP 2 (Free HK)" -LocalPort 6112 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "B.net/Club penguin 3" -LocalPort 6113 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6881-6887 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6881-6887 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6888 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6888 -Protocol UDP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6889-6900 -Protocol TCP -Action Block -Enabled True
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6889-6900 -Protocol UDP -Action Block -Enabled True



#Block multiple protocols with new rule

#Allow multiple ports with new rule

#Allow multiple features with pre-existing rules

#(Optional)Allow multiple ports with new rule by choice

#(Optional)Block multiple Remote Windows features by pre-existing rules

