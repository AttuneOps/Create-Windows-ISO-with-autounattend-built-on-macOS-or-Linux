REM Change into the drivers directory
cd X:\drivers

REM Recursively install all drivers
FOR /R %%f in (*.inf) DO drvload "%%f"

wpeutil InitializeNetwork

REM Get the "Interface Name" value and store in windowsInterfaceAlias
FOR /F "skip=3 tokens=3*" %G IN ('netsh interface show interface') DO (
	SET windowsInterfaceAlias=%H
)
echo Found network interface name = %windowsInterfaceAlias%

netsh.exe interface ipv4 set address ^
    name="%windowsInterfaceAlias%" ^
    static ${targetServer.ip} ^
    ${targetSubnet.netmask} ^
    ${targetSubnet.gateway}
    
netsh.exe interface ipv4 add dnsservers ^
    name="%windowsInterfaceAlias%" ^
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

cd ${windowsFolderOnSamba}

setup