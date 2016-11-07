# SharkLinux
SharkLinux Apt Repo and Install Scripts

SharkLinux can be tested/installed in a variety of ways. The recommended way remains using the live cd installer available at sharklinux.ga. Github both serves as the apt repo and as an optional method to build/install using Ubuntu 16.04(1) as the base.

ISO available at SharkLinux.ga

Official vagrant box (currently only libvirt provider) 'vagrant init SharkLinux/SharkLinux; vagrant up --provider libvirt'

Note: vagrant box is only base system and 'install sharklinux'  needs to be run for full OS install 
___

#### DO NOT USE ON PRODUCTION SYSTEMS OR ANY SYSTEM THAT CANNOT BE EASILY RESTORED

If you intend to demo SharkLinux it is suggested to do so inside a VM, Cloud instance or LXD container. 
SharkLinux is built over Ubuntu Xenial, however SharkLinux is NOT a variant or remix of Ubuntu and many fundamental system changes will occur during the build/install process. YOU HAVE BEEN WARNED.


### Some notable differences;
- No sudo password. 
- No sudo apt.
- Upstream/Dev repo enabled by default
- Many ubuntu-unsupported software (non-opensource, non-free etc)

### Examples

#### Ubuntu:

`sudo apt install <packagename>`

`Are you sure (Y/n) Y`

`enter sudo password for (user): password`

_install begins._


#### SharkLinux:

`install <packagename>`

_install begins._

___
## REQUIREMENTS:

-A clean/fresh xenial base, single user, arch amd64.

-for vagrant box you will need libvirt provider enabaled (vagrant-libvirt plugin, all libvirt/ruby deps installed)

___

## HOW TO INSTALL USING REPO

### Base system install

`git clone -b master --single-branch https://github.com/Shark-Linux/SharkLinux.git`

`cd SharkLinux`

`sh shark.sh`

_(reboot may be needed for all changes to take effect)_


### Full OS install

`git clone -b master --single-branch https://github.com/Shark-Linux/SharkLinux.git`

`cd SharkLinux`

`sh sharklinux.sh`

`sudo reboot`


#### Expansion pack;

(from within a full OS)

run `pimpmyshark`



