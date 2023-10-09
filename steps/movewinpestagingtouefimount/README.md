Relative to the `{automationWorkerBaseDirectory}/build-{newOsNode.fqn}` directory, this step moves the contents of `winpe_staging` to `uefi_mount`.

Only applies to UEFI kickstarts so if any of these parameters are set the string 'true':

1. isWin10Uefi
2. isWinServerUefi