You can automate Windows installation in several different ways. You can 
use the methods described below to accomplish the level of automation that 
your deployment needs.

You can prevent some or all of the user interface (UI) pages from Windows 
Setup from being displayed during installation. The default behavior of 
Windows Setup is to display the Setup UI if any of the required settings are 
incorrect or empty.

This Attune Project contains the various methods of create ISO(s) required for 
automating the Windows Setup.

## Requries Worker
Blueprints in this Attune Project require a worker to perform some tasks. The 
worker can be either the Attune instance itself or a separate machine.

## Single ISO Windows Setup Method

This is the simplest automated Windows Setup possible with the least 
dependencies and configuration.

**Advantages**
* Simple
* Doesn't require networking
* Reasonably fast

**Disadvantages**
* Requires transferring and unpacking approx 5gb ISO

## Dual ISO Windows Setup Method

This 

**Advantages**
1. Simple
2. Light weight
3. Doesn't require networking
4. Fast

**Disadvantages**
1. Requires two drives (oVirt doesn't accept a second cdrom or floppy)

## WinPE ISO Windows Setup Method

This method uses a samba share that contains each Windows ISO. The WinPE ISO 
is created with the drivers and autounattend files.

**Advantages**
1. Network efficient
2. Best for enterprise

**Disadvantages**
1. Requires the setup of a samba share with the each Windows ISO

## Blueprint Naming Guide

`Create {os_name} {boot_type} autounattend {method} on {worker}`

`os_name`:
* Windows 10 (Win10)
* Windows Server 2016 (Win2016)
* Windows Server 2019 (Win2019)
* Windows Server 2022 (Win2022)

`boot_type`:
* BIOS
* UEFI

The `boot_type` will not be in the Blueprint name if all boot types can be 
created from a single Blueprint.

`method`:
* Single ISO
* Dual ISO
* WinPE ISO

`worker`:
* macOS
* Linux
* Windows

Examples:
* Create Windows 10 (Win10) autounattend Single ISO on Windows
* Create Windows Server (Win2019) autounattend Dual ISO on Linux
* Create Windows Server (Win2022) autounattend WinPE ISO on Linux

## Understanding Autounattend Automation

Autounattend is a technology developed by Microsoft that enables 
system administrators to automate the Windows installation process 
efficiently. Instead of manually configuring each installation, 
Autounattend relies on a predefined configuration file, commonly 
known as an Autounattend.xml file, to specify various installation 
settings. These settings encompass language preferences, disk 
partitioning schemes, software package selections, network 
configuration, and various customization options. The 
Autounattend.xml file effectively scripts the installation process, 
ensuring consistency and repeatability across deployments.

## Advantages of Automated Windows Installation with Autounattend

Automating the installation of Windows operating systems using 
Autounattend offers several significant advantages:

1. **Time Efficiency:** Manual Windows installation can be a 
time-consuming and labor-intensive task, particularly when 
deploying to multiple machines. Autounattend automates the process, 
saving substantial time and effort.

2. **Consistency:** Automated installations ensure that each 
Windows instance is configured identically, reducing the risk of 
errors or discrepancies resulting from manual intervention.

3. **Reduced Human Error:** Manual Windows installations can lead 
to mistakes or deviations in configuration settings. Autounattend 
eliminates these errors by adhering to a predefined installation 
script.

4. **Standardization:** Autounattend promotes standardized 
configurations across the organization, simplifying management 
and troubleshooting of Windows-based systems.

By leveraging the power of Autounattend, system administrators can 
achieve greater efficiency, reliability, and consistency in 
deploying Windows operating systems, ultimately enhancing the 
overall manageability of their IT infrastructure. This project 
provides valuable resources and templates to facilitate the 
creation of Autounattend configuration files, enabling 
administrators to automate Windows installations seamlessly.
