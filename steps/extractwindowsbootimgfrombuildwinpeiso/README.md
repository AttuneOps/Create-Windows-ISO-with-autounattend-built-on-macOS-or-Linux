Extracts the `boot.img` from the ISO. This is required for passing to `mkisofs` to regenerate a bootable BIOS ISO.

Only applies BIOS kickstarts so if the parameter `kickstartedBootLoaderIsBios` is set `true`.