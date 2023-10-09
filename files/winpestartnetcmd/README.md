The startnet.cmd is run by WinPE. This script:
1. Installs drivers from "attune_drivers".
2. Sets the IP address.
3. Mounts the Samba server that hosts the extracted Windows ISOs as the "Z" drive.
4. Runs Windows setup.exe.

The Mako parameter "windowsFolderOnSamba" can have these values:

- windows10
- windows2016
- windows2019
- windows2022