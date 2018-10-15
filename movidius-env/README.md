## movidius-env

This repository is using for building Movidius environment on Ubuntu Linux 16.04 (only supported).

---
### Usage

* Before using this Docker image, make sure you have already installed Docker on your machine.
    * [Docker CE Installation](https://docs.docker.com/install)
* Pull Docker image
    ```bash
    $ docker pull yungshenglu/movidius-env
    ```

---
### Content

* Currently support:
    * **Ubuntu Linux 16.04** (`movidius-env:16.04`)
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
    * 

---
### Contributor

* [David Lu](https://github.com/yungshenglu)