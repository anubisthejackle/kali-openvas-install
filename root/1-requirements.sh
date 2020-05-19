#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

apt update

apt -y dist-upgrade

apt -y autoremove

apt install -y software-properties-common

apt install -y cmake pkg-config libglib2.0-dev libgpgme-dev libgnutls28-dev uuid-dev libssh-gcrypt-dev libldap2-dev doxygen graphviz libradcli-dev libhiredis-dev libpcap-dev bison libksba-dev libsnmp-dev gcc-mingw-w64 heimdal-dev libpopt-dev xmltoman redis-server xsltproc libical-dev postgresql postgresql-contrib postgresql-server-dev-all gnutls-bin nmap rpm nsis curl wget fakeroot gnupg sshpass socat snmp smbclient libmicrohttpd-dev libxml2-dev python3-polib gettext rsync xml-twig-tools python3-paramiko python3-lxml python3-defusedxml python3-pip python3-psutil virtualenv vim git python3-dev python3.7-dev clang-format

apt install -y texlive-latex-extra --no-install-recommends

apt install -y texlive-fonts-recommended

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

apt update

apt -y install yarn
