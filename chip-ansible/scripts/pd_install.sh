#!/bin/bash
echo "deb http://ftp.de.debian.org/debian stretch main" | tee --append /etc/apt/sources.list
apt-get install -y puredata
echo "@audio - rtprio 99" | tee --append /etc/security/limits.conf
echo "@audio - memlock unlimited" | tee --append /etc/security/limits.conf
WHO=$USER
adduser $WHO audio