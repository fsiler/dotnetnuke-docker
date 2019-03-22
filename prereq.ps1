iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install dotnet4.5.2 -y
Add-WindowsFeature Web-Asp-Net45 
#==================
# Global Flags ====
Install-PackageProvider -Name NuGet -force
#Set-PSDebug -Trace 2
$ErrorActionPreference = 'Stop'
# Main ============
#Install-PackageProvider -Name NuGet -Force
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
Install-Module xWebAdministration -Force
Install-Module cNtfsAccessControl -Force
find-dscresource -modulename "xwebadministration"
#choco install mssqlserver2014express -y
