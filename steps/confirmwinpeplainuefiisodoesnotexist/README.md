Checks if the WinPE plain UEFI ISO `{automationWorkerBaseDirectory}/winpe_win2019_plain_uefi.iso` exists.

If it does, prints a message to ask user to confirm to delete it if they want to recreate it.

Only applies to UEFI kickstarts. Only runs if the parameter `kickstartedBootLoaderIsUefi` is set `true`.