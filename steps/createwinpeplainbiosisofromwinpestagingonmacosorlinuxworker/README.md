Creates a WinPE BIOS bootable ISO at `{automationWorkerLinuxBaseDirectory}/winpe_plain_bios.iso` from the WinPE staging directory `{automationWorkerLinuxBaseDirectory}/build-winpe-iso/winpe_staging`. 

Only applies to UEFI kickstarts. Only run if the parameter `kickstartedBootLoaderIsBios` is set `true`.