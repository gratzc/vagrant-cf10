# ColdFusion 10 Vagrant Environment
## And [Cloudy With A Chance Of Tests](https://github.com/mhenke/Cloudy-With-A-Chance-Of-Tests)

This is a [Vagrant](http://vagrantup.com) project for [ColdFusion 10](http://www.adobe.com/products/coldfusion-family.html) development and includes Cloudy With A Chance Of Tests. It does all the work for you in a few commands.

## Prerequisites
1. [Vagrant](http://downloads.vagrantup.com)
 - Requires [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
1. [Ruby](http://www.ruby-lang.org/en/downloads)
1. [Git](http://git-scm.com/downloads)
1. [Librarian-Chef](https://github.com/applicationsonline/librarian-chef)
 - ```gem install librarian-chef```
1. [Downloaded](https://www.adobe.com/cfusion/tdrc/index.cfm?product=coldfusion)
 - **32bit Linux ColdFusion 10** installer from Adobe 
 - copy to directory `/vagrant-cf10/ColdFusion_10_WWEJ_linux32.bin`

## Quick Setup
```
    $ git clone git@github.com:mhenke/vagrant-cf10.git
    $ cd vagrant-cf10
    $ librarian-chef install
    $ vagrant up
```

## Quick Usage ( ANT )
 Copy your code to your **web root** ```/home/mhenke/github/vagrant-cf10/``` 
```
	$ vagrant ssh
	$ cd /vagrant/wwwroot
	$ ant -p build.xml #shows all targets
	$ ant #runs default target
```

## Using cloudy job ( JENKINS )
The cloudy job is already to go. This build has mxunit ( unit and accpetance testings ), jslint, csslint, qpscanner, varscoper, and a syntax check ready out of the box.

1. Complete **Git plugin** on [Configure System](http://192.168.33.10:8080/configure) :
 - **Global Config user.name** is ```cloudy```
 - **Global Config user.email Value** is ```cloudy@example.com```
1. Go to [Job Cloudy](http://192.168.33.10:8080/job/cloudy)
1. Click **Build Now**
1. To see the build output select **Console Output**
