You can automate Windows installation in several different ways. You can 
use the methods described below to accomplish the level of automation that 
your deployment needs.

You can prevent some or all of the user interface (UI) pages from Windows 
Setup from being displayed during installation. The default behaviour of 
Windows Setup is to display the Setup UI if any of the required settings are 
incorrect or empty.

This Attune Project contains the various methods of create ISO(s) required for 
automating the Windows Setup.

## Requires Worker
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