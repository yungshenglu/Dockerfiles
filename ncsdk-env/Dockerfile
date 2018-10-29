FROM yungshenglu/ubuntu-env:16.04

# Update packages
RUN apt-get update

# Install software repository
RUN apt-get install -y \
    lsb-release \
    build-essential \
    sed \
    sudo \
    tar \
    udev \
    libusb-1.0-0-dev

# Clear out the local repository of retrieved packages
RUN apt-get clean

# Set the entrypoint
CMD ["/usr/sbin/sshd", "-D"]

# Copy over the NCSDK
COPY ./ncsdk ncsdk/

# Set the current working directory to the cloned ncsdk directory
WORKDIR "/ncsdk"

# Run the installer
RUN make install
WORKDIR "api/src"
RUN sudo make get_mvcmd && sudo make basicinstall NO_BOOT=yes NO_RESET=yes && sudo make pythoninstall
WORKDIR "../../"

# Use argument to assign passwd to create image
RUN echo 'root:movidius' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user will kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# Set the environment variables
ENV NOTVISIBLE "in user profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# Set the container listens on the specified ports at runtime
EXPOSE 22
