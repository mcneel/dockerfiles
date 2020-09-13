FROM ubuntu:18.04
MAINTAINER Will Pearson <will@mcneel.com>

RUN apt-get update && \
    apt-get install -y git python3 python3-dev python3-pip python python-dev python-pip uuid-dev clang wget

# https://docs.microsoft.com/en-us/dotnet/core/install/linux-ubuntu#1804-
RUN wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb; \
    dpkg -i packages-microsoft-prod.deb; \
    apt-get update; \
    apt-get install -y apt-transport-https && \
    apt-get update && \
    apt-get install -y dotnet-sdk-3.1

RUN wget https://github.com/Kitware/CMake/releases/download/v3.18.2/cmake-3.18.2-Linux-x86_64.sh -O cmake-linux.sh; \
    sh cmake-linux.sh -- --skip-license --prefix=/usr/local

RUN python2 -m pip install -U pip setuptools; \
    python3 -m pip install -U pip setuptools
