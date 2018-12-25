# Download base image
FROM yungshenglu/p4-env:2.0

# Update software repository
RUN apt-get update

# Install dependent packages
RUN apt-get install -y openssh-server net-tools iputils-ping git vim curl wget sudo tcpdump iperf3 tmux

# Create a directory for SSH daemon
RUN mkdir /var/run/sshd

# Assign password to create image
RUN echo 'root:1111' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# Set the envionment variables
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# Set the container listens on the specified ports at runtime 
EXPOSE 22

# Set the entrypoint
CMD ["/usr/sbin/sshd", "-D"]

# Clone the P4 repository from GitHub
RUN git clone https://github.com/p4lang/tutorials /root/p4-tutorials
RUN git clone https://github.com/kevinbird61/p4-researching.git /root/p4-researching