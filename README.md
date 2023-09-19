



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




## Parameters


| Name | Type | Script Reference | Comment |
| ---- | ---- | ---------------- | ------- |
| Automation Worker Linux User | Linux/Unix Credential | `automationworkerlinuxuser` | non privilege user on the Automation Worker node. |
| Automation Worker Linux Node | Linux/Unix Node | `automationworkerlinuxnode` | The device used to perform tasks to create the ISO. |
| New OS Node | Basic Node | `newosnode` | The New OS to be built. |
| New OS Organisation Name | Text | `newosorganisationname` | Organisation name for the new operating system being created. |
| Automation Worker Base Directory | Text | `automationworkerbasedirectory` | Base directory for deploying temporary files to build the kickstart ISO. |
| New OS Interface Alias | Text | `newosinterfacealias` | This is the "InternetAlias" of the interface shown when you run "get-netipaddress" from powershell on the machine.<br><br>oVirt Deployments = "Ethernet Instance 0"<br>ESXi Deployments = "Ethernet0" |
| New OS Windows User: Administrator | Windows Credential | `newoswindowsuseradministrator` | administrator user on the New OS to be built. |
| New OS Node Subnet | Network IPv4 Subnet | `newosnodesubnet` | Subnet used by the new operating system to be built. |




## Files

| Name | Type | Comment |
| ---- | ---- | ------- |
| Win10 Unattended Config | Version Controlled Files | Windows Desktop 10 unattended.xml file with "Drivers" in the "D:\" drive for single ISO kickstarts. |
| Win10 Desktop ISO | Large Archives | A plain unaltered ISO |






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
