Creates a UEFI bootable Windows ISO called `kickstart_{newOsNode.fqn}.iso` from the contents in folder `{automationWorkerWindowsBaseDirectory}\build-{newOsNode.fqn}`.


Only applies BIOS kickstarts so if any of these parameters are set the string 'true':

1. isWin10Uefi
2. isWinServerUefi