## ubuntu-env

This Dockerfile is using for building Ubuntu Linux environment.

---
### Usage

* Before using this Docker image, make sure you have already installed Docker on your machine.
    * [Docker CE Installation](https://docs.docker.com/install)
* Pull Docker image
    ```bash
    $ docker pull yungshenglu/ubuntu-env
    ```
* Build Docker image with Dockerfile
    ```bash
    $ docker build -f Dockerfile -t <IMAGE_NAME> .
    ```
* Run Docker container in privileged mode
    ```bash
    $ docker run -d -p <PORT>:22 --privileged --name <CONTAINER_NAME> <IMAGE_NAME> > /dev/null
    ```
* List port 22 mapping on Docker container
    ```bash
    $ docker port <CONTAINER_NAME> 22
    ```

---
### Content

* Currently support: **Ubuntu Linux 16.04** (`ubuntu-env:16.04`)
    * openssh-server
    * net-tools
    * iputils-ping
    * git
    * vim
    * curl
    * wget
    * python-pip
    * powerline
    * tmux

---
### Contributor

* [David Lu](https://github.com/yungshenglu)