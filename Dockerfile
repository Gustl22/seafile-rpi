FROM dockcross/linux-arm64
ENV DEFAULT_DOCKCROSS_IMAGE img-linux-arm64
RUN apt-get update && apt-get install -y \
     build-essential \
     cmake \
     git \
     intltool \
     libarchive-dev \
     libcurl4-openssl-dev \
     libevent-dev \
     libfuse-dev \
     libglib2.0-dev \
     libjansson-dev \
     libldap2-dev \
     libmariadbclient-dev-compat \
     libonig-dev \
     libpq-dev \
     libsqlite3-dev \
     libssl-dev \
     libtool \
     libxml2-dev \
     libxslt-dev \
     python3-lxml \
     python3-pip \
     python3-setuptools \
     python3-wheel \
     uuid-dev \
     valac \
     wget \
     libjpeg-dev \
     zlib1g-dev \
     libtiff5-dev \
     libfreetype6-dev \
     libwebp-dev \
     python3-dev

# Attempts to install python3.6 on docker image

#FROM python:3.7-stretch
#ENV DEFAULT_DOCKCROSS_IMAGE img-linux-arm64
#RUN alias python='/usr/bin/python3.6'

#RUN wget https://www.python.org/ftp/python/3.6.12/Python-3.6.12.tgz \
#    && tar xvf Python-3.6.12.tgz \
#    && cd Python-3.6.12 \
#    && ./configure --enable-optimizations --enable-shared \
#    && make -j8 \
#    && make altinstall \
#    && python3.6

#RUN wget https://github.com/chriskuehl/python3.6-debian-stretch/releases/download/>#    && sudo dpkg -i *.deb \
#    && ls /usr/bin/python*