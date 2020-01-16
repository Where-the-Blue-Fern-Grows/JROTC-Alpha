#Disable tasks premade by system
Unregister-ScheduledTask -TaskPath *Bluetooth*
Unregister-ScheduledTask -TaskPath *Location*
Unregister-ScheduledTask -TaskPath *Maps*
Unregister-ScheduledTask -TaskPath *UPnP*
Unregister-ScheduledTask -TaskPath '*Plug and Play*'
Unregister-ScheduledTask -TaskPath '*Windows Error Reporting*'

#Enable tasks premade by system
