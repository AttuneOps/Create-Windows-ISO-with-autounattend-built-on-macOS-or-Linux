Unmounts `C:\attuneautomationworker\build-winpe-iso\WinPE_BootImageDir` using `Dism`.

This will write out changes back into `C:\attuneautomationworker\winpe_staging\SOURCES\BOOT.WIM`.

Then a compressed version of `BOOT.WIM` is generated called `BOOT_CLEANED.WIM`.

Make sure there is no Windows File Explorer open at the mount directory.

If there is the unmount will fail and you need to run these commands to unmount it:
```
$ISO_BUILD="C:\attuneautomationworker"
$BUILD_DIR="$ISO_BUILD\build-winpe-iso"

Set-Location $BUILD_DIR

Dism /Unmount-Image /MountDir:"./WinPE_BootImageDir" /discard
```