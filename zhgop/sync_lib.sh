#!/bin/bash


set -o errexit
set -o pipefail


function main() {

    filePath=${1}
    if [ ! "$filePath" ];then
        echo $filePath
        echo "parameter cannot be null"
        exit 1
    fi
rsync -e "ssh -i ~/.ssh/id_rsa.jumpserver" -avz 1.2.3.4:${filePath} ./$(basename $filePath)

}


main $1

rm -rf lib
mkdir lib
tar -xf $(basename $filePath) -C lib
# -- makefile
make all