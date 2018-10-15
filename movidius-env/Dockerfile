FROM yungshenglu/ubuntu-env:16.04

# Update packages
RUN apt-get update

# Proxy
ARG http_proxy
ENV http_proxy ${http_proxy}

ARG https_proxy
ENV https_proxy ${https_proxy}

RUN echo ${http_proxy}
RUN echo ${https_proxy}

# Update and upgrade packages
RUN apt-get update
RUN apt-get -y upgrade

# Install packages
RUN apt-get -y install build-essential udev sudo lsb-release usbutils
RUN apt-get clean all

# Add Movidius user
RUN useradd -c "Movidius User" -m movidius
COPY 10-installer /etc/sudoers.d
RUN mkdir -p /etc/udev/rules.d
USER movidius

# Clone the repository of NCSDK from GitHub
WORKDIR /home/movidius
RUN git clone https://github.com/movidius/ncsdk.git

# Install NCSDK
WORKDIR /home/movidius/ncsdk
RUN make install
RUN make examples

# Assign password to create image
RUN echo 'root:1111' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
