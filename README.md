



[![Docs](https://img.shields.io/badge/docs-latest-brightgreen.svg)](http://doc.servertribe.com)
[![Discord](https://img.shields.io/discord/844971127703994369)](http://discord.servertribe.com)
[![Docs](https://img.shields.io/badge/videos-watch-brightgreen.svg)](https://www.youtube.com/@servertribe)
[![Generic badge](https://img.shields.io/badge/download-latest-brightgreen.svg)](https://www.servertribe.com/community-edition/)

# Automate Windows Installation with autounattend

This Attune Project provides an efficient and streamlined approach to 
creating customised Windows installation ISOs using the autounattend. 

The project caters to various Windows distributions and employs 
multiple methodologies to facilitate the creation of these tailored 
installation media. Whether you're working with large 5GB ISOs or building 
a lightweight WinPE installer, this project has the resources and 
blueprints you need to automate the process effectively.

# Target Audience
IT professionals and system administrators who regularly set up Windows 
environments.

Organisations looking to streamline their OS deployment process.

Individuals seeking an efficient way to install or reinstall Windows on 
their computers.

# Key Features

**Versatile Windows Support:** The project includes blueprints for a range 
of Windows distributions, allowing for broad application across different 
Windows environments.

**Comprehensive Methodologies:** From mounting large 5GB ISO files to 
constructing a WinPE installer ISO, the project encompasses diverse 
techniques to suit various requirements and preferences.

**Autounattend.xml Integration:** Central to the project is the utilisation 
of autounattend.xml, which automates the Windows installation process and 
eliminating manual input.

**Blueprints for Customisation:** Each blueprint within the project is 
designed to be clear and user-friendly, ensuring that even users with 
minimal experience in Windows automation can achieve successful outcomes.

**Efficient ISO Creation Process:** The project streamlines the ISO 
creation process, making it faster and more reliable, whether you are an 
IT professional setting up multiple systems or an individual user 
installing Windows on a new PC.

# autounattend Installation Methods

There are three methods to autounattend install Windows OS in this Project.

1. Single ISO
2. Dual ISO
3. WinPE ISO

## Single ISO

This is the simplest installation possible with the least 
dependencies and configuration.

The large 5GB Windows installation ISO is extracted and repackaged 
with the drivers and configuration files.

**Ideal Use Case:** Great fallback method for when no other 
methods are easy.

**Advantages:** Simple setup and process

**Disadvantages:** Each installation being performed requires 
unpacking, repacking, and transfering around a unique 5GB ISO 
file.

## Dual ISO

The unalted Windows Installation ISO is deployed directly to 
the device. Drivers and configuration files are attached to 
the device in a separate ISO file.

**Ideal Use Case:** Preferred method for a small number of 
machines to build.

**Advantages:** 
* Simple setup and process
* Light work load

**Disadvantages:** Host requires capability to attach a second 
CD-ROM (eg. oVirt cannot attach a second CD-ROM).

## WinPE ISO

Small WinPE ISO file for each device. Any aditional files 
required during the installation are copied from a Samba Share 
on the network.

**Ideal Use Case:** Great for building a large number of 
machines or if a small ISO file is required.

**Advantages:**
* Best for Enterprise
* Small files
* Fastest installation
* Network efficient

**Disadvantages:** Requires significant once off setup to gather the 
WinPE files and setup a Samba Share.

# Get Started

If you haven't already, download and install the free 
[Attune Community Edition](https://www.servertribe.com/).

Clone the 
[Automate Windows Installation with autounattend](https://github.com/Attune-Automation/Automate-Windows-Installation-with-autounattend) 
Project.

Review the **autounattend Installation Methods** and select a method.

Review the description of the Blueprint you will run and following the 
instructions.

# Learn More

Visit the 
[Attune Documentation - Automate Operating System Installation](https://docs.attuneautomation.com/en/latest/topics/automated_os_installation.html)
to learn how Attune streamlines the OS installation process.

For other guides, visit the 
[Attune Documentation - How-to Guides](https://docs.attuneautomation.com/en/latest/howto/index.html)
.




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



### Cleanup macOS or Linux Worker


### Cleanup Windows Worker


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

### Create Windows autounattend WinPE ISO on macOS or Linux

This Attune Blueprint creates a WinPE ISO file to install Windows OS on a 
specific device.

Builds Windows workstations and Windows Server machines with either BIOS or 
UEFI boot.

The process take the WinPE Essential files for the boot configuration being 
built and repackages the ISO file with the requries configuration files to 
automate the installation.



The steps in the Blueprint are performed on macOS or Linux.

A single WinPE ISO is created.

### Create Windows autounattend WinPE ISO on Windows Worker


### Create Windows Server 2016 (Win2016) autounattend Dual ISO on macOS or Linux Worker


### Create Windows Server 2016 (Win2016) autounattend Dual ISO on Windows Worker


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


### Create Windows Server 2019 (Win2019) autounattend Dual ISO on Windows Worker


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


### Create Windows Server 2022 (Win2022) autounattend Dual ISO on Windows Worker


### Create Windows Server 2022 (Win2022) autounattend Single ISO on macOS or Linux Worker

Creates a single Windows Server 2022 ISO with `autounattend.xml` for unattended installation.

The ISO will be created at `{ksAttuneBaseDir}/kickstart_{kickstartedNode.fqn}.iso`.

For both BIOS and UEFI kickstarts.

For BIOS kickstarts please set `isWinServerBios` to the string 'true'.

For UEFI kickstarts please set `isWinServerUefi` to the string 'true'.

Please set `isWinPEKickstart` to the string 'false'.

This blueprint assumes the drivers drop in directory is at `{automationWorkerBaseDirectory}/drivers-{newOsNode.fqn}` and has the correct drivers dropped in.

### Create Windows Server 2022 (Win2022) autounattend Single ISO on Windows Worker


### Deploy and Extract Win10 ISO to Samba Share on Linux

This Blueprint deploys the Windows 10 ISO files to the Samba Share server.

### Deploy and Extract Win10 ISO to Smb Share on Windows


### Deploy and Extract Win11 ISO to Smb Share on Windows


### Deploy and Extract Win2016 ISO to Samba Share on Linux

This Blueprint deploys the Windows Server 2016 ISO files to the Samba Share server.

### Deploy and Extract Win2016 ISO to Smb Share on Windows


### Deploy and Extract Win2019 ISO to Samba Share on Linux

This Blueprint deploys the Windows Server 2019 ISO files to the Samba Share server.

### Deploy and Extract Win2019 ISO to Smb Share on Windows


### Deploy and Extract Win2022 ISO to Samba Share on Linux

This Blueprint deploys the Windows Server 2022 ISO files to the Samba Share server.

### Deploy and Extract Win2022 ISO to Smb Share on Windows


### Deploy and Mount Win10 ISO To Node for Feature Install on Windows


### Deploy and Mount Win2016 ISO To Node for Feature Install on Windows


### Deploy and Mount Win2019 ISO To Node for Feature Install on Windows


### Deploy and Mount Win2022 ISO To Node for Feature Install on Windows


### Extract ISO and Configure Folder Permissions for Samba Share on Linux

This blueprint is a repeatable process for the 
`Deploy and Extract {windows_distribution} ISO to Samba Share` blueprints.

### Perform Test Win Node

Performs basic tests for the built node.

### Unmount and Remove ISO From Node for Feature Install on Windows


### WinPE Essentials Extraction on macOS or Linux

This Attune Blueprint extracts the essential WinPE files from a full 5GB 
Windows installation ISO, reducing the ISO file size to less than 500MB.

The steps in the Blueprint are performed on macOS or Linux.

Two WinPE ISOs are created, one for BIOS boot and another for UEFI boot.

### WinPE Essentials Extraction on Windows

Sets up the "plain" WinPE skeleton files on Windows Worker at `C:\WinPE_amd64`.

This folder can be copied and then it's `.\media\sources\boot.wim` file can be modified for an automated unattended Windows install.

This folder works for both BIOS and UEFI boot methods.




## Parameters


| Name | Type | Script Reference | Comment |
| ---- | ---- | ---------------- | ------- |
| Automation Worker Linux Base Directory | Text | `automationworkerlinuxbasedirectory` | Base directory for deploying temporary files to build the kickstart ISO on a macOS or Linux Worker. |
| Automation Worker Linux Node | Linux/Unix Node | `automationworkerlinuxnode` | The Linux automation worker node used to perform tasks to create the ISO. |
| Automation Worker Linux User | Linux/Unix Credential | `automationworkerlinuxuser` | Non privilege user on the Automation Worker node. |
| Automation Worker Linux User: root | Linux/Unix Credential | `automationworkerlinuxuserroot` | root user on the Linux Automation Worker node. |
| Automation Worker Windows Base Directory | Text | `automationworkerwindowsbasedirectory` | Base directory for deploying temporary files to build the ISO on a Windows Worker.<br><br>eg. "C:/attune_auto_installer" |
| Automation Worker Windows Base Directory Share Path | Text | `automationworkerwindowsbasedirectorysharepath` | eg. "/c$/attune_auto_installer" |
| Automation Worker Windows Node | Windows Node | `automationworkerwindowsnode` | The Windows automation worker node used to perform tasks to create the ISO. |
| Automation Worker Windows User: Administrator | Windows Credential | `automationworkerwindowsuseradministrator` | Administrator user on the Windows Automation Worker node. |
| Drivers and Autounattend Drive Letter | Text | `driversandautounattenddriveletter` | The Windows drive letter containing the drivers and autounattend.xml as a single letter.<br><br>This will be different for each install method.<br>D for "Single ISO"<br>E for "Dual ISO"<br>X for "WinPE ISO" |
| Is BIOS Boot | Text | `isbiosboot` |  |
| Is UEFI Boot | Text | `isuefiboot` |  |
| Is Win10 BIOS | Text | `iswin10bios` |  |
| Is Win10 UEFI | Text | `iswin10uefi` |  |
| Is Win11 BIOS | Text | `iswin11bios` |  |
| Is Win11 UEFI | Text | `iswin11uefi` |  |
| Is Windows Server | Text | `iswindowsserver` |  |
| Is Windows Workstation | Text | `iswindowsworkstation` |  |
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




## Files

| Name | Type | Comment |
| ---- | ---- | ------- |
| Post Install Setup PowerShell Script | Version Controlled Files | This file is called by the "<FirstLogonCommands>" section in the autounattend.xml file.<br><br>This script is run once post installation of the WIndows operating system. |
| Test File | Version Controlled Files | Test file for testing push files. |
| Win10 ISO | Large Archives | Download from https://www.microsoft.com/en-us/software-download/windows10ISO/.<br><br>Please select the English (United States) version. |
| Win11 ISO | Large Archives | Download from https://www.microsoft.com/en-us/software-download/windows11<br><br>Please select the English (United States) version. |
| Win2016 ISO | Large Archives | Download from https://www.microsoft.com/en-us/evalcenter/download-windows-server-2016.<br><br> |
| Win2019 ISO | Large Archives | Download from https://www.microsoft.com/en-us/evalcenter/download-windows-server-2019. |
| Win2022 ISO | Large Archives | Download from https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2022. |
| Windows Unattended config | Version Controlled Files | For these Windows versions:<br>* WIndows Desktop 10<br>* WIndows Server 2016<br>* WIndows Server 2019<br>* WIndows Server 2022<br><br>For these boot methods:<br>* BIOS<br>* UEFI |
| WinPE startnet.cmd | Version Controlled Files | The startnet.cmd is run by WinPE. This script:<br>1. Installs drivers from "attune_drivers".<br>2. Sets the IP address.<br>3. Mounts the Samba server that hosts the extracted Windows ISOs as the "Z" drive.<br>4. Runs Windows setup.exe.<br><br>The Mako parameter "windowsFolderOnSamba" can have these values:<br><br>- windows10<br>- windows2016<br>- windows2019<br>- windows2022 |
| Windows Unattended config v2 | Version Controlled Files |  |






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
