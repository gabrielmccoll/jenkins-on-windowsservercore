FROM mcr.microsoft.com/windows/servercore:1903-KB4517389

RUN powershell.exe -Command \
    Set-ExecutionPolicy Bypass -Scope Process -Force \
    ; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) \
    ; choco install git -y \
    ; choco install jdk8 -y \
    ; choco install jenkins -y

CMD [ "powershell" ]