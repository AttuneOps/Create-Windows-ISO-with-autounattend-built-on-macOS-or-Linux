Checks if the WinPE plain BIOS ISO `C:\attuneautomationworker/winpe_plain_uefi.iso` exists.

If it does not, a message will be printed to ask the user to run the WinPE UEFI ISO creation blueprint `Create Windows PE (WinPE) Plain ISO on Windows Worker`.

Only applies to BIOS kickstarts so if any of these parameters are set the string `true`:

1. `isWin10Uefi`
2. `isWinServerUefi`