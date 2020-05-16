#!/bin/bash
cd /opt/gvm/src/gsa
export PKG_CONFIG_PATH=/opt/gvm/lib/pkgconfig:$PKG_CONFIG_PATH
mkdir build
cd build/
cmake -DCMAKE_INSTALL_PREFIX=/opt/gvm ..
make
make doc
make install
touch /opt/gvm/var/log/gvm/gsad.log
