# escape=`

# go requires netapi32.dll; copy from servercore
# https://key4coding.com/2020/04/windows-nanoserver-issues-quick-fix/
FROM mcr.microsoft.com/windows/servercore:ltsc2019 as Servercore
FROM mcr.microsoft.com/windows/nanoserver:1809
COPY --from=Servercore /windows/system32/netapi32.dll /windows/system32/

# default ContainerUser can't access C:\ProgramData\Docker\containers on host
USER ContainerAdministrator

# download and unzip before building
# https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.9.2-windows-x86_64.zip

COPY filebeat-7.9.2-windows-x86_64/ /filebeat/

WORKDIR /filebeat

ENTRYPOINT ["filebeat.exe"]