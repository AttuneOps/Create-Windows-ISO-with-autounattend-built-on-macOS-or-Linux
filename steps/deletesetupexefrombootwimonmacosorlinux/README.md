The `winpe_staging` directory will be used to recreate a WinPE BIOS ISO 
designed to work with a Samba drive which contains the required `setup.exe`.

The `wimupdate` command modifies the specified image.
`--command="delete /setup.exe"` deletes `setup.exe` from the extracted 
WinPE's `boot.img`.
