Creates a `post_install.wim` Windows Imaging Format file on Windows Worker.

The purpose of this file is to overlay onto the `C` drive any files we want 
for the Windows Installer to use. In this case we want to deploy a post 
install setup PowerShell script at `C:\post_install_setup.ps1` that is 
called by `autounattend.xml` `<FirstLogonCommands>`'s section.