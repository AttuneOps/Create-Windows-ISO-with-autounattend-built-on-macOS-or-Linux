A compressed version of `BOOT.WIM` is generated called `BOOT_CLEANED.WIM`.

Relative to the `C:\attuneautomationworker\build-{newOsNode.fqn}` folder:
1. For BIOS boots compresses `.\winpe_staging\SOURCES\BOOT.WIM` to `.\winpe_staging\SOURCES\BOOT_CLEANED.WIM`.
2. For UEFI boots compresses `.\WinPE_amd64\media\sources\boot.wim` to `.\WinPE_amd64\sources\boot_cleaned.wim`.