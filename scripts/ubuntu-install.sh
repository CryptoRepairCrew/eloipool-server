#!/bin/bash

cd "$(dirname ${BASH_SOURCE[0]})"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Installing Supporting Files."
sudo apt-get update
wait
sudo apt-get -y install python3 python3-dev python3.2-dev python-requests build-essential git
wait

$DIR/installpool.sh
