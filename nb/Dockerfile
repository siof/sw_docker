FROM ubuntu:rolling

RUN apt -y update \
    && apt -y upgrade \
    && apt -y install gdb openssl lldb libssl1.1 libmariadb3 libmariadbclient18 libreadline7 zlib1g libbz2-1.0 libace-6.4.5 libncurses5 libtbb2 libtbb2-dbg libboost-system1.67.0 libboost-filesystem1.67.0

ENV REALM_NAME=test

VOLUME ["/server/etc", "/server/data", "/server/crashlogs", "/server/logs"]

EXPOSE 8085

WORKDIR /server/bin

ENTRYPOINT /server/bin/run_core.sh
