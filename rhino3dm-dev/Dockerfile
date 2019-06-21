FROM ubuntu:18.04
MAINTAINER Will Pearson <will@mcneel.com>

RUN apt update
RUN apt install -y git python3 python3-dev python3-pip python python-dev python-pip uuid-dev cmake clang wget

# https://dotnet.microsoft.com/download/linux-package-manager/ubuntu18-04/sdk-current
RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN rm -rf packages-microsoft-prod.deb
RUN apt update
RUN apt install -y dotnet-sdk-2.2
