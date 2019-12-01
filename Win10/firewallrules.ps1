#Firewall script
#Disable every pre-existing rule
Set-NetFirewallRule * -Enabled False -Action NotConfigured

#Block multiple Windows features by pre-existing rules
Set-NetFirewallRule -DisplayGroup "AllJoyn Router","*BranchCache*","Cast to Device functionality","Connect","Cortana","Delivery Optimization","DIAL protocol server","Feedback Hub","File and Printer Sharing","Get Office","Groove Music","HomeGroup","iSCSI Service","mDNS","Media Center Extenders","Microsoft Edge","Microsoft Photos","Microsoft Solitaire Collection","Movies & TV","MSN Weather","Network Discovery","OneNote","*Wi-Fi*","Paint 3D","Proximity Sharing","*Remote*","Secure Socket Tunneling Protocol","*Skype*","SNMP Trap","Store","*Smart Card*","Virtual Machine Monitoring","Windows Collaboration Computer Name Registration Service","*Windows Media Player*","Windows Peer to Peer Collaboration Foundation","Windows View 3D Preview","*Wireless*","*WFD*","*Xbox*","3D Builder","Captive Portal Flow","Take a Test","Wallet" -Action Block -Enabled True -Profile Any

#Block multiple insecure protocols by pre-existing rules
Set-NetFirewallRule -DisplayName "*IPv6*","*ICMP*","*SMB*","*UPnP*","*FTP*","*Telnet*" -Action Block -Enabled True -Profile Any

#Block multiple ports with new rule
New-NetFirewallRule -DisplayName "FTP, SSH, Telnet" -LocalPort 20-21 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "FTP, SSH, Telnet" -LocalPort 22 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "FTP, SSH, Telnet" -LocalPort 23 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "HTTP" -LocalPort 80 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "TorPark onion routing" -LocalPort 81 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "TorPark control" -LocalPort 82 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "RTelnet" -LocalPort 107 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "RTelnet" -LocalPort 107 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "DHCPv6" -LocalPort 546-547 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "DHCPv6" -LocalPort 546-547 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Flash" -LocalPort 843 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "B.net (Free HK)" -LocalPort 1119 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "B.net (Free HK)" -LocalPort 1119 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Kazaa" -LocalPort 1214 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Kazaa" -LocalPort 1214 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "WASTE" -LocalPort 1337 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Civ" -LocalPort 1492 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Garena" -LocalPort 1513 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Garena" -LocalPort 1513 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "iSketch" -LocalPort 1626-1627 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Defunct RADIUS Ports" -LocalPort 1645-1646 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Windward" -LocalPort 1707 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Windward" -LocalPort 1707 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "America's Army" -LocalPort 1716 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Microsoft Media Services" -LocalPort 1755 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Microsoft Media Services" -LocalPort 1755 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "SSDP" -LocalPort 1900 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Macro Flash" -LocalPort 1935 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Macro Flash" -LocalPort 1935 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Netop" -LocalPort 1970 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Netop" -LocalPort 1970 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Civ 4" -LocalPort 2033 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Civ 4" -LocalPort 2033 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Warzone 2100" -LocalPort 2100 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Apple Notifs" -LocalPort 2195 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Apple Notifs Feedback" -LocalPort 2196 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "ArmA/Halo" -LocalPort 2302-2305 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "AIM/Ghost" -LocalPort 2351-2368 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Ultima Online" -LocalPort 2593 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Ultima Online" -LocalPort 2593 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Ultima Online 2" -LocalPort 2599 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Ultima Online 2" -LocalPort 2599 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "iSync" -LocalPort 3004 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Xbox LIVE" -LocalPort 3074 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Xbox LIVE" -LocalPort 3074 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "iSCSI" -LocalPort 3260 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "iSCSI" -LocalPort 3260 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "RDP" -LocalPort 3389 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "RDP" -LocalPort 3389 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "PlayStation" -LocalPort 3479-3480 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "PlayStation" -LocalPort 3479-3480 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Cyc" -LocalPort 3645 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Cyc" -LocalPort 3645 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "BF4" -LocalPort 3659 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Blizzard games/Club Penguin" -LocalPort 3724 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Blizzard games/Club Penguin" -LocalPort 3724 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "WarMUX" -LocalPort 3826 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "WarMUX" -LocalPort 3826 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Warframe" -LocalPort 3960 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Warframe again" -LocalPort 3962 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "OpenTTD" -LocalPort 3978-3979 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "OpenTTD" -LocalPort 3978-3979 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Diablo 2" -LocalPort 4000 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Diablo 2" -LocalPort 4000 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Microsoft Ants" -LocalPort 4001 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Amazon Echo" -LocalPort 4070 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Amazon Echo" -LocalPort 4070 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Microsoft Remote Web Workplace admin" -LocalPort 4125 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Apprentice" -LocalPort 4747 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Many things" -LocalPort 5000 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Many things" -LocalPort 5000 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "LoL" -LocalPort 5000-5500 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Neverwinter Nights" -LocalPort 5121 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Apple Notif 2" -LocalPort 5223 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Outlaws" -LocalPort 5310 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "PostgreSQL" -LocalPort 5432 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Freeciv" -LocalPort 5556 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Freeciv" -LocalPort 5556 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "TeamViewer" -LocalPort 5938 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "TeamViewer" -LocalPort 5938 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "More b.net/CP 2 (Free HK)" -LocalPort 6112 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "More b.net/CP 2 (Free HK)" -LocalPort 6112 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "B.net/Club penguin 3" -LocalPort 6113 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6881-6887 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6881-6887 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6888 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6888 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6889-6900 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6889-6900 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Windows Live Messenger" -LocalPort 6891-6900 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Windows Live Messenger" -LocalPort 6891-6900 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6901 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6901 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6902-6968 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6902-6968 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "BitTorrent tracker" -LocalPort 6969 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "HTTP Bittorrent" -LocalPort 7000 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Enemy Territory: Quake Wars" -LocalPort 7133 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Tibia" -LocalPort 7171 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "WatchMe" -LocalPort 7272 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "WatchMe" -LocalPort 7272 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Rise: The Vieneo Province" -LocalPort 7473 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Saratoga FTP" -LocalPort 7542 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Saratoga FTP" -LocalPort 7542 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Killing Floor" -LocalPort 7707-7708 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Killing Floor" -LocalPort 7717 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Just Cause 2, Terraria, GTA:SA" -LocalPort 7777 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Just Cause 2, Terraria, GTA:SA" -LocalPort 7777 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Unreal Tournament" -LocalPort 7777-7788 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Unreal Tournament" -LocalPort 7777-7788 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Killing Floor" -LocalPort 8075 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "MapleStory" -LocalPort 8484 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "QBittorrent" -LocalPort 9000 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Tor" -LocalPort 9030 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Tor" -LocalPort 9050-9051 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Clash of Clans" -LocalPort 9339 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Club Penguin" -LocalPort 9875 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "CrossFire" -LocalPort 10009 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "CrossFire" -LocalPort 10009 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Touhou" -LocalPort 10080 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Lock On: Modern Air Combat" -LocalPort 10308 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Lock On: Modern Air Combat" -LocalPort 10308 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "SWAT 4" -LocalPort 10480 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "SWAT 4" -LocalPort 10480 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Farming Simulator 2011" -LocalPort 10823 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Savage: Battle for Newerth" -LocalPort 11235 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Savage: Battle for Newerth" -LocalPort 11235 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "OpenRCT2" -LocalPort 11753 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 12012-12013 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 12012-12013 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Second Life" -LocalPort 12035 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Second Life" -LocalPort 12043 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Second Life" -LocalPort 12046 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Cube World" -LocalPort 12345 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Cube World" -LocalPort 12345 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Second Life" -LocalPort 13000-13050 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "CrossFire (again)" -LocalPort 13008 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "CrossFire (again)" -LocalPort 13008 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Battlefield 1942" -LocalPort 14567 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Battlefield Vietnam" -LocalPort 15567 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "XPilot" -LocalPort 15345 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "XPilot" -LocalPort 15345 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Project Zomboid" -LocalPort 16261 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Project Zomboid" -LocalPort 16261 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Battlefield 2" -LocalPort 16567 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Worms" -LocalPort 17011 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Monero P2P" -LocalPort 18080 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18200 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18200 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18201 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18201 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18206 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18206 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18300-18301 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18300-18301 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18306 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18306 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Bitcoin" -LocalPort 18333 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18400-18401 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18400-18401 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18505-18506 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18505-18506 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "X-BEAT" -LocalPort 18605-18606 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "X-BEAT" -LocalPort 18605-18606 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Minecraft: Bedrock Edition" -LocalPort 19132-19133 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Killing Floor" -LocalPort 20560 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Killing Floor" -LocalPort 20560 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "0 A.D. Empires Ascendant" -LocalPort 20595 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Duke Nukem 3D" -LocalPort 23513 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Duke Nukem 3D" -LocalPort 23513 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "StepMania: Online: DDR" -LocalPort 24842 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "StepMania: Online: DDR" -LocalPort 24842 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Minecraft" -LocalPort 25565 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Minecraft" -LocalPort 25565 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Minecraft" -LocalPort 25575 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Quake, EVE Online, Xonotic" -LocalPort 26000 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Quake, EVE Online, Xonotic" -LocalPort 26000 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "EVE Online" -LocalPort 26900-26901 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "QuakeWorld" -LocalPort 27000-27006 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Steam" -LocalPort 27000-27015 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Unturned" -LocalPort 27015-27018 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Steam" -LocalPort 27015-27030 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Steam" -LocalPort 27015-27030 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Magicka" -LocalPort 27016 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Magicka" -LocalPort 27016 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Steam" -LocalPort 27031 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Steam" -LocalPort 27036-27037 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Steam" -LocalPort 27036-27037 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "QuakeWorld" -LocalPort 27500-27900 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Quake II" -LocalPort 27901-27910 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "OpenArena" -LocalPort 27950 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Enemy Territoy, Quake III, Quake Live" -LocalPort 27960-27969 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Starsiege: Tribes" -LocalPort 28001 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Starsiege: Tribes" -LocalPort 28001 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Rust" -LocalPort 28015 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "AssaultCube Reloaded" -LocalPort 28770-28771 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Cube 2: Sauerbraten" -LocalPort 28785-28786 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Killing Floor" -LocalPort 28852 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Killing Floor" -LocalPort 28852 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Nintendo Wi-Fi" -LocalPort 28910 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Nintendo Wi-Fi" -LocalPort 28910 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Call of Duty" -LocalPort 28960 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Call of Duty" -LocalPort 28960 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Perfect World" -LocalPort 29000 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Perfect World" -LocalPort 29000 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Jedi Knight" -LocalPort 29070 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Jedi Knight" -LocalPort 29070 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Nintendo Wi-Fi" -LocalPort 29900-29901 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Nintendo Wi-Fi" -LocalPort 29900-29901 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Nintendo Wi-Fi" -LocalPort 29920 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Nintendo Wi-Fi" -LocalPort 29920 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "TetriNET" -LocalPort 31457 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Ace of Spades" -LocalPort 32887 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Infestation: Survivor Stories" -LocalPort 34000 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Factorio" -LocalPort 34197 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Runescape" -LocalPort 43594-43595 -Protocol TCP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Runescape" -LocalPort 43594-43595 -Protocol UDP -Action Block -Enabled True -Direction Inbound
New-NetFirewallRule -DisplayName "Mu Online" -LocalPort 44405 -Protocol TCP -Action Block -Enabled True -Direction Inbound

New-NetFirewallRule -DisplayName "FTP, SSH, Telnet" -LocalPort 20-21 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "FTP, SSH, Telnet" -LocalPort 22 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "FTP, SSH, Telnet" -LocalPort 23 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "HTTP" -LocalPort 80 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "TorPark onion routing" -LocalPort 81 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "TorPark control" -LocalPort 82 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "RTelnet" -LocalPort 107 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "RTelnet" -LocalPort 107 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "DHCPv6" -LocalPort 546-547 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "DHCPv6" -LocalPort 546-547 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Flash" -LocalPort 843 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "B.net (Free HK)" -LocalPort 1119 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "B.net (Free HK)" -LocalPort 1119 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Kazaa" -LocalPort 1214 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Kazaa" -LocalPort 1214 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "WASTE" -LocalPort 1337 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Civ" -LocalPort 1492 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Garena" -LocalPort 1513 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Garena" -LocalPort 1513 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "iSketch" -LocalPort 1626-1627 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Defunct RADIUS Ports" -LocalPort 1645-1646 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Windward" -LocalPort 1707 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Windward" -LocalPort 1707 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "America's Army" -LocalPort 1716 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Microsoft Media Services" -LocalPort 1755 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Microsoft Media Services" -LocalPort 1755 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "SSDP" -LocalPort 1900 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Macro Flash" -LocalPort 1935 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Macro Flash" -LocalPort 1935 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Netop" -LocalPort 1970 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Netop" -LocalPort 1970 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Civ 4" -LocalPort 2033 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Civ 4" -LocalPort 2033 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Warzone 2100" -LocalPort 2100 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Apple Notifs" -LocalPort 2195 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Apple Notifs Feedback" -LocalPort 2196 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "ArmA/Halo" -LocalPort 2302-2305 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "AIM/Ghost" -LocalPort 2351-2368 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Ultima Online" -LocalPort 2593 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Ultima Online" -LocalPort 2593 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Ultima Online 2" -LocalPort 2599 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Ultima Online 2" -LocalPort 2599 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "iSync" -LocalPort 3004 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Xbox LIVE" -LocalPort 3074 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Xbox LIVE" -LocalPort 3074 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "iSCSI" -LocalPort 3260 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "iSCSI" -LocalPort 3260 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "RDP" -LocalPort 3389 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "RDP" -LocalPort 3389 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "PlayStation" -LocalPort 3479-3480 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "PlayStation" -LocalPort 3479-3480 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Cyc" -LocalPort 3645 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Cyc" -LocalPort 3645 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "BF4" -LocalPort 3659 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Blizzard games/Club Penguin" -LocalPort 3724 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Blizzard games/Club Penguin" -LocalPort 3724 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "WarMUX" -LocalPort 3826 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "WarMUX" -LocalPort 3826 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Warframe" -LocalPort 3960 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Warframe again" -LocalPort 3962 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "OpenTTD" -LocalPort 3978-3979 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "OpenTTD" -LocalPort 3978-3979 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Diablo 2" -LocalPort 4000 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Diablo 2" -LocalPort 4000 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Microsoft Ants" -LocalPort 4001 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Amazon Echo" -LocalPort 4070 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Amazon Echo" -LocalPort 4070 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Microsoft Remote Web Workplace admin" -LocalPort 4125 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Apprentice" -LocalPort 4747 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Many things" -LocalPort 5000 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Many things" -LocalPort 5000 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "LoL" -LocalPort 5000-5500 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Neverwinter Nights" -LocalPort 5121 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Apple Notif 2" -LocalPort 5223 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Outlaws" -LocalPort 5310 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "PostgreSQL" -LocalPort 5432 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Freeciv" -LocalPort 5556 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Freeciv" -LocalPort 5556 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "TeamViewer" -LocalPort 5938 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "TeamViewer" -LocalPort 5938 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "More b.net/CP 2 (Free HK)" -LocalPort 6112 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "More b.net/CP 2 (Free HK)" -LocalPort 6112 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "B.net/Club penguin 3" -LocalPort 6113 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6881-6887 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6881-6887 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6888 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6888 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6889-6900 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6889-6900 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Windows Live Messenger" -LocalPort 6891-6900 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Windows Live Messenger" -LocalPort 6891-6900 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6901 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6901 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6902-6968 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "BitTorrent" -LocalPort 6902-6968 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "BitTorrent tracker" -LocalPort 6969 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "HTTP Bittorrent" -LocalPort 7000 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Enemy Territory: Quake Wars" -LocalPort 7133 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Tibia" -LocalPort 7171 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "WatchMe" -LocalPort 7272 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "WatchMe" -LocalPort 7272 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Rise: The Vieneo Province" -LocalPort 7473 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Saratoga FTP" -LocalPort 7542 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Saratoga FTP" -LocalPort 7542 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Killing Floor" -LocalPort 7707-7708 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Killing Floor" -LocalPort 7717 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Just Cause 2, Terraria, GTA:SA" -LocalPort 7777 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Just Cause 2, Terraria, GTA:SA" -LocalPort 7777 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Unreal Tournament" -LocalPort 7777-7788 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Unreal Tournament" -LocalPort 7777-7788 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Killing Floor" -LocalPort 8075 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "MapleStory" -LocalPort 8484 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "QBittorrent" -LocalPort 9000 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Tor" -LocalPort 9030 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Tor" -LocalPort 9050-9051 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Clash of Clans" -LocalPort 9339 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Club Penguin" -LocalPort 9875 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "CrossFire" -LocalPort 10009 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "CrossFire" -LocalPort 10009 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Touhou" -LocalPort 10080 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Lock On: Modern Air Combat" -LocalPort 10308 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Lock On: Modern Air Combat" -LocalPort 10308 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "SWAT 4" -LocalPort 10480 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "SWAT 4" -LocalPort 10480 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Farming Simulator 2011" -LocalPort 10823 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Savage: Battle for Newerth" -LocalPort 11235 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Savage: Battle for Newerth" -LocalPort 11235 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "OpenRCT2" -LocalPort 11753 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 12012-12013 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 12012-12013 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Second Life" -LocalPort 12035 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Second Life" -LocalPort 12043 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Second Life" -LocalPort 12046 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Cube World" -LocalPort 12345 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Cube World" -LocalPort 12345 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Second Life" -LocalPort 13000-13050 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "CrossFire (again)" -LocalPort 13008 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "CrossFire (again)" -LocalPort 13008 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Battlefield 1942" -LocalPort 14567 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Battlefield Vietnam" -LocalPort 15567 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "XPilot" -LocalPort 15345 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "XPilot" -LocalPort 15345 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Project Zomboid" -LocalPort 16261 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Project Zomboid" -LocalPort 16261 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Battlefield 2" -LocalPort 16567 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Worms" -LocalPort 17011 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Monero P2P" -LocalPort 18080 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18200 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18200 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18201 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18201 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18206 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18206 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18300-18301 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18300-18301 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18306 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18306 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Bitcoin" -LocalPort 18333 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18400-18401 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18400-18401 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18505-18506 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Audition Online Dance Battle" -LocalPort 18505-18506 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "X-BEAT" -LocalPort 18605-18606 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "X-BEAT" -LocalPort 18605-18606 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Minecraft: Bedrock Edition" -LocalPort 19132-19133 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Killing Floor" -LocalPort 20560 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Killing Floor" -LocalPort 20560 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "0 A.D. Empires Ascendant" -LocalPort 20595 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Duke Nukem 3D" -LocalPort 23513 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Duke Nukem 3D" -LocalPort 23513 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "StepMania: Online: DDR" -LocalPort 24842 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "StepMania: Online: DDR" -LocalPort 24842 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Minecraft" -LocalPort 25565 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Minecraft" -LocalPort 25565 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Minecraft" -LocalPort 25575 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Quake, EVE Online, Xonotic" -LocalPort 26000 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Quake, EVE Online, Xonotic" -LocalPort 26000 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "EVE Online" -LocalPort 26900-26901 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "QuakeWorld" -LocalPort 27000-27006 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Steam" -LocalPort 27000-27015 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Unturned" -LocalPort 27015-27018 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Steam" -LocalPort 27015-27030 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Steam" -LocalPort 27015-27030 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Magicka" -LocalPort 27016 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Magicka" -LocalPort 27016 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Steam" -LocalPort 27031 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Steam" -LocalPort 27036-27037 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Steam" -LocalPort 27036-27037 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "QuakeWorld" -LocalPort 27500-27900 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Quake II" -LocalPort 27901-27910 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "OpenArena" -LocalPort 27950 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Enemy Territoy, Quake III, Quake Live" -LocalPort 27960-27969 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Starsiege: Tribes" -LocalPort 28001 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Starsiege: Tribes" -LocalPort 28001 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Rust" -LocalPort 28015 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "AssaultCube Reloaded" -LocalPort 28770-28771 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Cube 2: Sauerbraten" -LocalPort 28785-28786 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Killing Floor" -LocalPort 28852 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Killing Floor" -LocalPort 28852 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Nintendo Wi-Fi" -LocalPort 28910 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Nintendo Wi-Fi" -LocalPort 28910 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Call of Duty" -LocalPort 28960 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Call of Duty" -LocalPort 28960 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Perfect World" -LocalPort 29000 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Perfect World" -LocalPort 29000 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Jedi Knight" -LocalPort 29070 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Jedi Knight" -LocalPort 29070 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Nintendo Wi-Fi" -LocalPort 29900-29901 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Nintendo Wi-Fi" -LocalPort 29900-29901 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Nintendo Wi-Fi" -LocalPort 29920 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Nintendo Wi-Fi" -LocalPort 29920 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "TetriNET" -LocalPort 31457 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Ace of Spades" -LocalPort 32887 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Infestation: Survivor Stories" -LocalPort 34000 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Factorio" -LocalPort 34197 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Runescape" -LocalPort 43594-43595 -Protocol TCP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Runescape" -LocalPort 43594-43595 -Protocol UDP -Action Block -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "Mu Online" -LocalPort 44405 -Protocol TCP -Action Block -Enabled True -Direction Outbound

#Block multiple protocols with new rule
New-NetFirewallRule -DisplayName "ICMPv4" -Protocol ICMPv4 -Action Block -Enabled True -Direction Inbound -Profile Any
New-NetFirewallRule -DisplayName "ICMPv4" -Protocol ICMPv4 -Action Block -Enabled True -Direction Outbound -Profile Any
New-NetFirewallRule -DisplayName "ICMPv6" -Protocol ICMPv6 -Action Block -Enabled True -Direction Inbound -Profile Any
New-NetFirewallRule -DisplayName "ICMPv6" -Protocol ICMPv6 -Action Block -Enabled True -Direction Outbound -Profile Any

#Allow multiple ports with new rule
New-NetFirewallRule -DisplayName "HTTPS" -LocalPort 443 -Protocol TCP -Action Allow -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "NTP" -LocalPort 123 -Protocol UDP -Action Allow -Enabled True -Direction Outbound
New-NetFirewallRule -DisplayName "NTP" -LocalPort 123 -Protocol UDP -Action Allow -Enabled True -Direction Inbound

#Allow multiple features with pre-existing rules
Set-NetFirewallRule -DisplayName "*Defender*" -Enabled True -Action Allow -Profile Any
