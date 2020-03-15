# wsl basic user guide
## create wsl image snapshot 
- open powershell in windows
- list wsl to find out which image to take snapshot
   - wsl --list
- start snapshot
   - wsl --export WSL_IMAGE SNAP_DIR/SNAP_NAME.tar
## restore wsl image snapshot
- open powershell in windows
- list wsl to find out which image to restore
   - wsl --list
- delete old wsl
   - wsl --unregister WSL_IMAGE
- start restore
   - wsl --import WSL_IMAGE WSL_DIR SNAP_DIR/SNAP_NAME.tar
- set new wsl as default(optional)
   - wsl --setdefault WSL_IMAGE
