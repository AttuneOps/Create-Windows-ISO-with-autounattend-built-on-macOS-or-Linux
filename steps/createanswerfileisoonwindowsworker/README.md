
Creates an ISO at `{automationWorkerLinuxBaseDirectory}/drivers_{newVmNode.fqn}.iso` containing:

1. `drivers` folder
2. `autounattend.xml`
2. `post_install_setup.ps1`

This works for kickstarts on Windows Worker with:
1. Windows Desktop 10
2. Windows Server 2016
2. Windows Server 2019
3. Windows Server 2022