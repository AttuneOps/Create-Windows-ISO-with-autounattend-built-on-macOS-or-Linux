Mounts the empty UEFI ISO at `{automationWorkerBaseDirectory}/winpe_win2019_plain_uefi.iso` to `{automationWorkerBaseDirectory}/build-{newOsNode.fqn}/uefi_mount`.

Only applies to UEFI kickstarts so if any of these parameters are set the string 'true':

1. isWin10Uefi
2. isWinServerUefi