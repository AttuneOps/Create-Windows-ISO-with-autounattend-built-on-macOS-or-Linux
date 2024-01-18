In the `C:\attuneautomationworker\build-{newOsNode.fqn}` folder, mounts `".\WinPE_amd64\media\sources\boot.wim` to `WinPE_BootImageDir` using `Dism` on Windows Worker.

All files in `WinPE_BootImageDir` will be seen at `X:\` drive when WinPE runs.