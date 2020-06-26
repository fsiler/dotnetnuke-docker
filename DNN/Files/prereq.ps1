iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n=allowGlobalConfirmation

choco install dotnet4.7.1
Add-WindowsFeature Web-Asp-Net45 

Install-PackageProvider -Name NuGet -force
$ErrorActionPreference = 'Stop'

Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
Install-Module xWebAdministration -Force
Install-Module cNtfsAccessControl -Force
find-dscresource -modulename "xwebadministration"
#choco install mssqlserver2014express -y
