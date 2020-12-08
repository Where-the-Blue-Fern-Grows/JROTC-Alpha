#enable a bunch of services actually required to complete the checklist
Set-Service -Name mpssvc -StartupType Automatic -Status Running
Set-Service -Name msiserver -StartupType Automatic -Status Running
Set-Service -Name wuauserv -StartupType Automatic -Status Running
Set-Service -Name gpsvc -StartupType Automatic -Status Running
