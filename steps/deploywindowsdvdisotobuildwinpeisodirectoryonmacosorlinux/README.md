You can extract necessary files from a Windows installation ISO to create a 
WinPE ISO. I've selected Win2019 to extract the WinPE ISO from.

Windows 10 Workstation ISO is not recommended as its WinPE has compatibility 
issues with the drvload-ing the vioscsi.inf oVirt driver.  

The WinPE from Win2016 and Win2022 has not been tested for `vioscsi.inf` 
compatibility.
