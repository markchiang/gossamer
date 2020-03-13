FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y \
        g++ cmake libboost-all-dev pandoc \
        zlib1g-dev libbz2-dev libsqlite3-dev
RUN apt-get install -y git
RUN git clone https://github.com/data61/gossamer.git
RUN cd gossamer && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make && \
    make install
