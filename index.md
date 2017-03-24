

# SharkLinux 

Built over Ubuntu 16.04(1) LTS. A rolling release OS.

## Shark or Chameleon?

SharkLinux offers a minimalistic and simple interface but is packed with countless features underneath the hood.  Whether you're a casual user looking for a top level desktop experience or a developer looking to make the next great application, SharkLinux has you covered.  Built on Xenial LTS, SharkLinux has the most supported foundation available within a Linux environemnt and is guaranteed to see support/updates until 2021.


## Virtualization swiss army knife.

SharkLinux loves virtual environments. It comes with KVM for Linux based VM's, QEMU for foriegn platforms plus Docker Engine and LXC/LXD containers for a lighter option. We didn't forget the Linux cornerstone Libvirt, rather built on it by teaming it with Vagrant. Not enough options? No problem! If you have a specific idea in mind you can even design your own VM from scratch with vmdebootstrap.


## Desktop software out of the box.

SharkLinux encourages everyone to customize their system to their needs, but who wants to spend hours setting up? Included in the system are hand picked software packages to cover almost any need. Gimp helps you master your photo editing, Libre office suite provides word processing, spreadsheets, presentations and more. Media junkie? VLC and Audacious make sure you have access to top tier video and audio. 


## Never boxed in.

Sometimes containers or VM's just won't do. A shark wasn't meant to live in a box and neither will SharkLinux. SL comes equipped with "Alien"; a tool to convert packages from other linux variants to our native .deb format,  meaning that rpm package can be used directly on your system. 


## Real Sharks swim upstream. 

The SharkLinux graphical environent is built on upstream MATE desktop. Our repository mirrors the PPA of the MATE development team so you'll get updates weeks or months before our friends over at Ubuntu. To ensure you never get left in shallow waters you'll also get updates with bleeding edge releases of the Linux kernel and other key elements of the base Xenial filesystem. 


## Missing something?

Prefer to use a different program than what's included? Swap it out! SharkLinux makes software access a snap. App Grid offers an exceptional alternative to Ubuntu's native software centre, synatpic provides thousands of package options and to make life easier our repository is packed with applications normally only available by hunting down 3rd party sources.  
 
___
## How do I install SharkLinux?


SharkLinux can be tested/installed in a variety of ways. The recommended way remains using the live cd installer available at sharklinux.ga. This repo both serves as a backup for the sharklinux debs not available anywhere else in the event the official apt repo is somehow lost and as an optional method to build/install using Ubuntu 16.04(1) as the base.

### Top 3 install methods

- Official Live CD Installer -- `link at top of page`
- Vagrant Box VM image -- `SharkLinux/Sharklinux`
- Github Clone over Xenial Instance -- `instructions below`

#### Quick launch inside LXD instance:
> sudo lxc launch ubuntu: shark

> sudo lxc exec shark bash

> wget sharklinux.ga/shark -O- | sh

##### Note: LXD does not support the expansion pack due to docker engine.


___

#### DO NOT USE ON PRODUCTION SYSTEMS OR ANY SYSTEM THAT CANNOT BE EASILY RESTORED

If you intend to use this repo it is suggested to do so inside a VM, Cloud instance or LXD container. 
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

`git clone https://github.com/Shark-Linux/SharkLinux.git`

`cd SharkLinux`

`sh shark.sh`

_(reboot may be needed for all changes to take effect)_


### Full OS install

`git clone https://github.com/Shark-Linux/SharkLinux.git`

`cd SharkLinux`

`sh sharklinux.sh`

`sudo reboot`


#### Expansion pack;

(from within a full OS)

run `pimpmyshark`



