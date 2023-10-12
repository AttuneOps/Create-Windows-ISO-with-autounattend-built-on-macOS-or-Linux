Checks if the WinPE plain BIOS ISO `{automationWorkerBaseDirectory}/winpe_plain_bios.iso` exists.

If it does, prints a message to ask user to confirm to delete it if they want to recreate it.

Only applies to BIOS kickstarts. Only runs if the parameter `kickstartedBootLoaderIsBios` is set `true`.