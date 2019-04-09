# ryu-env

This Dockerfile is used to build a Ubuntu Linux environment with [Ryu SDN Framework](https://osrg.github.io/ryu/) on the Docker container.

---
## Usages

> **NOTICE:** We provided a script file [main.sh](../main.sh) for you to help you to build the Docker container easily.!

1. Before using this Dockerfile, make sure you have already installed Docker on your machine.
    * [Docker CE Installation](https://docs.docker.com/install)
2. Use `main.sh` to build a Docker container
    ```bash
    # Make sure your current directory is in "./"
    # Command format:
    $ ./main.sh build <DOCKERFILE_PATH> <IMAGE_NAME> <EXTERNAL_PORT>
    # Example: Use the Dockerfile in "./ryu-env/" and build a Docker image named "ryu-env" which externel port is 9487
    $ ./main.sh build ./ryu-env/Dockerfile ryu-env 9487
    ```
3. How to remove the container? (optional)
    ```bash
    # Make sure your current directory is in "./"
    # Command format:
    $ ./main.sh clean <CONTAINER_NAME>
    # Example: Remove the container named "ryu-env_c"
    $ ./main.sh clean ryu-env_c
    ```

---
## Contents

> **NOTICE:** We only support the environment on **Ubuntu Linux 16.04 LTS (64-bit)** currently! Besides, the environment of Ubuntu Linux 16.04 LTS (64-bit) is built from my own Docker image. You can refer to the Dockerfile [here](../ubuntu-env/).

* **Ryu 4.30** - `ryu-env:4.30`
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
    * ryu

---
## References

* [Ryu SDN Framework](https://osrg.github.io/ryu/)
* [Ryu SDN Framework Tutorial](https://ryu.readthedocs.io/en/latest/getting_started.html)
* [GitHub - Ryu SDN Framework](https://github.com/osrg/ryu)

---
## Contributor

* [David Lu](https://github.com/yungshenglu)

---
## License

[GNU General Public License v3.0](../LICENSE)
