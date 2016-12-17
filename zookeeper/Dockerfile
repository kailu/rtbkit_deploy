# Build from Ubuntu base
FROM ubuntu:14.04.2

# This suppresses a bunch of annoying warnings from debconf
ENV DEBIAN_FRONTEND noninteractive

#uncomment this line if you are building the image from China...
COPY sources.list /etc/apt/sources.list
#for in China only
COPY hosts /etc/hosts

RUN apt-get update \
		       && apt-get install -y linux-tools-generic libbz2-dev python-dev scons\
                       libtool liblzma-dev libblas-dev make automake \
                       ccache ant openjdk-7-jdk libcppunit-dev doxygen \
                       libcrypto++-dev libACE-dev gfortran liblapack-dev \
                       libevent-dev libssh2-1-dev libicu-dev libv8-dev \
                       g++ google-perftools libgoogle-perftools-dev \
                       zlib1g-dev git pkg-config valgrind autoconf \
                       libcurl4-openssl-dev cmake libsigc++-2.0-dev

RUN git clone git://github.com/apache/zookeeper.git /zookeeper_src \
    && 	cd /zookeeper_src \
    &&	ulimit -v unlimited; JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/ ant compile \
    &&	cd src/c \
    &&	autoreconf -if \
    &&	CXX=$(CXX) CC=$(CC) ./configure --prefix /opt/local \
    &&	make -k install \
    &&	make doxygen-doc \
    &&	install -d /opt/local/bin/zookeeper \
    &&	rm -rf /opt/local/bin/zookeeper/* \
    &&	cp -a /zookeeper_src/bin /opt/local/bin/zookeeper/ \
    &&  cp -r /zookeeper_src/build /opt/local/bin/zookeeper/ \
    &&  cp -r /zookeeper_src/conf /opt/local/bin/zookeeper/ \
    &&  cp -r /zookeeper_src/docs /opt/local/bin/zookeeper/

#RUN find /opt/local/bin/zookeeper

ADD zookeeper /zookeeper
ADD zoo.cfg /opt/local/bin/zookeeper/conf/zoo.cfg

CMD ["/zookeeper"]
