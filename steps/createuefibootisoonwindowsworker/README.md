Creates a UEFI bootable Windows ISO called `kickstart_{newOsNode.fqn}.iso` from the contents in folder `C:\attuneautomationworker\build-{newOsNode.fqn}`.


Only applies to UEFI kickstarts so if any of these parameters are set the string 'true':

1. `isWin10Uefi`
2. `isWinServerUefi`