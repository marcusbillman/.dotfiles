# Self-elevate the script if it's not already running as admin
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
  if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
    $CommandLine = "-File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
    Start-Process -FilePath PowerShell.exe -Verb Runas -ArgumentList $CommandLine
    Exit
  }
}

$dotfiles = @{
# Target path                        Symlink path
  "git\.gitconfig"                 = "~\.gitconfig"
  "windows-terminal\settings.json" = "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
  "scripts\wsl2-proxy.ps1"         = "~\scripts\wsl2-proxy.ps1"
}

# Create a symlink for each dotfile in the hashtable above
foreach ($repo_file_name in $dotfiles.keys) {
  $repo_file_path = "$PSScriptRoot\$repo_file_name"
  New-Item -ItemType SymbolicLink -Path $dotfiles[$repo_file_name] -Target $repo_file_path -Force -Confirm
}

Read-Host "`nFinished creating symlinks. Press Enter to close"
