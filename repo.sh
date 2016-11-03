#!/bin/bash
mkdir /tmp/binary
mv *.deb /tmp/binary/
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo sh -c "echo 'deb https://apt.dockerproject.org/repo ubuntu-xenial main' > /etc/apt/sources.list.d/docker.list" 
sudo apt update
sudo apt install apt-mirror -y
cd /tmp
wget -O kite.zip https://github.com/docker/kitematic/releases/download/v0.12.0/Kitematic-0.12.0-Ubuntu.zip
unzip kite.zip
cd dist
mv Kitematic_0.12.0_amd64.deb /tmp/binary/
cat> mirror.list <<EOF
set base_path    /tmp
set mirror_path /tmp/mirror
set skel_path    /tmp/skel
set var_path     /tmp/var
set no_check_certificate 1
set nthreads     20
set _tilde 0
deb-amd64 http://archive.getdeb.net/ubuntu xenial-getdeb apps
deb-amd64 http://ppa.launchpad.net/nilarimogard/webupd8/ubuntu xenial main
deb-amd64 http://ppa.launchpad.net/appgrid/stable/ubuntu xenial main
deb http://ppa.launchpad.net/juju/stable/ubuntu xenial main
deb-amd64 http://mega.nz/linux/MEGAsync/xUbuntu_16.04/ ./
deb-amd64 http://ppa.launchpad.net/ubuntu-lxc/lxd-stable/ubuntu xenial main
deb-amd64 http://ppa.launchpad.net/moka/daily/ubuntu xenial main
deb-amd64 http://ppa.launchpad.net/ubuntu-mate-dev/xenial-mate/ubuntu xenial main
deb-amd64 http://ppa.launchpad.net/snwh/pulp/ubuntu xenial main
deb-amd64 http://ppa.launchpad.net/moka/stable/ubuntu xenial main
deb-amd64 http://ppa.launchpad.net/numix/ppa/ubuntu xenial main
deb-amd64 http://dl.google.com/linux/chrome/deb/ stable main
deb-amd64 http://apt.dockerproject.org/repo ubuntu-xenial main
clean http://archive.ubuntu.com/ubuntu
EOF
sudo chmod +x mirror.list
sudo mv mirror.list /etc/apt/
sudo su - apt-mirror -c apt-mirror
sudo chown $USER -R /tmp/mirror/
sudo chmod 755 -R /tmp
find . -name "*.deb" -type f -exec cp {} ./binary \;
sudo chown $USER -R /tmp/binary
cd binary
sudo apt download docker-engine -y
wget http://download.nomachine.com/download/5.1/Linux/nomachine_5.1.54_1_amd64.deb
wget http://pilotfiber.dl.sourceforge.net/project/pinguy-os/ISO_Builder/pinguybuilder_4.3-8_all-beta.deb
wget https://releases.hashicorp.com/vagrant/1.8.6/vagrant_1.8.6_x86_64.deb
wget http://downloads.sourceforge.net/project/virtualgl/2.5.1/virtualgl_2.5.1_amd64.deb
http://downloads.sourceforge.net/project/turbovnc/2.1/turbovnc_2.1_amd64.deb
apt-ftparchive packages . > Packages
gzip -c Packages > Packages.gz
apt-ftparchive release . > Release
cd ..
mv binary ~/repo
