Creates a UEFI bootable ISO at `C:\attuneautomationworker\kickstart_{newOsNode.fqn}.iso` from the WinPE staging directory `C:\attuneautomationworker\build-{newOsNode.fqn}\winpe_staging`. 

Only applies to UEFI kickstarts if the parameter `kickstartedBootLoaderIsUefi` is set the string `true`.