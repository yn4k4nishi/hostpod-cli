#!/bin/bash

PWD=$(pwd)
SCRIPT_DIR=$(cd $(dirname $0); pwd)

sudo mkdir -p /opt/hostpod-cli
sudo cp $SCRIPT_DIR/* /opt/hostpod-cli

sudo chmod 777 /opt/hostpod-cli/hostpod.bash
sudo ln -f /opt/hostpod-cli/hostpod.bash /usr/local/bin/hostpod

cd
echo "source /opt/hostpod-cli/hostpod_comp.bash" >> .bashrc
source .bashrc

cd $PWD

echo "Finish."

