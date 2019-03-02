FROM ubuntu:rolling

RUN apt -y update \
    && apt -y upgrade \
    && apt -y install gdb openssl lldb libssl1.1 libmariadb3 libmariadbclient18 libreadline7 zlib1g libbz2-1.0 libace-6.4.5 libncurses5 libtbb2 libtbb2-dbg libboost-system1.67.0 libboost-filesystem1.67.0

RUN useradd -mUs /bin/bash core

RUN mkdir -p /server && chown -R core:core /server

USER core:core

RUN mkdir -p /server/etc \
    && mkdir -p /server/bin \
    && mkdir -p /server/data \
    && mkdir -p /server/crashlogs \
    && mkdir -p /server/logs \
    && mkdir -p /server/conf

VOLUME ["/server/etc", "/server/data", "/server/crashlogs", "/server/logs"]

EXPOSE 8085

WORKDIR /server/bin

ENTRYPOINT ["/server/bin/run_core.sh"]
