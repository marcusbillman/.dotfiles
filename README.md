# .dotfiles

A central place for my dotfiles and other configuration files. This repository can act as a reference for sharing my settings, and it includes scripts for replicating my development setup on a new computer. My setup consists of a MacBook as well as a Windows machine with Ubuntu running inside WSL 2.

After following the installation steps below, all dotfiles will be symlinked to this repository. This way, changes can be made to the dotfiles in the repo and then be pushed/pulled between computers to make syncing simple.

## Installation

### Windows

Take care of the prerequisites:

- Install the latest updates from Windows Update.
- Install [Visual Studio Code](https://code.visualstudio.com/).
- Install [Git](https://git-scm.com/). Most settings don't matter because the `.gitconfig` file from the repository will be used later.
- Install [Windows Terminal](https://aka.ms/terminal).

Open PowerShell as an administrator.

Clone the repository _(the user directory is recommended for consistency with Ubuntu)_.

```powershell
Set-Location ~
git clone https://github.com/marcusbillman/.dotfiles.git
```

Allow script execution and run the symlink script.

```powershell
Set-ExecutionPolicy Unrestricted
.\.dotfiles\windows\_symlink.ps1
```

### WSL installation

Install WSL 2 and Ubuntu using PowerShell or Command Prompt:

```powershell
wsl --install
```

Or, if WSL is already installed but Ubuntu isn't, simply install Ubuntu using PowerShell or Command Prompt:

```powershell
wsl --set-default-version 2
wsl --install -d Ubuntu
```

Wait for installation and restart the computer if you're asked to. A terminal window will open, where you choose your UNIX username and password.

### Ubuntu

Clone the repository _(it must be cloned to `~`)_.

```bash
cd ~
git clone https://github.com/marcusbillman/.dotfiles.git
```

Run the install script.

```bash
.dotfiles/ubuntu/_install.sh
```

When asked to set `zsh` as the default shell, press Enter to confirm. Then type `exit`.

After the script has finished, close the terminal window and launch Windows Terminal. Done!

## Notes

### Windows

The dotfiles inside the repo's `windows` directory are categorised by app/tool and do not reflect where the symlinks will be placed. The symlink script (`_symlink.ps1`) includes a hashtable that defines the destination pat for each dotfile. **When adding or removing files in the `windows` part of the repository, the hashtable needs to be updated.**

For safety, the symlink script will prompt the user before creating each symlink. **Accepting the prompt will overwrite any existing file at the symlink path. Simply pressing Enter will act as a "yes".**

### Ubuntu

The files in the repo's `ubuntu` directory exactly reflects the file system structure beginning from the home directory (`~`). The symlink script (`_symlink.sh`) automatically detects the dotfiles in the repo and creates symlinks at the corresponding location in the file system. **Files can be added or removed in the `ubuntu` part of the repository without modifying the symlink script.**

The symlink script only prompts the user if there is already a file where the symlink is being created. **Accepting the prompt will overwrite the existing file at the symlink path. Simply pressing Enter will act as a "no".** To force overwriting without prompting, run the symlink script with the `-f` option.

### macOS

As the MacBook is a fairly new addition to my setup, I haven't created install and symlink scripts for macOS. There are also dotfiles missing from the repo.
