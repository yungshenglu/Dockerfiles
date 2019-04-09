LABEL maintainer "David Lu <yungshenglu1994@gmail.com>"

# Download base image
FROM yungshenglu/ubuntu-env:16.04

# Update software repository
RUN apt-get update

# Install software repository
RUN apt-get install -y \
    python-greenlet

# Install necessary Python packages
RUN pip install \
    oslo.config \
    msgpack \
    eventlet==0.18.2 \
    routes \
    webob \
    paramiko \
    tinyrpc \
    ovs \
    networkx

# Install Mininet 2.3.0d4
RUN git clone git://github.com/mininet/mininet
WORKDIR /mininet/
RUN ./util/install.sh -a

# Change the current directory to root directory
WORKDIR /

# Install Ryu 4.30
RUN git clone git://github.com/osrg/ryu
WORKDIR /ryu/
RUN python setup.py install
