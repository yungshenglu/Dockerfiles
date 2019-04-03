# uhd-env

This Dockerfile is used to build [USRP Hardware Driver (UHD™) Software](https://github.com/EttusResearch/uhd/tree/UHD-3.9.LTS) environment on Docker container.

---
## Usages

> **NOTICE:** We provided a script file `main.sh` for you to help you to build the Docker container easily. The script file `main.sh` can be downloaded from [here](https://github.com/yungshenglu/Dockerfiles)!

1. Before using this Dockerfile, make sure you have already installed Docker on your machine.
    * [Docker CE Installation](https://docs.docker.com/install)
2. Use `main.sh` to build a Docker container
    ```bash
    # Make sure your current directory is in "./"
    # Command format:
    $ ./main.sh build <DOCKERFILE_PATH> <IMAGE_NAME> <EXTERNAL_PORT>
    # Example: Use the Dockerfile in "./uhd-env/" and build a Docker image named "uhd-env" which externel port is 9487
    $ ./main.sh build ./ubuntu-env/Dockerfile uhd-env 9487
    ```
3. How to remove the container? (optional)
    ```bash
    # Make sure your current directory is in "./"
    # Command format:
    $ ./main.sh clean <CONTAINER_NAME>
    # Example: Remove the container named "uhd-env_c"
    $ ./main.sh clean uhd-env_c
    ```

---
## Contents

* **USRP Hardware Driver (UHD™) Software** - `uhd-env:3.9.LTS`
    * openssh-server
    * net-tools
    * iputils-ping
    * tcpdump
    * iperf3
    * sudo
    * Git - git, git-core
    * vim
    * curl
    * wget
    * Python packages
        * python-pip
        * python-dev
        * python-numpy, python-numpy-doc, python-numpy-dbg
        * python-scipy
        * python-docutils
        * python-qt4, python-qt4-dbg, python-qt4-dev, python-qt4-doc, python-qt4-doc
        * python-wxgtk3.0
        * python-cheetah
        * python-mako
        * python-lxml
        * python-opengl
        * python-qwt5-qt4
        * python-tk
        * python-gtk2
        * python-zmq
        * python-requests
        * python-sphinx
    * tmux
    * swig
    * cmake
    * doxygen
    * build-essential
    * libboost-all-dev
    * libtool
    * libusb-dev, libusb-1.0-0, libusb-1.0-0-dev
    * libudev-dev
    * libncurses5, libncurses5-dev, libncurses5-dbg
    * libfftw3-bin, libfftw3-dev, libfftw3-doc
    * libcppunit-1.13-0v5, libcppunit-dev, libcppunit-doc
    * libqt4-dev, libqt4-dev-bin
    * libqwt6abi1
    * ibfftw3-bin, libfftw3-dev, libfftw3-doc
    * libfontconfig1-dev
    * libxrender-dev
    * libpulse-dev
    * libtool
    * libsdl1.2-dev
    * libgsl-dev
    * libqwt5-qt4-dev
    * libqwtplot3d-qt4-dev
    * liborc-0.4-0, liborc-0.4-dev
    * libasound2-dev
    * libzmq-dev
    * libzmq1
    * libcomedi-dev
    * libxi-dev
    * ncurses-bin
    * cpufrequtils
    * qt4-bin-dbg, qt4-default, qt4-doc, qt4-dev-tools
    * g++
    * automake autoconf
    * fort77
    * ccache
    * pyqt4-dev-tools
    * gtk2-engines-pixbuf
    * r-base-dev

---
## References

* [Ettus Research USRP™ - USRP Hardware Driver (UHD™) Software](https://kb.ettus.com/UHD)
* [GitHub - USRP Hardware Driver (UHD™) Software](https://github.com/EttusResearch/uhd/tree/UHD-3.9.LTS)

---
## Contributor

* [David Lu](https://github.com/yungshenglu)

---
## License

[GNU General Public License v3.0](../LICENSE)