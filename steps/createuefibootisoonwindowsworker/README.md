Creates a UEFI bootable Windows ISO called `{isoFilename}` from the contents in folder `{windowsWorkerDirectory}\build-{newMachine.fqn}`.


Only applies to UEFI kickstarts so if any of these parameters are set the string 'true':

1. `isWin10Uefi`
2. `isWinServerUefi`