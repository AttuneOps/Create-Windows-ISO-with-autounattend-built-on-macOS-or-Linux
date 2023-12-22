1. Checks if `isWinPEKickstart` is set `true`.
1. If `windowsFolderOnSamba` is set to `windows10`, checks if one of these are set `true`
   * `isWin10Bios`
   * `isWin10Uefi`
1. If `windowsFolderOnSamba` is set to one of `windows2016`, `windows2019` or `windows2022` checks if one of these are set `true`:
   * `isWinServerBios`
   * `isWinServerUefi`