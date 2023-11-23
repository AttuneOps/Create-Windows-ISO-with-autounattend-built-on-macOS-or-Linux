REM Change into the drivers directory
cd X:\drivers

REM Recursively install all drivers
FOR /R %%f in (*.inf) DO drvload "%%f"

echo .
echo To bring up a command window use "shift" + "F10" on Windows
echo If on macOS use "shift" + "fn" + "F10"
echo .

wpeutil InitializeNetwork

REM Get the "Interface Name" value and store in windowsInterfaceAlias.
REM Use a % to escape the % for "%G" and "%H".
FOR /F "skip=3 tokens=3*" %%G IN ('netsh interface show interface') DO (
	SET windowsInterfaceAlias=%%H
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

echo .
echo You will now see some mount errors with codes 1231 and about 5x 53
echo codes until the Samba server becomes visible to WinPE which is normal
echo .

REM Use the net use command's output as a means to test whether the Samba
REM server is up.

:mountsamba
net use Z: \\%sambaIPaddress%\share /user:Everyone "" | find "successfully" > nul
if errorlevel 1 (
    echo mount failed, waiting for retry...
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