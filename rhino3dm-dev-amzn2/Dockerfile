FROM amazonlinux:2
MAINTAINER Will Pearson <will@mcneel.com>

RUN yum update -y

# https://docs.microsoft.com/en-gb/dotnet/core/install/linux-package-manager-centos7
RUN rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm

RUN yum install -y dotnet-sdk-2.2 dotnet-sdk-3.1 cmake3 gcc-c++ git make tar

# https://www.matbra.com/2017/12/07/install-cmake-on-aws-linux.html
RUN yum remove -y cmake
RUN curl -O https://cmake.org/files/v3.14/cmake-3.14.5.tar.gz
RUN tar -xzf cmake-*.tar.gz
RUN cd cmake-* && ./bootstrap && make && make install
# RUN cmake --version
RUN rm -rf cmake*

RUN yum install -y which