Creates a UEFI bootable Windows ISO called `{isoFilename}` from the contents in folder `{linuxWorkerDirectory}/build-{newMachine.fqn}`.

Only applies UEFI kickstarts so if any of these parameters are set the string `true`:

1. isWin10Uefi
2. isWinServerUefi

https://unix.stackexchange.com/questions/531012/how-to-modify-an-installation-iso-and-keep-it-bootable