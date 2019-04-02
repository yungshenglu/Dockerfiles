# Download base image
FROM ubuntu:16.04

# Update software repository
RUN apt-get update

# Install software repository
RUN apt-get install -y  \
    net-tools \
    iputils-ping \
    git \
    vim \
    curl \
    wget \
    tmux \
    sudo \
    tcpdump \
    iperf3 \
    swig cmake doxygen build-essential libboost-all-dev libtool libusb-1.0-0 libusb-1.0-0-dev libudev-dev libncurses5-dev libfftw3-bin libfftw3-dev libfftw3-doc libcppunit-1.13-0v5 libcppunit-dev libcppunit-doc ncurses-bin cpufrequtils python-numpy python-numpy-doc python-numpy-dbg python-scipy python-docutils qt4-bin-dbg qt4-default qt4-doc libqt4-dev libqt4-dev-bin python-qt4 python-qt4-dbg python-qt4-dev python-qt4-doc python-qt4-doc libqwt6abi1 libfftw3-bin libfftw3-dev libfftw3-doc ncurses-bin libncurses5 libncurses5-dev libncurses5-dbg libfontconfig1-dev libxrender-dev libpulse-dev swig g++ automake autoconf libtool python-dev libfftw3-dev libcppunit-dev libboost-all-dev libusb-dev libusb-1.0-0-dev fort77 libsdl1.2-dev python-wxgtk3.0 git-core libqt4-dev python-numpy ccache python-opengl libgsl-dev python-cheetah python-mako python-lxml doxygen qt4-default qt4-dev-tools libusb-1.0-0-dev libqwt5-qt4-dev libqwtplot3d-qt4-dev pyqt4-dev-tools python-qwt5-qt4 cmake git-core wget libxi-dev gtk2-engines-pixbuf r-base-dev python-tk liborc-0.4-0 liborc-0.4-dev libasound2-dev python-gtk2 libzmq-dev libzmq1 python-requests python-sphinx libcomedi-dev python-zmq

# Install Python
RUN apt-get -qqy install python-pip python-dev openssh-server

### Install USRP Hardware Driver (UHD™) Software ###
# Reconfigure Default Shell
RUN dpkg-reconfigure dash

# Update software repository
RUN apt-get update

# Upgrade software repository
RUN apt-get upgrade -y

# Create workarea directory and installation directory
RUN mkdir -p /root/workarea/src
RUN mkdir -p /root/workarea/installs

# Build and install UHD
WORKDIR /root/workarea/src
RUN git clone --branch UHD-3.9.LTS https://github.com/EttusResearch/uhd

WORKDIR /root/workarea/src/uhd
RUN git submodule update

WORKDIR /root/workarea/src/uhd/host
RUN mkdir build

WORKDIR /root/workarea/src/uhd/host/build
RUN cmake ../

RUN make -j4
RUN make test
RUN make install
RUN ldconfig

# Building GNU Radio
WORKDIR /root/workarea/src
RUN git clone --branch v3.7.13.4 --recursive https://github.com/gnuradio/gnuradio

WORKDIR /root/workarea/src/gnuradio
RUN git submodule update --init --recursive
RUN mkdir /root/workarea/src/gnuradio/build

WORKDIR /root/workarea/src/gnuradio/build
RUN cmake ../
RUN make -j4
#RUN make test
RUN make install
RUN ldconfig

# Change the current directory to root directory
WORKDIR /

# Create a directory for SSH daemon
RUN mkdir /var/run/sshd

# Assign password to create image
RUN echo 'root:1111' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# Set the envionment variables
ENV NOTVISIBLE "in users profile"
ENV export LC_ALL=C
RUN echo "export VISIBLE=now" >> /etc/profile

# Set the container listens on the specified ports at runtime 
EXPOSE 22

# Set the entrypoint
CMD ["/usr/sbin/sshd", "-D"]