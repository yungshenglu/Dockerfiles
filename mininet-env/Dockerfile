#LABEL maintainer "David Lu <yungshenglu1994@gmail.com>"

# Download base image
FROM yungshenglu/ubuntu-env:16.04

# Update software repository
RUN apt-get update

# Install Mininet 2.3.0d4
RUN git clone git://github.com/mininet/mininet
WORKDIR /mininet/
RUN ./util/install.sh -a
