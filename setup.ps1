$ErrorActionPreference = "Stop"

# Windows features
Enable-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux -Online -NoRestart

# Allow unsigned PowerShell scripts
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

# Install scoop
Invoke-Expression (new-object net.webclient).downloadstring('https://get.scoop.sh')

# Install software via scoop
scoop install `
  curl `
  vim `
  colortool `
  sudo `
  7zip `
  ruby `
  python `
  nodejs

# Set console color
colortool -b OneHalfDark
