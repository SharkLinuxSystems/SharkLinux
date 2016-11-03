# SharkLinux
Install scripts and apt repo keys for SharkLinux

SharkLinux can be tested/installed in a variety of ways. The recommended way remains using the live cd installer available at sharklinux.ga. This repo both serves as a backup for the sharklinux debs not available anywhere else in the event the official apt repo is somehow lost and as an optional method to build/install using Ubuntu 16.04(1) as the base.

ISO available at SharkLinux.ga
Official vagrant box (currently only libvirt provider) 'vagrant init SharkLinux/SharkLinux; vagrant up --provider libvirt'
# Note vagrant box is only base system and 'install sharklinux'  needs to be run for full OS install #


** DO NOT USE ON PRODUCTION SYSTEMS OR ANY SYSTEM THAT CANNOT BE EASILY RESTORED **
If you intend to use this repo is is suggested to do so inside a VM, Cloud instance or LXD container. 
SharkLinux is built over Ubuntu Xenial, however SharkLinux is NOT a variant or remix of Ubuntu and many fundamental system changes will occur during the build/install process. YOU HAVE BEEN WARNED.

Some notable differences;
- No sudo password. 
- No sudo apt.
- Upstream/Dev repo enabled by default
- Many ubuntu-unsupported software (non-opensource, non-free etc)

** Example **
Ubuntu; 
sudo apt install <packagename>
> Are you sure (Y/n) Y
> enter sudo password for <username>: password
~ install begins.

SharkLinux;
install <packagename>
~ install begins.

REQUIREMENTS:
-A clean/fresh xenial base, single user, arch amd64.
-for vagrant box you will need libvirt provider enabaled (vagrant-libvirt plugin, all libvirt/ruby deps installed)

HOW TO INSTALL USING REPO
for base system install;

git clone https://github.com/Shark-Linux/SharkLinux.git
cd SharkLinux
sh shark.sh
(reboot may be needed for all changes to take effect)

for full OS install;

git clone https://github.com/Shark-Linux/SharkLinux.git
cd SharkLinux
sh sharklinux.sh
sudo reboot

Expansion pack;

(from within a full OS)
run 'pimpmyshark'



