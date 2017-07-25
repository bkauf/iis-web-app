# escape=`

FROM microsoft/iis
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

# disable DNS cache so container addresses always fetched from Docker
RUN Set-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name ServerPriorityTimeLimit -Value 0 -Type DWord
RUN Install-WindowsFeature NET-Framework-45-ASPNET; `
    Install-WindowsFeature Web-Asp-Net45
RUN Remove-Website 'Default Web Site';


# Set up website: iis-web-app
RUN New-Item -Path 'C:\Apps\iis-web-app' -Type Directory -Force; 

RUN New-Website -Name 'iis-web-app' -PhysicalPath 'C:\Apps\iis-web-app' -Port 80 -Force; 

EXPOSE 80

COPY ["iis-web-app", "/Apps/iis-web-app"]

RUN $path='C:\Apps\iis-web-app'; `
    $acl = Get-Acl $path; `
    $newOwner = [System.Security.Principal.NTAccount]('BUILTIN\IIS_IUSRS'); `
    $acl.SetOwner($newOwner); `
    dir -r $path | Set-Acl -aclobject  $acl
	

