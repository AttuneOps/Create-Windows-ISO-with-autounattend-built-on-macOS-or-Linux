Makes a copy of the `winpe_plain_bios.iso` as `winpe.iso` in the folder `C:\attuneautomationworker\build-{newOsNode.fqn`.

This ISO is BIOS bootable and works for:

1. Windows Desktop 10
2. Windows Server 2016
2. Windows Server 2019
3. Windows Server 2022

Only applies to BIOS kickstarts so if any of these parameters are set the string 'true':

1. `isWin10Bios`
2. `isWinServerBios`