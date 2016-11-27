#!/bin/bash
sudo dpkg -i shark-patch.deb
sudo apt update
shark-upgrade
sudo apt install --yes sharklinux
exit 0
