Creates a WinPE UEFI bootable ISO at `{automationWorkerBaseDirectory}/winpe_plain_uefi.iso` from the WinPE staging directory `{automationWorkerBaseDirectory}/build-build-winpe-iso/winpe_staging`. 

Only applies to UEFI kickstarts. Only run if the parameter `kickstartedBootLoaderIsUefi` is set `true`.