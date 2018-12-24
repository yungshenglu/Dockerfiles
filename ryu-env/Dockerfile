# Download base image from yungshenglu/ubuntu-env:16.04
FROM yungshenglu/ubuntu-env:16.04

# Update software repository
RUN apt-get update

# Install dependent packages
RUN apt-get install -y python-greenlet
RUN pip install oslo.config msgpack eventlet==0.18.2 routes webob paramiko tinyrpc ovs networkx

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