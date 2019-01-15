# ncsdk-env

This Dockerfile is used to build **Intel® Movidius™ NCSDK environment** on Ubuntu Linux 16.04 LTS (only supported).

---
## Usage

1. Before using this Dockerfile, make sure you have already installed Docker on your machine.
    * [Docker CE Installation](https://docs.docker.com/install)
2. Clone the repository [movidius/ncsdk](https://github.com/movidius/ncsdk) on the branch `ncsdk2`
    ```bash
    # Make sure your current directory is you want
    $ git clone -b ncsdk2 https://github.com/movidius/ncsdk.git
    ```
3. Copy the Dockerfile into the directory `./ncsdk/extras/docker/` and name it as `yslu.Dockerfile`
    ```bash
    # Make sure your current directory is "./ncsdk-env/" of this repository
    $ cp Dockerfile <PATH_TO_NCSDK/EXTRAS/DOCKER>/yslu.Dockerfile
    ```
4. Build the image from the Dockerfile (take few minutes)
    ```bash
    # Make sure your current directory is "./ncsdk/"
    $ docker build -t ncsdk-env -f ./extras/docker/yslu.Dockerfile .
    ```
5. Create and run a privileged the Docker container from the built image
    ```bash
    # Make sure your current directory is "./ncsdk/"
    $ docker run --net=host --privileged -v /dev/:/dev --name ncsdk-env_c -i -t ncsdk-env /bin/bash
    ```

### How to use the Docker container with Intel® Movidius™ NCSDK?

* Start the Docker container
    ```bash
    $ docker start -a -i ncsdk-env
    ```
* Build Intel® Movidius™ NCSDK examples (optional)
    ```bash
    # Run the command inside of your Docker container
    $ make examples
    ```
* Exit the Docker container
    ```bash
    # Run the command inside of your Docker container
    $ exit
    ```

---
## Contents

* **Intel® Movidius™ Neural Compute SDK v2** (`ncsdk-env:v2`)
    * lsb-release
    * build-essential
    * sed
    * tar
    * udev
* **Ubuntu Linux 16.04 LTS (64-bit)** - `ubuntu-env:16.04`
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

---
## Contributor

* [David Lu](https://github.com/yungshenglu)

---
## License

[GNU General Public License v3.0](../LICENSE)