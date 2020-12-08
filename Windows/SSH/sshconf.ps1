#Start the service
Set-Service -Name sshd -StartupType Automatic -Status Running

#Config firewall services to allow
Set-NetFireWallRule -LocalPort 22 -Enabled False
New-NetFireWallRule -DisplayName "OpenSSH" -Protocol TCP -LocalPort 22 -Action Allow -Enabled True -Direction Inbound
New-NetFireWallRule -DisplayName "OpenSSH" -Protocol TCP -LocalPort 22 -Action Allow -Enabled True -Direction Outbound
