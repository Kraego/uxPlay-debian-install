#!/bin/bash

echo "## Installing needed packages for build"
echo "## Updating packages list"
2>/dev/null 1>&2 apt update 

if [ $? -ne 0 ]; then
    echo "Failure in install packages, run the script with sudo - 'sudo ./uxplay_install.sh'"
    exit
fi

apt -y install build-essential
apt -y install cmake
apt -y install libssl-dev libplist-dev
apt -y install libavahi-compat-libdnssd-dev
apt -y install libgstreamer1.0-dev
apt -y install libgstreamer-plugins-base1.0-dev

git clone https://github.com/antimof/UxPlay.git

echo "## Starting the build"
echo 
cd UxPlay
mkdir build
cd build
cmake ..
make

echo "## Install uxplay"
sudo make install

echo "## Install stuff to run uxplay"
apt -y install gstreamer1.0-plugins-base
apt -y install gstreamer1.0-libav
apt -y install gstreamer1.0-plugins-good
apt -y install gstreamer1.0-plugins-bad
apt -y install gstreamer1.0-gl
apt -y install gstreamer1.0-tools

echo "####################################"
echo "## You can now run uxplay from CLI #"
echo "####################################"
