Overwrites this default `efisys.bin` created by the  Windows Assessment and Deployment Kit:
* `C:\WinPE_amd64\fwfiles\efisys.bin` - which prompts the user to "Press any key To boot from CD or DVD . . . ." for UEFI boots methods.

with the `efisys_noprompt.bin` file from Win2019 DVD ISO:
* `C:\attuneautomationworker\build-winpe-iso\winimg\efi\microsoft\boot\efisys_noprompt.bin` - which does not have the "Press any key To boot from CD or DVD . . . ." prompt for UEFI boot methods.

After this step WinPE ISOs built with a copy of the skeleton WinPE directory `C:\WinPE_amd64` will not prompt for the "Press any key To boot from CD or DVD . . . ." for UEFI boots methods.