LABEL maintainer "David Lu <yungshenglu1994@gmail.com>"

# Download base image
FROM ubuntu:16.04

# Update software repository
RUN apt-get update

# Install software repository
RUN apt-get install -y vim git sudo build-essential texlive-full texlive-fonts-extra fonts-arphic-ukai fonts-arphic-uming ttf-mscorefonts-installer

RUN fc-cache

# Clone the repository of NCTU thesis template
RUN cd ~/ && git clone https://gitlab.com/nsslab/thesis/nctu-thesis-template

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

# Change directory in to ~/
WORKDIR "~/"
