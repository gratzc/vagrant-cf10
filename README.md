# ColdFusion 10 Vagrant Environment
## And [Cloudy With A Chance Of Tests](https://github.com/mhenke/Cloudy-With-A-Chance-Of-Tests)

This is a [Vagrant](http://vagrantup.com) project for [ColdFusion 10](http://www.adobe.com/products/coldfusion-family.html) development and includes Cloudy With A Chance Of Tests.

## Prerequietes
1. Clone git@github.com:mhenke/vagrant-cf10.git
1. [Vagrant](http://downloads.vagrantup.com) installed
 a. Requires [VirtualBox](https://www.virtualbox.org/wiki/Downloads) installed
1. [Ruby](http://www.ruby-lang.org/en/downloads) installed 
1. [Git](http://git-scm.com/downloads) installed  
1. [Librarian-Chef](https://github.com/applicationsonline/librarian-chef) installed
 a. ```gem install librarian-chef```
1. [Downloaded](https://www.adobe.com/cfusion/tdrc/index.cfm?product=coldfusion) 
 a. **32bit Linux ColdFusion 10** installer from Adobe 
 a. copy to directory `/vagrant-cf10/ColdFusion_10_WWEJ_linux32.bin`

### Quick Usage

    $ git clone git@github.com:mhenke/vagrant-cf10.git
    $ cd vagrant-cf10
    $ librarian-chef install
    $ vagrant up

## Detailed Usage
1. Open the command prompt ( **not git bash** )
1. Clone this repository to your Vagrant project directory, i.e. `/vagrant-cf10`
1. Run `librarian-chef install` in the Vagrant project directory
1. Download the 32bit Linux ColdFusion 10 installer from Adobe and place it in the Vagrant project directory, i.e. `//vagrant-cf10/ColdFusion_10_WWEJ_linux32.bin`
1. Run ```vagrant up```
1. Browse to 
 a. ColdFusion Administrator ( login with username: admin, password: vagrant )
  - [http://192.168.33.10/CFIDE/administrator](http://192.168.33.10/CFIDE/administrator) 
 a. MxUnit
  - [http://192.168.33.10/mxunit/](http://192.168.33.10/mxunit/)
 a. CFQuery Param Scanner
 a. VarScoper

1. Your web root is a shared mapping on your host such as ```\vagrant-cf10\wwwroot```

## Installs / Configures
- Adobe ColdFusion 10
- Oracle Java 6
- Jenkins
- Apache
- VIM
- Git
- ANT
- MxUnit
- Cloudy with a Chance of Tests
- CFQuery Param Scanner
- VarScope Scanner
- SQL Database (optional)
 - MYSQL
 - PostgreSQL

## Error
- vagrant box add fails in Git Bash/Windows
 - DON'T USE GIT BASH
- vagrant ssh on Windows
 - http://docs-v1.vagrantup.com/v1/docs/getting-started/ssh.html

## TODO
- instructions for running cloudy https://github.com/mhenke/vagrant-cf10/issues/3
- adding cfqueryparam and varscoper inspections 
 - https://github.com/mhenke/vagrant-cf10/issues/1
 - https://github.com/mhenke/vagrant-cf10/issues/2
- working acf 10 inspection