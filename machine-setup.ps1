set-executionpolicy remotesigned
iex ((New-Object system.net.webclient).downloadstring('https://chocolatey.org/install.ps1'))
choco feature enable -n=allowGlobalConfirmation
Enable-WindowsOptionalFeature -Online -FeatureName containers -all
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -all
choco install vim git firefox docker-desktop
