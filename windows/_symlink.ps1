# Self-elevate the script if it's not already running as admin
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
  if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
    $CommandLine = "-File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
    Start-Process -FilePath PowerShell.exe -Verb Runas -ArgumentList $CommandLine
    Exit
  }
}

# Hashtable with all dotfiles in the repo and the corresponding symlink paths
$dotfiles = @{
  ".gitconfig"    = "~\.gitconfig"
  "settings.json" = "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
  "WSL2Proxy.ps1" = "~\WSL2Proxy.ps1"
}

# Loop through all dotfiles in the hashtable
foreach ($repo_file_name in $dotfiles.keys) {
  # Get the absolute path to the repo dotfile by prefixing the script's parent path
  $repo_file_path = "$PSScriptRoot\$repo_file_name"
  # -Force: Overwrite existing files with new symlinks
  # -Confirm: Prompt the user before each symlink is created
  New-Item -ItemType SymbolicLink -Path $dotfiles[$repo_file_name] -Target $repo_file_path -Force -Confirm
}

Read-Host "`nFinished creating symlinks. Press Enter to close"
