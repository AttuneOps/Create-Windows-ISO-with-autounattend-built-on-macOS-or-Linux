Makes a copy of the `winpe_win2019_plain_uefi.iso` as `winpe.iso` in the folder `{automationWorkerBaseDirectory}/build-{newOsNode.fqn`.

This ISO is UEFI bootable and works for:

1. Windows Desktop 10
2. Windows Server 2016
2. Windows Server 2019
3. Windows Server 2022

Only applies to UEFI kickstarts so if any of these parameters are set the string 'true':

1. isWin10Uefi
2. isWinServerUefi