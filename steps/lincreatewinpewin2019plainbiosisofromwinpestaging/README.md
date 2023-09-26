Creates a WinPE BIOS bootable ISO at `{automationWorkerBaseDirectory}/winpe_win2019_plain_bios.iso` from the WinPE staging directory `{automationWorkerBaseDirectory}/build-{newOsNode.fqn}/winpe_staging`. 

Only applies to BIOS kickstarts so if any of these parameters are set the string 'true':

1. isWin10Bios
2. isWinServerBios