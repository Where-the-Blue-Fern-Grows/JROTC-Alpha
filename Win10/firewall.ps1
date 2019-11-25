#Enable the entire firewall
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True

#Set direction defaults
Set-NetFirewallProfile -DefaultInboundAction Block -DefaultOutboundAction Allow
