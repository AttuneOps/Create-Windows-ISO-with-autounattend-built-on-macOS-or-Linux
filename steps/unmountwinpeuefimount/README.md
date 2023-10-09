Unmounts `{automationWorkerBaseDirectory}/build-{newOsNode.fqn}/uefi_mount`. This writes back contents of `uefi_mount` to the MSDOS ISO `{automationWorkerBaseDirectory}/kickstart_{newOsNode.fqn}.iso` created in step `Create Empty UEFI for WinPE ISO`. 

Only applies to UEFI kickstarts so if any of these parameters are set the string 'true':

1. isWin10Uefi
2. isWinServerUefi