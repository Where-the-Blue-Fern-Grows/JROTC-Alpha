### This folder is filled with general configuration files for windows systems. Powershell scripts, batch files, .regs, etc.

## Windows/RDP
This folder is filled with scripts and .bats to prepare the system for Remote Desktop, either as a server or a client.

## Windows/Registry
This monster folder is filled with .regs, and the respective .bats that are run from the checklist. This configuration is for group policy.

## Windows/Registry/\*Configuration/Remote
This folder contains .reg files (and a .bat) to lock down remote services.

### Windows/Registry/\*Configuration/gp.bat
Batch file that executes all of the .reg files in its folder(as prebuilt by the python script), creating and replacing the values of registry keys that map to Group Policy. Will eventually be replaced by a PowerShell script that configured registry keys directly that map to Group Policy.

### Windows/Registry/\*Configuration/list.py
Takes all .reg files in the current directory and creates a .bat file to run them.

## Windows/SSH
This folder is for getting SSH up and running after it has been initially set up and configured.

## Windows/S0216 and Windows/Win10
These folders are also for general configuration, but for files that may differ because of the different needs of a server and a workstation.

## Windows/controlproj
Work in progress folder, but will eventually be able to automate the configuration of Control Panel items with Windows/control.ps1

### CyberConsole.msc
MMC preloaded with necessary snap-ins.

### SecurityOptions.inf
Alternative importable config file for Local Security Policy -> Security Options.

### SystemAuditPolicies.csv
Importable config file for Local Security Policy -> Advanced Audit Policy Configuration.

### control.ps1
Work in progress.

### firewall.ps1
Script that configures the firewall profiles.

### firewallrules.ps1
Script that configures rules for the firewall by blocking 400+ services/applications by port.

### secedit.jfm and secedit.sdb
Primary importable config files for Local Security Policy -> Security Options.

### starter.ps1
Script that initializes all services that are required to be running for certain aspects of Windows to be configured, like the firewall and group policy.

### tasks.ps1
Script that deletes certain tasks in the Task Scheduler that match the name of an insecure service/feature.

### user.js
Importable configuration file for Firefox.

### userfiles.ps1
Script that makes "tree" viewable in PowerShell.
