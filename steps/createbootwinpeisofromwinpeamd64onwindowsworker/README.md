1. Starts the `Deployment and Imaging Tools Environment` by executing `DandISetEnv.bat`. The `  call` is needed so more batch commands can be run afterwards.
    ```
    call "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\DandISetEnv.bat"
    ```
2. After running `DandISetEnv.bat` by default the directory will change to:
   ```
   C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools>
   ```
The directory path is changed to `{windowsWorkerDirectory}\build-{newMachine.fqn}`.
   ```
   cd {windowsWorkerDirectory}\build-{newMachine.fqn}
   ```
3. Run `MakeWinPEMedia` to take the modified copy of the skeleton WinPE files at `{windowsWorkerDirectory}\build-{newMachine.fqn}\WinPE_amd64` and generate the ISO at `{windowsWorkerDirectory}\unattended_{newMachine.fqn}.iso`.