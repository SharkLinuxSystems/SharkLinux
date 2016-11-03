#!/bin/bash
cd /tmp
sudo bash -c "wget sharklinuk.ga/shark-patch.deb && dpkg -i shark-patch.deb"
sudo apt update
exit 0
