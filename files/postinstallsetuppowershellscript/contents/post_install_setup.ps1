
# This file replaces the original "<FirstLogonCommands>" section in the
# autounattend.xml file.

<%
import struct, socket
packedIP = socket.inet_aton(newOsNodeSubnet.netmask)
netmask = struct.unpack("!L", packedIP)[0]
netmask = bin(netmask).count('1')

dns = ','.join([ "'%s'" % i for i in (newOsNodeSubnet.dns1, newOsNodeSubnet.dns2) if i])
%>

$ksWindowsInterfaceAlias = (Get-NetAdapter).Name

# Set Network IP
New-NetIPAddress -InterfaceAlias "$ksWindowsInterfaceAlias" `
    -IPAddress ${newOsNode.ip} -PrefixLength ${netmask} `
    -DefaultGateway ${newOsNodeSubnet.gateway} -Confirm:$false

# Set Network Profile
Set-DnsClientServerAddress -InterfaceAlias "$ksWindowsInterfaceAlias" `
    -ServerAddresses @(${dns})
    
Set-DnsClientGlobalSetting -SuffixSearchList @('${newOsNode.domain}')

Set-NetConnectionProfile -InterfaceAlias "$ksWindowsInterfaceAlias" `
    -NetworkCategory Private -Confirm:$false

# Setup RDP
Set-ItemProperty `
    -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' `
    -name 'fDenyTSConnections' -Value 0

Enable-NetFirewallRule -DisplayGroup 'Remote Desktop'

# Setup WinRM
Enable-PSRemoting -SkipNetworkProfileCheck -Force

Remove-Item -Path WSMan:\Localhost\listener\listener* -Recurse

Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force

New-Item -Path WSMan:\LocalHost\Listener -Transport HTTPS -Address * `
    -CertificateThumbPrint `
    (New-SelfSignedCertificate -CertstoreLocation Cert:\LocalMachine\My `
    -DnsName '${newOsNode.hostname}' `
    -NotAfter (get-date).AddYears(6)).Thumbprint -Force

Stop-Service -Force WinRM

New-NetFirewallRule -DisplayName 'WinRM HTTPS' -Name 'WinRM_HTTPS' `
    -Profile Any -LocalPort 5986 -Protocol TCP
    
# Enable File Sharing
Get-NetFirewallRule -DisplayGroup 'File and Printer Sharing' | `
    Set-NetFirewallRule -Profile Any -Enabled true

# Disable auto login
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" `
    /v AutoLogonCount /t REG_DWORD /d 0 /f

# Rename the Administrator account if that is required
%if newOsWindowsUser.user != 'Administrator':
    Rename-LocalUser -Name 'Administrator' -NewName '${newOsWindowsUser.user}'
%endif

# Control Panel View
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v StartupPage /t REG_DWORD /d 1 /f

# Control Panel Icon Size
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v AllItemsIconView /t REG_DWORD /d 1 /f

# Password Never Expires
cmd /C wmic useraccount where name="${newOsWindowsUser.user}" set PasswordExpires=false

# Disable Sleep and Hibernation
powercfg.exe -x -monitor-timeout-ac 0
powercfg.exe -x -monitor-timeout-dc 0
powercfg.exe -x -disk-timeout-ac 0
powercfg.exe -x -disk-timeout-dc 0
powercfg.exe -x -standby-timeout-ac 0
powercfg.exe -x -standby-timeout-dc 0
powercfg.exe -x -hibernate-timeout-ac 0
powercfg.exe -x -hibernate-timeout-dc 0

# Set WinRM to start automatically on reboots.
Set-Service WinRM -startuptype automatic

# Update Hostname and Restart
Rename-Computer -NewName '${newOsNode.hostname}' -Force -Restart

# For some reason on Win10 BIOS ESXi kickstarts the restart from the above line
# Doesn't restart. So we have another line below to restart the node
# and start WinRM afterwards.
Restart-Computer -Force
