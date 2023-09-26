Checks if the WinPE plain UEFI ISO `{automationWorkerBaseDirectory}/winpe_win2019_plain_uefi.iso` exists.

If it does not, prints a message to ask user to run the WinPE BIOS ISO creation blueprint `Create WinPE Plain Win2019 UEFI ISO`.

Only applies to UEFI kickstarts so if any of these parameters are set the string 'true':

1. isWin10Uefi
2. isWinServerUefi