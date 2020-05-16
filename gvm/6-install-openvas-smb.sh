#!/bin/bash

cd /opt/gvm/src/openvas-smb

export PKG_CONFIG_PATH=/opt/gvm/lib/pkgconfig:$PKG_CONFIG_PATH

mkdir build
cd build/

cmake -DCMAKE_INSTALL_PREFIX=/opt/gvm ..

make

make install
