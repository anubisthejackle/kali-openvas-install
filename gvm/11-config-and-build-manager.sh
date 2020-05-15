#!/bin/bash

cd gvmd
export PKG_CONFIG_PATH=/opt/gvm/lib/pkgconfig:$PKG_CONFIG_PATH
wget https://raw.githubusercontent.com/apilynx/gvmd/e7f94bbe0879acb93f87bd1563148fc1d04a27fd/tools/gvm-portnames-update.in -O tools/gvm-portnames-update.in
sed -i 's/POSTGRES=0/POSTGRES=1/g' tools/gvm-portnames-update.in
mkdir build
cd build/
cmake -DCMAKE_INSTALL_PREFIX=/opt/gvm ..
make
make doc
make install
cd /opt/gvm/src
