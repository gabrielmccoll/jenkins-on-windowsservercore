FROM mcr.microsoft.com/windows/servercore:1903-KB4517389

RUN powershell.exe -Command \
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

CMD [ "powershell" ]