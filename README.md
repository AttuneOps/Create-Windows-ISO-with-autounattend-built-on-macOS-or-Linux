



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



### Create Win10 BIOS autounattend Single ISO on Linux

Creates a single Windows Desktop 10 ISO with `autounattend.xml` for unattended installation.

The ISO will be created at "{ksAttuneBaseDir}/kickstart_{kickstartedNode.fqn}.iso".

### Create Win10 UEFI autounattend Single ISO on Linux


### Create Win2016 BIOS autounattend Single ISO on Linux


### Create Win2016 UEFI autounattend Single ISO on Linux


### Create Win2019 BIOS autounattend Single ISO on Linux


### Create Win2019 UEFI autounattend Single ISO on Linux


### Create Win2022 BIOS autounattend Single ISO on Linux


### Create Win2022 UEFI autounattend Single ISO on Linux


### Create Win2022 UEFI autounattend Dual ISO on macOS


### Create Win2019 UEFI autounattend Dual ISO on macOS





## Parameters


| Name | Type | Script Reference | Comment |
| ---- | ---- | ---------------- | ------- |
| Automation Worker Base Directory | Text | `automationworkerbasedirectory` | Base directory for deploying temporary files to build the kickstart ISO. |
| Automation Worker Linux Node | Linux/Unix Node | `automationworkerlinuxnode` | The device used to perform tasks to create the ISO. |
| Automation Worker Linux User | Linux/Unix Credential | `automationworkerlinuxuser` | non privilege user on the Automation Worker node. |
| Automation Worker Linux User: root | Linux/Unix Credential | `automationworkerlinuxuserroot` | root user on the Automation Worker node. |
| Drivers and Scripts Drive | Text | `driversandscriptsdrive` | The Windows drive letter containing the attune_drivers and post_install_setup.ps1 as a single letter.<br><br>This will be different for each install method.<br>D for "Single ISO"<br>E for "Dual ISO"<br>X for "WinPE ISO" |
| Drivers Path | Text | `driverspath` |  |
| Kickstarted Node | Basic Node | `kickstartednode` |  |
| Kickstarted Node Subnet | Network IPv4 Subnet | `kickstartednodesubnet` |  |
| Kickstarted Windows TimeZone | Text | `kickstartedwindowstimezone` | Get the full list using the PowerShell command:<br>Get-TimeZone -ListAvailable |
| Kickstarted Windows User: Administrator | Windows Credential | `kickstartedwindowsuseradministrator` | The windows administrator user |
| Kickstart Organisation Name | Text | `kickstartorganisationname` |  |
| Kickstart Worker Linux Node | Linux/Unix Node | `kickstartworkerlinuxnode` | Linux refers to both Linux and MacOS. |
| Kickstart Worker Linux User | Linux/Unix Credential | `kickstartworkerlinuxuser` | The user credentials for the node building the kickstart ISO.<br>Only for Kickstart Worker Linux Node. |
| New OS Interface Alias | Text | `newosinterfacealias` | This is the "InternetAlias" of the interface shown when you run "get-netipaddress" from powershell on the machine.<br><br>oVirt Deployments = "Ethernet Instance 0"<br>ESXi Deployments = "Ethernet0" |
| New OS Node | Basic Node | `newosnode` | The New OS to be built. |
| New OS Node Subnet | Network IPv4 Subnet | `newosnodesubnet` | Subnet used by the new operating system to be built. |
| New OS Organisation Name | Text | `newosorganisationname` | Organisation name for the new operating system being created. |
| New OS Windows TimeZone | Text | `newoswindowstimezone` | Get the full list using the PowerShell command:<br>Get-TimeZone -ListAvailable |
| New OS Windows User: Administrator | Windows Credential | `newoswindowsuseradministrator` | administrator user on the New OS to be built. |




## Files

| Name | Type | Comment |
| ---- | ---- | ------- |
| Post Install Setup PowerShell Script | Version Controlled Files |  |
| Widows Server BIOS Unattended Config | Version Controlled Files |  |
| Win10 Desktop ISO | Large Archives | A plain unaltered ISO |
| Win10 UEFI Unattended Config | Version Controlled Files |  |
| Win10 Unattended Config | Version Controlled Files | Windows Desktop 10 unattended.xml file. |
| Win2019 UEFI Unattended Config | Version Controlled Files |  |
| Windows Server 2019 ISO | Large Archives | Download from https://www.microsoft.com/en-us/evalcenter/download-windows-server-2019. |
| WIN Raw Win2016 ISO | Large Archives | https://www.microsoft.com/en-us/evalcenter/download-windows-server-2016 |
| WIN Raw Win2022 ISO | Large Archives |  |






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
