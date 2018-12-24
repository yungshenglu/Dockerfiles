# mininet-env

This Dockerfile is used to build Ubuntu Linux environment with **Mininet** on Docker container.

---
## Usage

> **NOTICE:** We provided a script file `main.sh` for you to help you to build the Docker container easily. The script file `main.sh` can be downloaded from [here](https://github.com/yungshenglu/Dockerfiles)!

1. Before using this Dockerfile, make sure you have already installed Docker on your machine.
    * [Docker CE Installation](https://docs.docker.com/install)
2. Use `main.sh` to build a Docker container
    ```bash
    # Make sure your current directory is in "./"
    # Command format:
    $ ./main.sh build <DOCKERFILE_PATH> <IMAGE_NAME> <EXTERNAL_PORT>
    # Example: Use the Dockerfile in "./mininet-env/" and build a Docker image named "mininet-env" which externel port is 9487
    $ ./main.sh build ./mininet-env/Dockerfile mininet-env 9487
    ```
3. How to remove the container? (optional)
    ```bash
    # Make sure your current directory is in "./"
    # Command format:
    $ ./main.sh clean <CONTAINER_NAME>
    # Example: Remove the container named "mininet-env_c"
    $ ./main.sh clean mininet-env_c
    ```

---
## Contents

> **NOTICE:** We only support the environment on **Ubuntu Linux 16.04 LTS (64-bit)** currently! Besides, the environment of Ubuntu Linux 16.04 LTS (64-bit) is built from my own Docker image. You can refer to the Dockerfile [here](../ubuntu-env/).

* **Mininet 2.3.0d4** - `mininet-env:2.3.0d4`
    * openssh-server
    * net-tools
    * iputils-ping
    * tcpdump
    * iperf3
    * sudo
    * git
    * vim
    * curl
    * wget
    * python-pip
    * powerline
    * tmux
    * mininet

---
## Contributor

* [David Lu](https://github.com/yungshenglu)