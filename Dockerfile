FROM ubuntu:rolling

RUN apt -y update \
    && apt -y upgrade \
    && apt -y install build-essential libtool git gcc g++ make cmake cmake-data openssl clang llvm llvm-dev lldb libssl-dev libmariadb-dev libmariadbclient-dev libreadline-dev zlib1g-dev libbz2-dev libzmq3-dev libace-dev libncurses5-dev libboost-all-dev libace-dev libtbb-dev

ENV SW_CMAKE_OPTIONS

VOLUME [ "/build-src" ]
WORKDIR /build-src

ENTRYPOINT docker/build.sh
