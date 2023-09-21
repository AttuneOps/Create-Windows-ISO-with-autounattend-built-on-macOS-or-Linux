cd X:\attune_drivers

for /R %%f in (*.inf) do drvload "%%f"

wpeutil InitializeNetwork

netsh.exe interface ipv4 set address ^
    name="${ksWindowsInterfaceAlias}" ^
    static ${targetServer.ip} ^
    ${targetSubnet.netmask} ^
    ${targetSubnet.gateway}
    
netsh.exe interface ipv4 add dnsservers ^
    name="${ksWindowsInterfaceAlias}" ^
    address=${targetSubnet.dns1} ^
    index=1

wpeutil WaitForNetwork

wpeinit

ipconfig /all

@echo off
set sambaIPaddress=${sambaServerIpAddress}

:pingtheserver
ping %sambaIPaddress% | find "TTL" > nul
if errorlevel 1 (
    echo waiting for pingable Samba IP address %sambaIPaddress%...
    ping localhost -n 2 >NUL
    ping 127.0.0.1 -n 10 > nul
    goto :pingtheserver
) else (
    echo ping successful for Samba server
)

:mountsamba
net use Z: \\%sambaIPaddress%\share | find "successfully" > nul
if errorlevel 1 (
    echo mount failed, waiting...
    ping localhost -n 2 >NUL
    ping 127.0.0.1 -n 10 > nul
    goto :mountsamba
) else (
    echo Samba mount successful.
)
@echo on

Z:

rem Hard coded to match "Deploy Win 2019 ISO For WinPE"
cd .\windows2019\

setup