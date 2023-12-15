Appends these files to WinPE's `SOURCES/BOOT.WIM` on macOS or Linux Worker.

This will be seen at `X` drive when WinPE runs.

1. `startnet.cmd`
2. `autounattend.xml`
3. `post_install.wim`
4. `drivers` folder

Notes: for (3) after the `post_install.wim` image file is overlayed onto `C` drive, the file at `C:\ post_install_setup.ps1` will be available to the Windows installer.
