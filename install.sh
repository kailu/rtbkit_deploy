sudo apt-get install -y linux-tools-generic libbz2-dev python-dev scons\
                       libtool liblzma-dev libblas-dev make automake \
                       ccache ant openjdk-7-jdk libcppunit-dev doxygen \
                       libcrypto++-dev libACE-dev gfortran liblapack-dev \
                       libevent-dev libssh2-1-dev libicu-dev libv8-dev \
                       g++ google-perftools libgoogle-perftools-dev \
                       zlib1g-dev git pkg-config valgrind autoconf \
                       libcurl4-openssl-dev cmake libsigc++-2.0-dev

git clone https://github.com/rtbkit/rtbkit-deps.git && cd rtbkit-deps && git submodule update --init && make all NODEJS_ENABLED=0

cd ~/rtbkit && git clone https://github.com/rtbkit/rtbkit.git && cd rtbkit && cp jml-build/sample.local.mk local.mk

make compile NODEJS_ENABLED=0



