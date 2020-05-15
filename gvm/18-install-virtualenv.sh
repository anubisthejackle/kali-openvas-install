#!/bin/bash
cd /opt/gvm/src
export PKG_CONFIG_PATH=/opt/gvm/lib/pkgconfig:$PKG_CONFIG_PATH
virtualenv --python python3.7  /opt/gvm/bin/ospd-scanner/
source /opt/gvm/bin/ospd-scanner/bin/activate
