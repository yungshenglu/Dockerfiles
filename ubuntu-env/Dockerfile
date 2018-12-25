# Download base image
FROM ubuntu:16.04

# Update software repository
RUN apt-get update

# Install software repository
RUN apt-get install -y net-tools iputils-ping git vim curl wget tmux sudo tcpdump iperf3

# Install Python
RUN apt-get -qqy install python-pip python-dev openssh-server

# Install Powerline
RUN pip install --user git+git://github.com/Lokaltog/powerline
RUN echo "" >> $HOME/.bashrc
RUN echo 'if [ -d "$HOME/.local/bin" ]; then' >> $HOME/.bashrc
RUN echo '    PATH="$HOME/.local/bin:$PATH"' >> $HOME/.bashrc
RUN echo 'fi' >> $HOME/.bashrc

RUN echo "" >> $HOME/.bashrc
RUN echo 'if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then' >> $HOME/.bashrc
RUN echo '    source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh' >> $HOME/.bashrc
RUN echo 'fi' >> $HOME/.bashrc

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