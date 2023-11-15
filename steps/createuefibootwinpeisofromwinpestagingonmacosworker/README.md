Creates a UEFI bootable ISO at `{automationWorkerLinuxBaseDirectory}/kickstart_{newOsNode.fqn}.iso` from the WinPE staging directory `{automationWorkerLinuxBaseDirectory}/build-{newOsNode.fqn}/winpe_staging`. 

Only applies to UEFI kickstarts if the parameter `kickstartedBootLoaderIsUefi` is set the string `true`.