#!/bin/bash

cd /opt/gvm/src/

git clone -b gvm-libs-11.0 --single-branch  https://github.com/greenbone/gvm-libs.git

cd /opt/gvm/src/gvm-libs

export PKG_CONFIG_PATH=/opt/gvm/lib/pkgconfig:$PKG_CONFIG_PATH

mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=/opt/gvm ..

make

make doc

make install
