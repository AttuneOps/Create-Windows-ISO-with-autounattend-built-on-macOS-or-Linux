Unmounts `C:\attuneautomationworker\build-{newOsNode.fqn}\WinPE_BootImageDir` using `Dism`.

This will write out changes back into `C:\attuneautomationworker\build-{newOsNode.fqn}\WinPE_amd64\sources\boot.wim` for both BIOS and  UEFI boots.

Make sure there is no Windows File Explorer open at the mount directory.

If there is the unmount will fail and you need to manually run these commands to unmount it:

```
$ISO_BUILD="C:\attuneautomationworker"
$BUILD_DIR="$ISO_BUILD\build-{newOsNode.fqn}"

Set-Location $BUILD_DIR

Dism /Unmount-Image /MountDir:"./WinPE_BootImageDir" /discard
```