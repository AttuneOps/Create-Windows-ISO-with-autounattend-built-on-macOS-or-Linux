Creates a BIOS bootable ISO at `{automationWorkerLinuxBaseDirectory}/kickstart_{newOsNode.fqn}.iso` from the WinPE staging directory `{automationWorkerLinuxBaseDirectory}/build-{newOsNode.fqn}/winpe_staging`. 

Only applies to BIOS kickstarts so if any of these parameters are set the string `true`:

1. `isWin10Bios`
2. `isWinServerBios`