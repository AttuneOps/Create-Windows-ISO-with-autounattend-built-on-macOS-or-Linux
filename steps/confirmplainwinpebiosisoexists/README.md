Checks if the WinPE plain BIOS ISO `{automationWorkerBaseDirectory}/winpe_win2019_plain_bios.iso` exists.

If it does not, prints a message to ask user to run the WinPE BIOS ISO creation blueprint `Create WinPE Plain Win2019 BIOS ISO`.

Only applies to BIOS kickstarts so if any of these parameters are set the string 'true':

1. isWin10Bios
2. isWinServerBios