Extracts the `boot.img` from the ISO. This is required for passing to `mkisofs` to regenerate a bootable BIOS ISO.

Only applies to BIOS kickstarts so if any of these parameters are set the string `true`:

1. isWin10Bios
2. isWinServerBios

The bash script file needs to have the Windows default carriage return line feed CRLF replaced with Linux default line feeds LF https://stackoverflow.com/questions/19127741/replace-crlf-using-powershell.