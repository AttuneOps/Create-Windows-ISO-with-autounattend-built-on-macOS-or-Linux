Starts the `Deployment and Imaging Tools Environment`.
Creates the skeleton WinPE files at `C:\WinPE_amd64`.

The path to `DandISetEnv.bat` was found by:
1. Typing in "Deployment and Imaging Tools Environment" in the Windows search box.
2. Right click on **Deployment and Imaging Tools Environment**.
3. Click on **Open file location**.
4. Right click on the file **Deployment and Imaging Tools Environment**.
5. Click **Properties**.
6. Look at the path in the **Target** field.

Use `call` to run multiple commands after running the batch file `DandISetEnv.bat`. Referenced from https://superuser.com/questions/1079403/how-to-run-multiple-commands-one-after-another-in-cmd.