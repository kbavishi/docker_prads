FROM ubuntu:16.04
MAINTAINER Karan Bavishi <kbavishi@cs.wisc.edu>

RUN apt-get update && apt-get install -y \
	software-properties-common \
	build-essential \
	curl \
	docutils-common \
	git \
	iptables \
	libpcap-dev \
	libpcre3-dev \
	libnl-genl-3-200 \
	libnl-genl-3-dev \
	libnl-idiag-3-dev \
	libnl-route-3-dev \
	net-tools \
	python-dev \
	python-mock \
	python-pip \
	tar \
	tcpdump \
	tcpreplay \
	vim \
	wget

RUN git clone https://github.com/kbavishi/prads-1.git && \
 cd prads && \
 make && \
 make install

CMD ["/bin/bash"]
