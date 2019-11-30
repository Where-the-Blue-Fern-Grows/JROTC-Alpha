#Turn off preset RDP firewall rules
Set-NetFirewallRule -DisplayName "*Remote Desktop*" -Enabled True -Action Allow -Profile Any

#Allow RDP in firewall in+out
Set-NetFirewallRule -LocalPort 3389 -Enabled True -Action Allow

#RDP gpedit.msc
~\JROTC-Alpha\Win10\RDP\rdpc.bat
