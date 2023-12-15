# Project Overview
This Attune Project provides an efficient and streamlined approach to 
creating customised Windows installation ISOs using the autounattend. 

The project is designed to cater to various Windows distributions and employs 
multiple methodologies to facilitate the creation of these tailored 
installation media. Whether you're working with large 5GB ISOs or building 
a lightweight WinPE installer, this project has the resources and 
blueprints you need to automate the process effectively.

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



# Target Audience
IT professionals and system administrators who regularly set up Windows 
environments.

Organisations looking to streamline their OS deployment process.

Individuals seeking an efficient way to install or reinstall Windows on 
their computers.

# autounattend Installation Methods

Three methods to autounattend install Windows OS are documented in 
this Project.

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

**Advantages:**
* Simple process
* Doesn't require networking

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
* Light work load
* Doesn't require networking

**Disadvantages:** Host requires capability to attach a second 
CD-ROM (eg. oVirt cannot attach a second CD-ROM).

## WinPE ISO
Small WinPE ISO file for each device and any aditional files 
required during the installation are copied from a Samba Share 
on the network.

**Ideal Use Case:** Great for building a large number of 
machines or if a small ISO file is required.

**Advantages:**
* Best for Enterprise
* Small files
* Fastest installation
* Network efficient

**Disadvantages:** Requires significant setup to gather the 
WinPE files and setup a Samba Share.

# Conclusion
By utilising this Attune Project, users can expect a significant reduction 
in the time and effort typically required for Windows installations. The 
combination of versatility, efficiency, and ease of use makes this project 
an invaluable resource for anyone looking to automate their Windows 
installation process.

# Read More
[Attune Project - Automate Windows Installation with autounattend](https://github.com/Attune-Automation/Automate-Windows-Installation-with-autounattend)

[Attune Documentation - Automate Operating System Installation](https://docs.attuneautomation.com/en/latest/topics/automated_os_installation.html)

[Attune Documentation - How-to Guides](https://docs.attuneautomation.com/en/latest/howto/index.html)