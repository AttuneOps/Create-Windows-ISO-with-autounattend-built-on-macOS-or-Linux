Creates a BIOS bootable Windows ISO called `kickstart_{newOsNode.fqn}.iso` from the contents in folder `C:\attuneautomationworker\build-{newOsNode.fqn}`.


Only applies BIOS kickstarts so if any of these parameters are set the string `true`:

1. `isWin10Bios`
2. `isWinServerBios`