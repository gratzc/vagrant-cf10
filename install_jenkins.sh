#!/bin/bash
echo setup jenkins
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'

echo update system
sudo apt-get -qq -y update
#sudo apt-get -qq -y dist-upgrade

echo install jenkins
sudo apt-get -qq -y install jenkins

# copy cloudy job

echo install plugins
wget -q -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/violations.hpi
wget -q -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/warnings.hpi
wget -q -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/analysis-core.hpi
wget -q -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/dry.hpi
wget -q -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/ant.hpi
wget -q -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/git.hpi
wget -q -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/tasks.hpi
wget -q -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/heroku-jenkins-plugin.hpi
wget -q -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/github.hpi
wget -q -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/github-api.hpi
wget -q -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/compact-columns.hpi
wget -q -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/tmpcleaner.hpi
wget -q -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/jquery.hpi
wget -q -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/git-client.hpi
wget -q -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/analysis-collector.hpi
wget -q -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/violations.hpi

echo restart jenkins
service jenkins restart

echo fix permissions issue with WEB-INF/cfclasses
sudo chmod 777 /opt/coldfusion10/cfusion/wwwroot/WEB-INF/cfclasses/