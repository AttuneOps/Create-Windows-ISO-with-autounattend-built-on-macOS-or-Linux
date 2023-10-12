Creates a UEFI bootable ISO at `{automationWorkerBaseDirectory}/kickstart_{newOsNode.fqn}.iso` from the WinPE staging directory `{automationWorkerBaseDirectory}/build-{newOsNode.fqn}/winpe_staging`. 

Only applies to UEFI kickstarts so if any of these parameters are set the string 'true':

1. isWin10Uefi
2. isWinServerUefi