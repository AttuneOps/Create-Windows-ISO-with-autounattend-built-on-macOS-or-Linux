$securePassword = ConvertTo-SecureString `
    '${newWindowsAdministrator.password}' `
    -AsPlainText `
    -Force
Chk $?

Set-LocalUser `
    -Name "${newWindowsAdministrator.user}" `
    -Password $securePassword
Chk $?