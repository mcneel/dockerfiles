FROM amazonlinux:2
MAINTAINER Will Pearson <will@mcneel.com>

RUN yum update -y
RUN yum install -y git clang libuuid libuuid-devel

# https://github.com/dotnet/core/blob/master/release-notes/download-archives/2.0.0-download.md#rhel-and-fedora-based-systems
RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc
RUN sh -c 'echo -e "[packages-microsoft-com-prod]\nname=packages-microsoft-com-prod \nbaseurl=https://packages.microsoft.com/yumrepos/microsoft-rhel7.3-prod\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/dotnetdev.repo'
RUN yum install -y libunwind libicu
RUN yum update -y
RUN yum install -y dotnet-sdk-2.2
# RUN dotnet --version

# https://www.matbra.com/2017/12/07/install-cmake-on-aws-linux.html
RUN yum remove -y cmake
RUN curl -O https://cmake.org/files/v3.14/cmake-3.14.5.tar.gz
RUN yum install -y gcc-c++ make tar
RUN tar -xzf cmake-3.14.5.tar.gz
RUN cd cmake-3.14.5 && ./bootstrap && make && make install
# RUN cmake --version
RUN rm -rf cmake*