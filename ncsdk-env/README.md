# ncsdk-env

This repository is using for building Movidius environment on Ubuntu Linux 16.04 (only supported).

---
## Usage

* Before using this Docker image, make sure you have already installed Docker on your machine.
    * [Docker CE Installation](https://docs.docker.com/install)
* Pull Docker image
    ```bash
    $ docker pull yungshenglu/movidius-env
    ```
* Build Docker image with Dockerfile
    ```bash
    $ docker build -f Dockerfile -t <IMAGE_NAME> .
    ```
* Run Docker container in privileged mode
    ```bash
    $ docker run -d -p <PORT>:22 -v /etc/apt/apt.conf:/etc/apt/apt.conf:ro -v /dev:/dev:shared -v /media/data2/NCS/:/media/data2/NCS/ --privileged --name <CONTAINER_NAME> <IMAGE_NAME> > /dev/null
    ```
* List port 22 mapping on Docker container
    ```bash
    $ docker port <CONTAINER_NAME> 22

---
## Content

* Currently support:
    * **Neural Compute SDK v2** (`ncsdk-env:v2`)
    * **Ubuntu Linux 16.04** (`ubuntu-env:16.04`)
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
## Contributor

* [David Lu](https://github.com/yungshenglu)

---
## License

[GNU General Public License v3.0](../LICENSE)