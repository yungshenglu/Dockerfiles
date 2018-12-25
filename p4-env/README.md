# p4-env

This Dockerfile is used to build Ubuntu Linux environment with **P4** on Docker container.

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
    # Example: Use the Dockerfile in "./p4-env/" and build a Docker image named "p4-env1" which externel port is 9487
    $ ./main.sh build ./p4-env/p4-env1.dockerfile p4-env1 9487
    # Example: Use the Dockerfile in "./p4-env/" and build a Docker image named "p4-env2" which externel port is 9487
    $ ./main.sh build ./p4-env/p4-env2.dockerfile p4-env2 9487
    ```
3. How to remove the container? (optional)
    ```bash
    # Make sure your current directory is in "./"
    # Command format:
    $ ./main.sh clean <CONTAINER_NAME>
    # Example: Remove the container named "p4-env1_c"
    $ ./main.sh clean p4-env1_c
    # Example: Remove the container named "p4-env2_c"
    $ ./main.sh clean p4-env2_c
    ```

---
## Contents

> **NOTICE:** We only support the environment on **Ubuntu Linux 16.04 LTS (64-bit)** currently! Besides, the environment of Ubuntu Linux 16.04 LTS (64-bit) is built from my own Docker image. You can refer to the Dockerfile [here](../ubuntu-env/).

* **P4 2.0** - `p4-env:2.0`
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
    * powerline
    * tmux
* **P4 1.0** - `p4-env:1.0`
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
    * powerline
    * tmux

---
## Contributor

* [Kevin Cyu](https://github.com/kevinbird61)
* [David Lu](https://github.com/yungshenglu)

---
## License

[GNU General Public License v3.0](../LICENSE)