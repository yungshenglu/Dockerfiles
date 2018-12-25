# Dockerfiles

This repository is used to store my own Dockerfiles.

---
## Contents

* **Currently support**
    * [ubuntu-env](https://hub.docker.com/r/yungshenglu/ubuntu-env/) - Ubuntu Linux (64-bit)
        * `16.04` - Ubuntu Linux 16.04 LTS (64-bit)
    * [mininet-env](https://hub.docker.com/r/yungshenglu/mininet-env) - Mininet on Ubuntu Linux 16.04 LTS (64-bit)
        * `2.2.1` - Mininet 2.2.1
    * [ryu-env](https://hub.docker.com/r/yungshenglu/ryu-env) - Ryu SDN on Ubuntu Linux 16.04 LTS (64-bit)
        * `3.27` - Ryu 3.27
    * [p4-env](https://cloud.docker.com/repository/docker/yungshenglu/p4-env) - P4 on Ubuntu Linux 16.04 LTS (64-bit)
        * `1.0` - P4 1.0
        * `2.0` - P4 2.0
* **Building**
    * [ncsdk-env]() - Intel® Movidius™ Neural Compute SDK (NCSDK) on Ubuntu Linux 16.04 LTS (64-bit)
        * `v2` - Intel® Movidius™ NCSDK v2

---
## Usage

1. Build the Docker container with Dockerfile
    * [`ubuntu-env:16.04`](ubuntu-env/)
    * [`mininet-env:2.2.1`](mininet-env/)
    * [`ryu-env:3.27`](ryu-env/)
2. How to remove the Docker container? (optional)
    ```bash
    # Make sure your current directory is in "./"
    # Command format:
    $ ./main.sh clean <CONTAINER_NAME>
    ```
3. How to remove the Docker image? (optional)
    ```bash
    # Make sure your current directory is in "./"
    # Command format:
    $ ./main.sh remove <IMAGE_NAME>
    ```
4. How to login to your Docker container via SSH service?
    * For Linux / MacOS
        ```bash
        # Open the terminal
        $ ssh -p <PORT> root@0.0.0.0
        root@0.0.0.0's password: 1111
        ```
    * For Windows
        * You can use [PieTTY](https://sites.google.com/view/pietty-project) to login via SSH service!

---
## Contributing

To know how to contribute this repository, please refer to this [document](CONTRIBUTING.md) first. Thanks for your cooperation.

---
## Contributor

* [David Lu](https://github.com/yungshenglu)
* [Kevin Cyu](https://github.com/kevinbird61)

---
## License

[GNU General Public License v3.0](LICENSE)