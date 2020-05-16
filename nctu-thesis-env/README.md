# nctu-thesis-env

This Dockerfile is used to build a [LeTeX-compiled environment](https://movidius.github.io/ncsdk/index.html) on Ubuntu Linux 16.04 LTS (only supported).

---
## Usages

1. Before using this Dockerfile, make sure you have already installed Docker on your machine.
    * [Docker CE Installation](https://docs.docker.com/install)
2. Use `main.sh` to build a Docker container
    ```bash
    # Make sure your current directory is in "./"
    # Command format:
    $ ./main.sh build <DOCKERFILE_PATH> <IMAGE_NAME> <EXTERNAL_PORT>
    # Example: Use the Dockerfile in "./nctu-thesis-env/" and build a Docker image named "nctu-thesis-env" which externel port is 9487
    $ ./main.sh build ./nctu-thesis-env/Dockerfile nctu-thesis-env 9487
    ```
3. How to remove the container? (optional)
    ```bash
    # Make sure your current directory is in "./"
    # Command format:
    $ ./main.sh clean <CONTAINER_NAME>
    # Example: Remove the container named "nctu-thesis-env_c"
    $ ./main.sh clean nctu-thesis-env_c
    ```


---
## Contents

* **Ubuntu Linux 16.04 LTS (64-bit)** - `ubuntu-env:16.04`
    * build-essential
    * sudo
    * git
    * vim
    * texlive-full
    * texlive-fonts-extra 
    * fonts-arphic-ukai 
    * fonts-arphic-uming 
    * ttf-mscorefonts-installer

---
## Contributor

* [David Lu](https://github.com/yungshenglu)

---
## License

[GNU General Public License v3.0](../LICENSE)
