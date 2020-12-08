#make sure firewall service is running and configurable
Set-Service -name MpsSvc -StartupType Automatic -Status Running

#Enable the entire firewall
Set-NetFirewallProfile -Name Domain,Public,Private -Enabled True

#Set direction defaults
Set-NetFirewallProfile -DefaultInboundAction Block -DefaultOutboundAction Allow

#Settings for profiles
Set-NetFirewallProfile -Name Domain,Private,Public -NotifyOnListen False

#Unique Settings for Public
Set-NetFirewallProfile -Name Public -AllowLocalFirewallRules False -AllowLocalIPsecRules False

#Logging for Domain, Private, and Public
Set-NetFirewallProfile -Name Domain,Private,Public -LogFileName %SystemRoot%\System32\LogFiles\Firewall\pfirewall.log -LogMaxSizeKilobytes 16384 -LogBlocked True -LogAllowed True
