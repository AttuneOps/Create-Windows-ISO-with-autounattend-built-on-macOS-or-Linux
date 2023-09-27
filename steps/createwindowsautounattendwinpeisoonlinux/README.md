# Purpose
Recreates a WinPE Bootable ISO. This blueprint can be configured for one of these Windows versions:

1. Windows Desktop 10
2. Windows Server 2016
3. Windows Server 2019
4. Windows Server 2022

in combination with one of these boot methods:

1. BIOS
2. UEFI

# Usage

## Set isWinPEKickstart 

To use please set `isWinPEKickstart` to the string `true`.

## Set Windows Boot Method and Version

Please set one of the following to the string 'true':

1. isWin10Bios
2. isWin10Uefi
3. isWinServerBios
4. isWinServerUefi

This is used in `autounattend.xml`.

## Set Windows Verstion using windowsFolderOnSamba

Please set the `windowsFolderOnSamba` to the correct Samba folder for the Windows operating system version. This is used by WinPE `startnet.cmd` in step `LIN Deploy startnet.cmd for WinPE`.

## Table of Values for Windows Versions 

Windows Version | Boot Method | Set 'true' | Set windowsFolderOnSamba
--- | --- | --- | ---
Win10 | BIOS |  isWin10Bios | windows10
Win10 | UEFI |  isWin10Uefi | windows10
Win2016 | BIOS |  isWinServerBios | windows2016
Win2016 | UEFI |  isWinServerUefi | windows2016
Win2019 | BIOS |  isWinServerBios | windows2019
Win2019 | UEFI |  isWinServerUefi | windows2019
Win2022 | BIOS |  isWinServerBios | windows2022
Win2022 | UEFI |  isWinServerUefi | windows2022