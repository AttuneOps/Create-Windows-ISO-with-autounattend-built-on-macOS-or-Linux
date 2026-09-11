Creates a single Windows Server 2019 ISO with `autounattend.xml` for unattended installation.

The ISO will be created at `{ksAttuneBaseDir}/unattended_{newMachine.fqn}.iso`.

For both BIOS and UEFI kickstarts.

Set **BIOS or UEFI** to `BIOS` or `UEFI`.
Set **Operating System Name** to the matching Windows Server edition.
Leave **Is WinPE** as `false`.

This blueprint assumes the drivers drop in directory is at `{linuxWorkerDirectory}/drivers-{newMachine.fqn}` and has the correct drivers dropped in.