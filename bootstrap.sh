#!/bin/bash
yum groupinstall "Development Tools" -y
yum install curl-devel -y
yum install fuse-devel -y
yum install libxml2-devel -y
yum install openssl-devel -y
# OPTIONAL REPOSITORIES
#yum install git -y
yum install svn

#Install nodejs
nodejsPkg=sudo yum install nodejs --enablerepo=epel-testing
wget http://download.fedoraproject.org/pub/epel/6/x86_64/$nodejsPkg
sudo rpm -ivh $nodejsPkg
sudo yum install nodejs --enablerepo=epel-testing
rm $nodejsPkg
