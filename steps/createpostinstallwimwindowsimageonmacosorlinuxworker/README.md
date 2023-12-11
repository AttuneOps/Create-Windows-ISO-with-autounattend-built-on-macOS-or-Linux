Creates a `post_install.wim` file from the contents of `post_install_wim` on Creates a `post_install.wim` file from the contents of `post_install_wim` on macOS or Linux Worker.

The purpose of this file is to overlay onto the `C` drive any files we want for the Windows Installer to use.

In this case we want to deploy a post install setup PowerShell script at `C:\post_install_setup.ps1` that is called by `autounattend.xml` `<FirstLogonCommands>`'s section.