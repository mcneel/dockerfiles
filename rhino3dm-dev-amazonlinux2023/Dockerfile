FROM amazonlinux:2023.5.20240903.0
LABEL author="Luis E. Fraguada <luis@mcneel.com>"

#install
RUN yum update -y
RUN yum install gcc-c++ tar gzip openssl openssl-devel python3 -y

#cmake - compile and install this way since we don't know the system architecture
RUN mkdir cmake
ADD https://github.com/Kitware/CMake/releases/download/v3.30.3/cmake-3.30.3.tar.gz ./cmake
RUN cd cmake && tar -xvzf cmake-3.30.3.tar.gz && cd cmake-3.30.3 && ./bootstrap && make && make install && cmake --version

#dotnet - compile and install this way since we don't know the system architecture
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
RUN mkdir dotnet
ADD https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.sh ./dotnet
RUN cd dotnet && chmod +x ./dotnet-install.sh && ./dotnet-install.sh --channel 7.0 --version 7.0.100
ENV PATH=$PATH:/root/.dotnet:/root/.dotnet/tools
RUN dotnet --version

RUN python3 --version