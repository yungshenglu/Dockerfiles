LABEL maintainer "David Lu <yungshenglu1994@gmail.com>"

# Download base image
FROM yungshenglu/ubuntu-env:16.04

# Update software repository
RUN apt-get update

# Install software repository
RUN apt-get install -y  \
    g++ \
    git-core \
    cmake automake autoconf ccache \
    swig \
    doxygen \
    cpufrequtils \
    build-essential \
    fort77 \
    gtk2-engines-pixbuf \
    ncurses-bin libncurses5 libncurses5-dev libncurses5-dbg \
    qt4-default qt4-dev-tools qt4-bin-dbg qt4-doc pyqt4-dev-tools libqt4-dev libqt4-dev-bin \
    r-base-dev \
    libasound2-dev \
    libboost-all-dev \
    libcomedi-dev \
    libcppunit-1.13-0v5 libcppunit-dev libcppunit-doc \
    libfftw3-bin libfftw3-dev libfftw3-doc \
    libfontconfig1-dev \
    libgsl-dev \
    liborc-0.4-0 liborc-0.4-dev \
    libpulse-dev \
    libqwt5-qt4-dev libqwt6abi1 libqwtplot3d-qt4-dev \
    libsdl1.2-dev \
    libtool \
    libudev-dev \
    libusb-dev libusb-1.0-0 libusb-1.0-0-dev \
    libxi-dev \
    libxrender-dev \
    libzmq-dev libzmq1

# Install Python and necessary packages
RUN apt-get -qqy install \
    python-numpy python-numpy-doc python-numpy-dbg \
    python-scipy \
    python-docutils \
    python-qt4 python-qt4-dev python-qt4-dbg python-qt4-doc \
    python-wxgtk3.0 \
    python-opengl \
    python-cheetah \
    python-mako \
    python-lxml \
    python-qwt5-qt4 \
    python-tk python-gtk2 \
    python-requests \
    python-sphinx \
    python-zmq

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
RUN make install
RUN ldconfig
