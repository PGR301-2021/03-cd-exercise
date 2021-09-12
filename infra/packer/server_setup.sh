#!/usr/bin/env bash

sudo yum update -y
sudo yum install git -y
git version

wget https://github.com/cli/cli/releases/download/v2.0.0/gh_2.0.0_linux_386.rpm
sudo yum -y install gh_2.0.0_linux_386.rpm
