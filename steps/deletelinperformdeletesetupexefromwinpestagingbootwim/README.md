Deletes `setup.exe` from the extracted WinPE's `boot.img` at index 2 of the Windows Server 2019 ISO.

By default Windows Server 2019 `boot.img` contains `setup.exe` which was designed to work with calling `setup.exe` which exists at index 1 of Windows Server 2019 image.

As the `winpe_staging` folder will be used to recreate a WinPE BIOS ISO designed to work with a Samba drive which contains the required `setup.exe` for these versions of Windows below we no longer need the `setup.exe` on the WinPE `boot.img`:

1. Windows Desktop 10
2. Windows Server 2016
2. Windows Server 2019
3. Windows Server 2022