#!/bin/bash
mkdir /opt/gvm/var/run/ospd/

cd /opt/gvm/src/

git clone -b ospd-2.0 --single-branch https://github.com/greenbone/ospd.git

cd /opt/gvm/src/ospd
pip3 install .

cd /opt/gvm/src/

git clone -b ospd-openvas-1.0 --single-branch  https://github.com/greenbone/ospd-openvas.git

cd /opt/gvm/src/ospd-openvas

pip3 install .
