FROM mcr.microsoft.com/windows/servercore:1903-KB4517389
#had to add DNS entry because of stupid opendns
RUN powershell.exe -Command \
    Set-ExecutionPolicy Bypass -Scope Process -Force \
    ; Set-DnsClientServerAddress -ServerAddresses 8.8.8.8 -InterfaceAlias Ethernet \
    ; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) \
    ; choco install git -y \
    ; choco install jdk8 -y \
    ; choco install jenkins -y

CMD [ "powershell" ]