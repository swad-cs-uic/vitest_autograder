#!/usr/bin/env bash

add-apt-repository -y ppa:openjdk-r/ppa
apt-get update
apt install -y openjdk-11-jdk
apt install -y node

apt-get -y install rsync
apt-get -y install maven
apt-get -y install bash

# The following lines are to make sure we can install packages from maven
# See https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/1396760
# and https://github.com/docker-library/openjdk/issues/19#issuecomment-70546872
apt-get install --reinstall ca-certificates-java
update-ca-certificates -f


