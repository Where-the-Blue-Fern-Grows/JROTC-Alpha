#Disable unneeded/insecure services
Set-Service -Status Stopped -StartupType Disabled -Name Browser
Set-Service -Status Stopped -StartupType Disabled -Name bthserv
Set-Service -Status Stopped -StartupType Disabled -Name Fax
Set-Service -Status Stopped -StartupType Disabled -Name icssvc
Set-Service -Status Stopped -StartupType Disabled -Name irmon
Set-Service -Status Stopped -StartupType Disabled -Name lfsvc
Set-Service -Status Stopped -StartupType Disabled -Name lltdsvc
Set-Service -Status Stopped -StartupType Disabled -Name MapsBroker
Set-Service -Status Stopped -StartupType Disabled -Name MSiSCSI
Set-Service -Status Stopped -StartupType Disabled -Name p2pimsvc
Set-Service -Status Stopped -StartupType Disabled -Name p2psvc
Set-Service -Status Stopped -StartupType Disabled -Name PhoneSvc
Set-Service -Status Stopped -StartupType Disabled -Name PlugPlay
Set-Service -Status Stopped -StartupType Disabled -Name PNRPAutoReg
Set-Service -Status Stopped -StartupType Disabled -Name PNRPsvc
Set-Service -Status Stopped -StartupType Disabled -Name RasAuto
Set-Service -Status Stopped -StartupType Disabled -Name RemoteAccess
Set-Service -Status Stopped -StartupType Disabled -Name RemoteRegistry
Set-Service -Status Stopped -StartupType Disabled -Name RpcLocator
Set-Service -Status Stopped -StartupType Disabled -Name SessionEnv
Set-Service -Status Stopped -StartupType Disabled -Name SharedAccess
Set-Service -Status Stopped -StartupType Disabled -Name SNMPTRAP
Set-Service -Status Stopped -StartupType Disabled -Name SSDPSRV
Set-Service -Status Stopped -StartupType Disabled -Name TermService
Set-Service -Status Stopped -StartupType Disabled -Name UmRdpService
Set-Service -Status Stopped -StartupType Disabled -Name upnphost
Set-Service -Status Stopped -StartupType Disabled -Name vmicrdv
Set-Service -Status Stopped -StartupType Disabled -Name W32Time
Set-Service -Status Stopped -StartupType Disabled -Name W3SVC
Set-Service -Status Stopped -StartupType Disabled -Name wercplsupport
Set-Service -Status Stopped -StartupType Disabled -Name WerSvc
Set-Service -Status Stopped -StartupType Disabled -Name WinHttpAutoProxySvc
Set-Service -Status Stopped -StartupType Disabled -Name WinRM
Set-Service -Status Stopped -StartupType Disabled -Name WlanSvc
Set-Service -Status Stopped -StartupType Disabled -Name WMPNetworkSvc
Set-Service -Status Stopped -StartupType Disabled -Name WpnService
Set-Service -Status Stopped -StartupType Disabled -Name WpnUserService*
Set-Service -Status Stopped -StartupType Disabled -Name WwanSvc
Set-Service -Status Stopped -StartupType Disabled -Name xbgm
Set-Service -Status Stopped -StartupType Disabled -Name XblAuthManager
Set-Service -Status Stopped -StartupType Disabled -Name XblGameSave
Set-Service -Status Stopped -StartupType Disabled -Name XboxGipSvc
Set-Service -Status Stopped -StartupType Disabled -Name XboxNetApiSvc
Set-Service -Status Stopped -StartupType Disabled -Name PushToInstall
Set-Service -Status Stopped -StartupType Disabled -Name spectrum
Set-Service -Status Stopped -StartupType Disabled -Name icssvc
Set-Service -Status Stopped -StartupType Disabled -Name wisvc
Set-Service -Status Stopped -StartupType Disabled -Name StiSvc
Set-Service -Status Stopped -StartupType Disabled -Name FrameServer
Set-Service -Status Stopped -StartupType Disabled -Name WbioSrvc
Set-Service -Status Stopped -StartupType Disabled -Name WFDSConSvc
Set-Service -Status Stopped -StartupType Disabled -Name WebClient
Set-Service -Status Stopped -StartupType Disabled -Name WMSVC
Set-Service -Status Stopped -StartupType Disabled -Name WalletService
Set-Service -Status Stopped -StartupType Disabled -Name UevAgentService
Set-Service -Status Stopped -StartupType Disabled -Name UwfServcingSvc
Set-Service -Status Stopped -StartupType Disabled -Name TabletInputService
Set-Service -Status Stopped -StartupType Disabled -Name TapiSrv
Set-Service -Status Stopped -StartupType Disabled -Name WiaRpc
Set-Service -Status Stopped -StartupType Disabled -Name SharedRealitySvc
Set-Service -Status Stopped -StartupType Disabled -Name SNMP
Set-Service -Status Stopped -StartupType Disabled -Name SCPolicySvc
Set-Service -Status Stopped -StartupType Disabled -Name ScDeviceEnum
Set-Service -Status Stopped -StartupType Disabled -Name simptcp
Set-Service -Status Stopped -StartupType Disabled -Name ShellHWDetection
Set-Service -Status Stopped -StartupType Disabled -Name shpamsvc
Set-Service -Status Stopped -StartupType Disabled -Name SensorService
Set-Service -Status Stopped -StartupType Disabled -Name SensrSvc

#Enable needed services
Set-Service -Status Running -StartupType Automatic -Name BDESVC
Set-Service -Status Running -StartupType Automatic -Name BFE
Set-Service -Status Running -StartupType Automatic -Name CryptSvc
Set-Service -Status Running -StartupType Automatic -Name DcomLaunch
Set-Service -Status Running -StartupType Automatic -Name Dhcp
Set-Service -Status Running -StartupType Automatic -Name Dnscache
Set-Service -Status Running -StartupType Automatic -Name EventLog
Set-Service -Status Running -StartupType Automatic -Name Group
Set-Service -Status Running -StartupType Automatic -Name LanmanServer
Set-Service -Status Running -StartupType Automatic -Name LanmanWorkstation
Set-Service -Status Running -StartupType Automatic -Name MpsSvc
Set-Service -Status Running -StartupType Automatic -Name nsi
Set-Service -Status Running -StartupType Automatic -Name Power
Set-Service -Status Running -StartupType Automatic -Name RpcEptMapper
Set-Service -Status Running -StartupType Automatic -Name RpcSs
Set-Service -Status Running -StartupType Automatic -Name SamSs
Set-Service -Status Running -StartupType Automatic -Name SecurityHealthService
Set-Service -Status Running -StartupType Automatic -Name Sense
Set-Service -Status Running -StartupType Automatic -Name WdNisSvc
Set-Service -Status Running -StartupType Automatic -Name Wecsvc
Set-Service -Status Running -StartupType Automatic -Name WEPHOSTSVC
Set-Service -Status Running -StartupType Automatic -Name WinDefend
Set-Service -Status Running -StartupType Automatic -Name wuauserv
Set-Service -Status Running -StartupType Automatic -Name WSearch
Set-Service -Status Running -StartupType Automatic -Name TrustedInstaller
Set-Service -Status Running -StartupType Automatic -Name Winmgmt
Set-Service -Status Running -StartupType Automatic -Name msiserver
Set-Service -Status Running -StartupType Automatic -Name FontCache
Set-Service -Status Running -StartupType Automatic -Name Wecsvc
Set-Service -Status Running -StartupType Automatic -Name Wcmsvc
Set-Service -Status Running -StartupType Automatic -Name AudioSrv
Set-Service -Status Running -StartupType Automatic -Name AudioEndpointBuilder
Set-Service -Status Running -StartupType Automatic -Name vds
Set-Service -Status Running -StartupType Automatic -Name ProfSvc
Set-Service -Status Running -StartupType Automatic -Name UserManager
Set-Service -Status Running -StartupType Automatic -Name UsoSvc
Set-Service -Status Running -StartupType Automatic -Name Themes
Set-Service -Status Running -StartupType Automatic -Name Schedule
Set-Service -Status Running -StartupType Automatic -Name SgrmBroker
Set-Service -Status Running -StartupType Automatic -Name SystemEventsBroker
Set-Service -Status Running -StartupType Automatic -Name SENS
Set-Service -Status Running -StartupType Automatic -Name OneSyncSvc_*
Set-Service -Status Running -StartupType Automatic -Name SysMain
Set-Service -Status Running -StartupType Automatic -Name sppsvc
Set-Service -Status Running -StartupType Automatic -Name wscsvc

#Manual services
Set-Service -StartupType Manual -Name dot3svc
Set-Service -StartupType Manual -Name WaaSMedicSvc
Set-Service -StartupType Manual -Name wmiApSrv
Set-Service -StartupType Manual -Name LicenseManager
Set-Service -StartupType Manual -Name SDRSVC
Set-Service -StartupType Manual -Name TokenBroker
Set-Service -StartupType Manual -Name W3LOGSVC
Set-Service -StartupType Manual -Name VSS
Set-Service -StartupType Manual -Name UnistoreSvc_*
Set-Service -StartupType Manual -Name UserDataSvc_*
Set-Service -StartupType Manual -Name upnphost
Set-Service -StartupType Manual -Name TimeBroker
Set-Service -StartupType Manual -Name lmhosts
Set-Service -StartupType Manual -Name TieringEngineService
Set-Service -StartupType Manual -Name StorSvc
Set-Service -StartupType Manual -Name StateRepository
Set-Service -StartupType Manual -Name svsvc
