Relative to the `C:\attuneautomationworker\build-winpe-iso\winpe` directory, copies the EFI files in `winimg\efi`to `winpe_staging`.

The `efi` folder is also copied.

Only applies to UEFI kickstarts so only if `kickstartedBootLoaderIsUefi` is set to the string `true`.