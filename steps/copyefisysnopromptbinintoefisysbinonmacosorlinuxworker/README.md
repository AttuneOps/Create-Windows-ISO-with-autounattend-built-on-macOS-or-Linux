Disables "Press any key to boot from CD or DVD" by copying `efisys_noprompt.bin` over `efisys.bin`.

Windows Server 2022 UDF ISOs extract as `EFI/Microsoft/Boot` on Linux. This step finds that folder case-insensitively and normalizes it to `efi/microsoft/boot` so later mkisofs/xorriso paths still work.
