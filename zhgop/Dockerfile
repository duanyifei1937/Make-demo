FROM devops/centos:7.5


RUN set -ex && \
    yum install bzip2 \
		gcc \
		file \
		gcc-c++ \
                wget -y && \
    cd /tmp && \
    curl -L -O http://mirrors.ustc.edu.cn/gnu/gcc/gcc-6.2.0/gcc-6.2.0.tar.bz2 && \
    tar -xjvf gcc-6.2.0.tar.bz2 && \
    cd gcc-6.2.0 && \
     ./contrib/download_prerequisites && \
    ./configure -enable-checking=release -enable-languages=c,c++ -disable-multilib && \
    make -j$(nproc) && \
    make install && \
    rm -rf /tmp/*

COPY lib/* /lib64/