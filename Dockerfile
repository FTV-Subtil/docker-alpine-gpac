FROM alpine:3.6

WORKDIR /app

RUN apk add --no-cache wget g++ make && \
    wget --no-check-certificate https://codeload.github.com/gpac/gpac/zip/master -O gpac-master.zip && \
    unzip gpac-master.zip

WORKDIR gpac-master

RUN ./configure --use-zlib=no && \
    make
