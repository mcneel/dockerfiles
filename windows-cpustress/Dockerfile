FROM mcr.microsoft.com/windows:1809

ADD cpu.ps1 .

ENTRYPOINT ["powershell.exe", "-NoLogo", "-ExecutionPolicy", "Bypass"]

CMD [".\\cpu.ps1"]
