#!/bin/bash
echo install jenkins
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add - 
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ &gt; /etc/apt/sources.list.d/jenkins.list'
sudo aptitude update
sudo aptitude install jenkins

#sudo apt-get upgrade

echo install plugins
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/git.hpi
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/violations.hpi
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/terminal.hpi
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/jslint.hpi
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/warnings.hpi
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/tasks.hpi
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/checkstyle.hpi
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/analysis-core.hpi
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/dry.hpi
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/ant.hpi
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/dashboard-view.hpi
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/disk-usage.hpi
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/build-failure-analyzer.hpi
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/htmlpublisher.hpi
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/heroku-jenkins-plugin.hpi
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/github.hpi
wget -P /var/lib/jenkins/plugins http://updates.jenkins-ci.org/latest/github-api.hpi

service jenkins restart