#!/bin/bash
USER=$1
OS=$2
OS_VERSION=$3

HOME="/home/${USER}"
echo ${HOME}

if [[ "${OS}" == "ubuntu" ]]; then
   source ./ubuntu.sh
fi

