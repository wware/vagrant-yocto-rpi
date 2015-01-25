#!/usr/bin/env bash

apt-get update

apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib \
  build-essential chrpath socat libsdl1.2-dev xterm vim

git clone git://git.yoctoproject.org/poky
cd poky
git clone git://git.yoctoproject.org/meta-raspberrypi
git clone git://git.openembedded.org/meta-openembedded
chown -R vagrant:vagrant /home/vagrant/poky

source oe-init-build-env raspi
cp /vagrant/bblayers.conf conf/
cp /vagrant/local.conf conf/
chown -R vagrant:vagrant /home/vagrant/poky

echo "Now run: bitbake rpi-basic-image"
