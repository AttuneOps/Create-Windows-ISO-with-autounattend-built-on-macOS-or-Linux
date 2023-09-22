Checks if the WinPE plain BIOS ISO `{automationWorkerBaseDirectory}/winpe_win2019_plain_bios.iso` exists.

If it does, prints a message to ask user to confirm to delete it if they want to recreate it.

Only applies to BIOS kickstarts so if any of these parameters are set the string 'true':

1. isWin10Bios
2. isWinServerBios

