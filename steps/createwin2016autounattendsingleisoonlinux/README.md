Creates a single Windows Server 2016 ISO with `autounattend.xml` for unattended installation.

The ISO will be created at `{ksAttuneBaseDir}/kickstart_{kickstartedNode.fqn}.iso`.

For both BIOS and UEFI kickstarts.

For BIOS kickstarts please set `isWinServerBios` to the string 'true'.

For UEFI kickstarts please set `isWinServerUefi` to the string 'true'.

Please set `isWinPEKickstart` to the string 'false'.

This blueprint assumes the drivers drop in directory is at `{automationWorkerBaseDirectory}/drivers-{newOsNode.fqn}` and has the correct drivers dropped in.