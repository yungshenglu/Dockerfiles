#!/bin/bash -e
# Build the Docker container from the Dockerfile
# CONTRIBUTOR: David Lu (https://github.com/yungshenglu)

function build {
    # $1: the path of Dockerfile
    # $2: the name of Docker image
    # $3: the external port
    if [ $# -lt 3 ]; then
        echo "[ERROR] The format of command is WRONG"
        echo "[INFO] ./main.sh build <DOCKERFILE_PATH> <IMAGE_NAME> <EXTERNAL_PORT>"
        exit
    fi

    echo "[INFO] Dockerfile path: $1"
    echo "[INFO] Docker image: $2"
    echo "[INFO] External port: $3"
    # Build the image from the Dockerfile
    docker build -f $1 -t $2 .
    # Build the container from the Docker image
    docker run -d -p $3:22 --privileged --name $2"_c" $2 > /dev/null
    # List port 22 mapping on the Docker container
    docker port $2"_c" 22
}

function run {
    # $1: the name of Docker image
    # $2: the external port
    if [ $# -lt 2 ]; then
        echo "[ERROR] The format of command is WRONG"
        echo "[INFO] ./main.sh run <CONTAINER_NAME>"
        exit
    fi

    echo "[INFO] Run Docker container named $1 on port $2"
    # Build the container from the Docker image
    docker run -d -p $2:22 --privileged --name $1"_c" $1 > /dev/null
    # List port 22 mapping on the Docker container
    docker port $1"_c" 22
}

function clean {
    # $1: the name of docker container
    if [ $# -lt 1 ]; then
        echo "[ERROR] The format of command is WRONG"
        echo "[INFO] ./main.sh clean <CONTAINER_NAME>"
        exit
    fi

    echo "[INFO] Stop and remove the container named $1"
    # Stop and remove the Docker container
    docker container stop $1
    docker container rm $1
}

function remove {
    # $1: the name of the Docker image
    if [ $# -lt 1 ]; then
        echo "[ERROR] The format of command is WRONG"
        echo "[INFO] ./main.sh remove <IMAGE_NAME>"
        exit
    fi

    echo "[INFO] Remove the Docker image named $1"
    # Remove the Docker image
    docker image rm $1
}

# Main
# $#: the number of parameters (receive at runtime)
# $1: the first command line argument passed
if [ $# -eq 0 ]; then
    echo "[INFO] Usage: $(basename $0) {build|run|clean|remove}"
    echo "[INFO] \t./main.sh build <DOCKERFILE_PATH> <IMAGE_NAME> <EXTERNAL_PORT>"
    echo "[INFO] \t./main.sh run <CONTAINER_NAME>"
    echo "[INFO] \t./main.sh clean <CONTAINER_NAME>"
    echo "[INFO] \t./main.sh remove <IMAGE_NAME>"
    exit
fi

if [ "$1" == "build" ]; then
    $1 $2 $3 $4
    exit
elif [ "$1" == "run" ]; then
    $1 $2
    exit
elif [ "$1" == "clean" ]; then
    $1 $2
    exit
elif [ "$1" == "remove" ]; then
    $1 $2
    exit
fi

$1
