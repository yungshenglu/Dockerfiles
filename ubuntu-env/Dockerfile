FROM ubuntu:16.04

# Update packages
RUN apt-get update

# Install main packages
RUN apt-get install -y net-tools iputils-ping git vim curl wget tmux

# Install Python
RUN apt-get -qqy install python-pip python-dev
RUN export LC_ALL=C

# Install powerline
RUN pip install --user git+git://github.com/Lokaltog/powerline
RUN echo "" >> $HOME/.bashrc
RUN echo 'if [ -d "$HOME/.local/bin" ]; then' >> $HOME/.bashrc
RUN echo '    PATH="$HOME/.local/bin:$PATH"' >> $HOME/.bashrc
RUN echo 'fi' >> $HOME/.bashrc

RUN echo "" >> $HOME/.bashrc
RUN echo 'if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then' >> $HOME/.bashrc
RUN echo '    source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh' >> $HOME/.bashrc
RUN echo 'fi' >> $HOME/.bashrc

# Install openssh-server
RUN apt-get install -y openssh-server && \
    mkdir /var/run/sshd

# Assign password to create image
RUN echo 'root:1111' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]