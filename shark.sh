#!/bin/bash
sudo dpkg -i shark-patch.deb
cd ..
sudo rm -r SharkLinux
sudo apt update
shark-upgrade
exit 0
