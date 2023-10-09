Extracts the WinPE image from Windows Server 2019 `boot.wim` by default at index 2.

Writes this out to `winpe.iso`.

This is the exact copy of Windows Server 2019's WinPE image which by default will run `setup.exe` on the Windows Desktop ISO at a higher priority than running `startnet.cmd`.