# .dotfiles

A central place for my dotfiles and other configuration files. This repository can act as a reference for sharing my settings, and it includes scripts for replicating my development setup on a new computer. My setup consists of a Windows machine with Ubuntu running inside WSL 2.

After following the installation steps below, all dotfiles will be symlinked to this repository. This way, changes can be made to the dotfiles in the repo and then be pushed/pulled between computers to make syncing simple.

## Installation

### Windows

**First, the prerequisites.**

1. Install the latest updates from Windows Update.
2. Install [Visual Studio Code](https://code.visualstudio.com/).
3. Install [Git](https://git-scm.com/). Most settings don't matter because the `.gitconfig` file from the repository will be used later.
4. Install [Windows Terminal](https://aka.ms/terminal).

**Now it's time for the dotfiles!**

5. Open PowerShell as an administrator.
6. Clone the repository. The user directory is recommended for consistency with Ubuntu, but the symlink script works from any location.
    ```powershell
    Set-Location ~
    git clone https://github.com/marcusbillman/.dotfiles.git
   ```
7. Allow script execution and run the symlink script.
    ```powershell
    Set-ExecutionPolicy Unrestricted
    .\.dotfiles\windows\_symlink.ps1
    ```

### Ubuntu (WSL)

1. Install WSL 2 and Ubuntu by running this command in PowerShell or Command Prompt:
    ```powershell
    wsl --install
    ```
2. Wait for installation and restart the computer. A terminal window will open, where you choose your UNIX username and password.
3. Clone the repository.
    ```bash
    cd
    git clone https://github.com/marcusbillman/.dotfiles.git
    ```
4. Run the install script.
    ```bash
    .dotfiles/ubuntu/_install.sh
    ```

## Notes regarding the scripts

### Windows

On Windows, configuration files are scattered across the file system, unlike on Linux, where dotfiles are kept in the user home directory. Because of this, the dotfiles inside the repo's `windows` directory do not reflect where the symlinks actually will be placed on the system. Instead, the symlink script (`_symlink.ps1`) includes a hashtable that tells it where all dotfiles should go. **When adding or removing files in the `windows` part of the repository, the hashtable needs to be updated.**

For safety, the symlink script will prompt the user before creating each symlink. **Accepting the prompt will overwrite any existing file at the symlink path. Simply pressing Enter will act as a "yes".**

### Ubuntu

The files in the repo's `ubuntu` directory exactly reflects the file system structure beginning from the home directory (`~`). The symlink script (`_symlink.sh`) automatically detects the dotfiles in the repo and creates symlinks at the corresponding location in the file system. **Files can be added or removed in the `ubuntu` part of the repository without modifying the symlink script.**

The symlink script only prompts the user if there is already a file where the symlink is being created. **Accepting the prompt will overwrite the existing file at the symlink path. Simply pressing Enter will act as a "no".** To force overwriting without prompting, run the symlink script with the `-f` option.
