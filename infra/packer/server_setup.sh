#!/usr/bin/env bash
# Wait for cloud-init to finish

sudo apt update -y

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages

sudo apt update
sudo apt install gh

sudo apt install -y xrdp
sudo apt install -y whois

sudo systemctl enable xrdp
sudo systemctl status xrdp

sudo adduser student --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "student:s3creeT!" | sudo chpasswd
