# ColdFusion 10 Vagrant Environment
## And [Cloudy With A Chance Of Tests](https://github.com/mhenke/Cloudy-With-A-Chance-Of-Tests)

This is a [Vagrant](http://vagrantup.com) project for [ColdFusion 10](http://www.adobe.com/products/coldfusion-family.html) development and includes Cloudy With A Chance Of Tests.

## Prerequietes
1. [Vagrant](http://downloads.vagrantup.com) installed
 - Requires [VirtualBox](https://www.virtualbox.org/wiki/Downloads) installed
1. [Ruby](http://www.ruby-lang.org/en/downloads) installed 
1. [Git](http://git-scm.com/downloads) installed  
1. [Librarian-Chef](https://github.com/applicationsonline/librarian-chef) installed
 - ```gem install librarian-chef```
1. [Downloaded](https://www.adobe.com/cfusion/tdrc/index.cfm?product=coldfusion) 
 - **32bit Linux ColdFusion 10** installer from Adobe 
 - copy to directory `/vagrant-cf10/ColdFusion_10_WWEJ_linux32.bin`

## Using with Librarian
1. Open the command prompt ( **not git bash** )
1. Clone this repository to your Vagrant project directory, i.e. `/vagrant-cf10`
1. Run `librarian-chef install` in the Vagrant project directory
1. Download the 32bit Linux ColdFusion 10 installer from Adobe and place it in the Vagrant project directory, i.e. `/vagrant/cf10/ColdFusion_10_WWEJ_linux32.bin`
1. Run ```vagrant up```
1. Browse to 
 - ColdFusion Administrator ( login with username: admin, password: vagrant )
  - [http://192.168.33.10/CFIDE/administrator](http://192.168.33.10/CFIDE/administrator) 
 - MxUnit
  - [http://192.168.33.10/mxunit/](http://192.168.33.10/mxunit/)

For example:

    $ git clone git@github.com:mhenke/vagrant-cf10.git
    $ cd /vagrant-cf10
    $ librarian-chef install
    $ vagrant up
    
## Error
- vagrant box add fails in Git Bash/Windows
 - DON'T USE GIT BASH

## TODO
- instructions for running cloudy
- adding cfqueryparam and varscoper inspections
- working acf 10 inspection
