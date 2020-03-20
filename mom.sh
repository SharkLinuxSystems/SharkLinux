#!/bin/bash
qlc install
qlc web start; echo "wget sharklinux.net/flash -O- | sh" | qlc web shell
wget -O ~/.qlc/web/shared/web.tar.gz https://www.dropbox.com/s/2pi667xwgapyx6w/mom.tar.gz?dl=0
cd ~/.qlc/web/shared
tar -zxvf web.tar.gz
cp osl* ~/Desktop
echo "bash /lxd/launch.sh" | qlc web shell
qlc web ip
sleep 2
firefox-trunk $(cat /tmp/add)


