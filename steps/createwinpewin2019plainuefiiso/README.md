Creates an empty ISO that is compatible with UEFI boot using `mkfs.msdos`.

The size is set a bit larger than the size of `winpe_staging`.

Only applies to UEFI kickstarts so if any of these parameters are set the string 'true':

1. isWin10Uefi
2. isWinServerUefi