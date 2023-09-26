Creates a UEFI Boot enabled MSDOS ISO that is large enough to fit the contents of the `build-{newOsNode.fqn}` directory at `{automationWorkerBaseDirectory}/kickstart_{newOsNode.fqn}.iso`.

Only applies UEFI kickstarts so if any of these parameters are set the string 'true':

1. isWin10Uefi
2. isWinServerUefi