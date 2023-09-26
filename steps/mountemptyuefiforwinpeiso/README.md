Creates a UEFI Boot enabled MSDOS ISO that is large enough to fit the contents of the `winpe_staging` directory at `{automationWorkerBaseDirectory}/kickstart_{newOsNode.fqn}.iso`.

Only applies to UEFI kickstarts so if any of these parameters are set the string 'true':

1. isWin10Uefi
2. isWinServerUefi