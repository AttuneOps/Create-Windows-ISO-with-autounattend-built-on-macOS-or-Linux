Unmounts `{automationWorkerBaseDirectory}/build-{newOsNode.fqn}-uefi-mount`. 

This writes the contents of `build-{newOsNode.fqn}-uefi-mount` to the MSDOS ISO `{automationWorkerBaseDirectory}/kickstart_{newOsNode.fqn}.iso` created in step `Create Empty UEFI for Single ISO`. 

Only applies UEFI kickstarts so if any of these parameters are set the string 'true':

1. isWin10Uefi
2. isWinServerUefi