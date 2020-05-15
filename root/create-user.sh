#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

echo 'export PATH="$PATH:/opt/gvm/bin:/opt/gvm/sbin:/opt/gvm/.local/bin"' | sudo tee -a /etc/profile.d/gvm.sh

sudo chmod 0755 /etc/profile.d/gvm.sh

source /etc/profile.d/gvm.sh

sudo bash -c 'cat << EOF > /etc/ld.so.conf.d/gvm.conf
# gmv libs location
/opt/gvm/lib
EOF'

mkdir /opt/gvm

adduser gvm --disabled-password --home /opt/gvm/ --no-create-home --gecos ''

usermod -aG redis gvm

chown gvm:gvm /opt/gvm/
