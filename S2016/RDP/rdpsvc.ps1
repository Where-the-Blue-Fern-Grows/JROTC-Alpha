#Start various RDP services and set them to automatic startup
Set-Service -Status Running -StartupType Automatic -Name SessionEnv
Set-Service -Status Running -StartupType Automatic -Name TermService
Set-Service -Status Running -StartupType Automatic -Name UmRdpService
