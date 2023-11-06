



[![Docs](https://img.shields.io/badge/docs-latest-brightgreen.svg)](http://doc.servertribe.com)
[![Discord](https://img.shields.io/discord/844971127703994369)](http://discord.servertribe.com)
[![Docs](https://img.shields.io/badge/videos-watch-brightgreen.svg)](https://www.youtube.com/@servertribe)
[![Generic badge](https://img.shields.io/badge/download-latest-brightgreen.svg)](https://www.servertribe.com/community-edition/)

# Automate Windows Installation with autounattend






# Attune

[Attune](https://www.servertribe.com/)
automates and orchestrates processes to streamline deployments, scaling,
migrations, and management of your systems. The Attune platform is building a
community of sharable automated and orchestrated processes.

You can leverage the publicly available orchestrated blueprints to increase
your productivity, and accelerate the delivery of your projects. You can
open-source your own work and improve existing community orchestrated projects.

## Get Started with Attune, Download NOW!

The **Attune Community Edition** can be
[downloaded](https://www.servertribe.com/comunity-edition/)
for free from our
[ServerTribe website](https://www.servertribe.com/comunity-edition/).
You can learn more about Attune through
[ServerTribe's YouTube Channel](https://www.youtube.com/@servertribe).







# Clone this Project

To clone this project into your own instance of Attune, follow the
[Clone a GIT Project How To Instructions](https://servertribe-attune.readthedocs.io/en/latest/howto/design_workspace/clone_project.html).




## Blueprints

This Project contains the following Blueprints.



### Create Windows 10 (Win10) autounattend Dual ISO on macOS or Linux Worker


### Create Windows 10 (Win10) autounattend Dual ISO on Windows Worker


### Create Windows 10 (Win10) autounattend Single ISO on macOS or Linux Worker

Creates a single Windows Desktop 10 ISO with `autounattend.xml` for unattended installation.

The ISO will be created at `{ksAttuneBaseDir}/kickstart_{kickstartedNode.fqn}.iso`.

For both BIOS and UEFI kickstarts.

For BIOS kickstarts please set `isWin10Bios` to the string 'true'.

For UEFI kickstarts please set `isWin10Uefi` to the string 'true'.

Please set `isWinPEKickstart` to the string 'false'.

This blueprint assumes the drivers drop in directory is at `{automationWorkerWindowsBaseDirectory}/drivers-{newOsNode.fqn}` and has the correct drivers dropped in.

### Create Windows 10 (Win10) autounattend Single ISO on Windows Worker

The Windows worker can run Linux commands using Windows Subsystem for Linux.

### Create Windows autounattend WinPE ISO on macOS or Linux Worker


### Create Windows PE (WinPE) Plain ISO on macOS or Linux Worker


### Create Windows Server 2016 (Win2016) autounattend Dual ISO on macOS or Linux Worker


### Create Windows Server 2016 (Win2016) autounattend Single ISO on macOS or Linux Worker

Creates a single Windows Server 2016 ISO with `autounattend.xml` for unattended installation.

The ISO will be created at `{ksAttuneBaseDir}/kickstart_{kickstartedNode.fqn}.iso`.

For both BIOS and UEFI kickstarts.

For BIOS kickstarts please set `isWinServerBios` to the string 'true'.

For UEFI kickstarts please set `isWinServerUefi` to the string 'true'.

Please set `isWinPEKickstart` to the string 'false'.

This blueprint assumes the drivers drop in directory is at `{automationWorkerLinuxBaseDirectory}/drivers-{newOsNode.fqn}` and has the correct drivers dropped in.

### Create Windows Server 2016 (Win2016) autounattend Single ISO on Windows Worker


### Create Windows Server 2019 (Win2019) autounattend Dual ISO on macOS or Linux Worker


### Create Windows Server 2019 (Win2019) autounattend Single ISO on macOS or Linux Worker

Creates a single Windows Server 2019 ISO with `autounattend.xml` for unattended installation.

The ISO will be created at `{ksAttuneBaseDir}/kickstart_{kickstartedNode.fqn}.iso`.

For both BIOS and UEFI kickstarts.

For BIOS kickstarts please set `isWinServerBios` to the string 'true'.

For UEFI kickstarts please set `isWinServerUefi` to the string 'true'.

Please set `isWinPEKickstart` to the string 'false'.

This blueprint assumes the drivers drop in directory is at `{automationWorkerBaseDirectory}/drivers-{newOsNode.fqn}` and has the correct drivers dropped in.

### Create Windows Server 2019 (Win2019) autounattend Single ISO on Windows Worker


### Create Windows Server 2022 (Win2022) autounattend Dual ISO on macOS or Linux Worker


### Create Windows Server 2022 (Win2022) autounattend Single ISO on macOS or Linux Worker

Creates a single Windows Server 2022 ISO with `autounattend.xml` for unattended installation.

The ISO will be created at `{ksAttuneBaseDir}/kickstart_{kickstartedNode.fqn}.iso`.

For both BIOS and UEFI kickstarts.

For BIOS kickstarts please set `isWinServerBios` to the string 'true'.

For UEFI kickstarts please set `isWinServerUefi` to the string 'true'.

Please set `isWinPEKickstart` to the string 'false'.

This blueprint assumes the drivers drop in directory is at `{automationWorkerBaseDirectory}/drivers-{newOsNode.fqn}` and has the correct drivers dropped in.

### Create Windows Server 2022 (Win2022) autounattend Single ISO on Windows Worker


### Deploy Win10 ISO to Samba Share

The Windows Desktop 10 ISO is placed on the Samba server at `${HOME}/windows_iso_data_for_winpe/windows10`.

### Deploy Win2016 ISO to Samba Share

The Windows Server 2016 ISO is placed on the Samba server at `${HOME}/windows_iso_data_for_winpe/windows2016`. 

### Deploy Win2019 ISO to Samba Share

The Windows Server 2019 ISO is placed on the Samba server at `${HOME}/windows_iso_data_for_winpe/windows2019`.

### Deploy Win2022 ISO to Samba Share

The Windows Server 2022 ISO is placed on the Samba server at `${HOME}/windows_iso_data_for_winpe/windows2022`.

### Perform Post Cleanup on macOS or Linux Worker


### Perform Post Cleanup on Windows Worker


### Perform Test Win Node

Performs basic tests for the built node.

### Setup Samba on Linux

Sets up a Samba server with the folder at `${HOME}/windows_iso_data_for_winpe`.




## Parameters


| Name | Type | Script Reference | Comment |
| ---- | ---- | ---------------- | ------- |
| Automation Worker Linux Base Directory | Text | `automationworkerlinuxbasedirectory` | Base directory for deploying temporary files to build the kickstart ISO on a macOS or Linux Worker. |
| Automation Worker Linux Node | Linux/Unix Node | `automationworkerlinuxnode` | The Linux automation worker node used to perform tasks to create the ISO. |
| Automation Worker Linux User | Linux/Unix Credential | `automationworkerlinuxuser` | Non privilege user on the Automation Worker node. |
| Automation Worker Linux User: root | Linux/Unix Credential | `automationworkerlinuxuserroot` | root user on the Linux Automation Worker node. |
| Automation Worker Windows Node | Windows Node | `automationworkerwindowsnode` | The Windows automation worker node used to perform tasks to create the ISO. |
| Automation Worker Windows User: Administrator | Windows Credential | `automationworkerwindowsuseradministrator` | Administrator user on the Windows Automation Worker node. |
| Drivers and Autounattend Drive Letter | Text | `driversandautounattenddriveletter` | The Windows drive letter containing the drivers and autounattend.xml as a single letter.<br><br>This will be different for each install method.<br>D for "Single ISO"<br>E for "Dual ISO"<br>X for "WinPE ISO" |
| Is Win10 BIOS | Text | `iswin10bios` |  |
| Is Win10 UEFI | Text | `iswin10uefi` |  |
| Is WinPE Kickstart | Text | `iswinpekickstart` | Set TRUE for WinPE kickstarts and FALSE for Single ISO and Dual ISO kickstarts. |
| Is Win Server BIOS | Text | `iswinserverbios` |  |
| Is Win Server UEFI | Text | `iswinserveruefi` |  |
| Kickstarted Boot Loader is BIOS | Text | `kickstartedbootloaderisbios` |  |
| Kickstarted Boot Loader is UEFI | Text | `kickstartedbootloaderisuefi` |  |
| Kickstarted Operating System Name | Text | `kickstartedoperatingsystemname` | Set as:<br>"Windows 10",<br>"Windows Server 2016",<br>"Windows Server 2019",<br>"Windows Server 2022" |
| New OS Node | Basic Node | `newosnode` | The New OS to be built. |
| New OS Node Subnet | Network IPv4 Subnet | `newosnodesubnet` | Subnet used by the new operating system to be built. |
| New OS Organisation Name | Text | `newosorganisationname` | Organisation name for the new operating system being created. |
| New OS Windows Node | Windows Node | `newoswindowsnode` |  |
| New OS Windows TimeZone | Text | `newoswindowstimezone` | Get the full list using the PowerShell command:<br>Get-TimeZone -ListAvailable |
| New OS Windows User: Administrator | Windows Credential | `newoswindowsuseradministrator` | administrator user on the New OS to be built. |
| Post Install Setup Script Drive Letter | Text | `postinstallsetupscriptdriveletter` | The Windows drive letter containing the Post Install PowerShell setup script post_install_setup.ps1 as a single letter as seen by the Windows installer.<br><br>This will be different for each install method.<br><br>D for "Single ISO"<br>E for "Dual ISO"<br>C for "WinPE ISO" |
| Samba Server IP Address | Text | `sambaserveripaddress` |  |
| Windows Folder On Samba | Text | `windowsfolderonsamba` | The Windows folder on the Samba server. This parameter is used by startnet.cmd and can take these values:<br><br>- windows10<br>- windows2016<br>- windows2019<br>- windows2022 |
| WSL2 Automation Worker Linux User | Linux/Unix Credential | `wsl2automationworkerlinuxuser` | Non privilege user on the WSL2 Automation Worker node. |




## Files

| Name | Type | Comment |
| ---- | ---- | ------- |
| Post Install Setup PowerShell Script | Version Controlled Files | This file is called by the "<FirstLogonCommands>" section in the autounattend.xml file.<br><br>This script is run once post installation of the WIndows operating system. |
| Test File | Version Controlled Files | Test file for testing push files. |
| Win10 Desktop ISO | Large Archives | Download from https://www.microsoft.com/en-us/software-download/windows10ISO/.<br><br>Please select the English (United States) version. |
| Windows Server 2019 ISO | Large Archives | Download from https://www.microsoft.com/en-us/evalcenter/download-windows-server-2019. |
| Windows Unattended config | Version Controlled Files | For these Windows versions:<br>* WIndows Desktop 10<br>* WIndows Server 2016<br>* WIndows Server 2019<br>* WIndows Server 2022<br><br>For these boot methods:<br>* BIOS<br>* UEFI |
| WinPE startnet.cmd | Version Controlled Files | The startnet.cmd is run by WinPE. This script:<br>1. Installs drivers from "attune_drivers".<br>2. Sets the IP address.<br>3. Mounts the Samba server that hosts the extracted Windows ISOs as the "Z" drive.<br>4. Runs Windows setup.exe.<br><br>The Mako parameter "windowsFolderOnSamba" can have these values:<br><br>- windows10<br>- windows2016<br>- windows2019<br>- windows2022 |
| WIN Raw Win2016 ISO | Large Archives | Download from https://www.microsoft.com/en-us/evalcenter/download-windows-server-2016.<br><br> |
| WIN Raw Win2022 ISO | Large Archives | Download from https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2022. |






# Contribute to this Project

**The collective power of a community of talented individuals working in
concert delivers not only more ideas, but quicker development and
troubleshooting when issues arise.**

If you’d like to contribute and help improve these projects, please fork our
repository, commit your changes in Attune, push you changes, and create a
pull request.

<img src="https://www.servertribe.com/wp-content/uploads/2023/02/Attune-pull-request-01.png" alt="pull request"/>

---

Please feel free to raise any issues or questions you have.

<img src="https://www.servertribe.com/wp-content/uploads/2023/02/Attune-get-help-02.png" alt="create an issue"/>


---

**Thank you**
