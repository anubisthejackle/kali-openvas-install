#!/bin/bash

cd /opt/gvm/src/

git clone -b openvas-7.0 --single-branch https://github.com/greenbone/openvas.git

cd /opt/gvm/src/openvas

# Because of quirks with Kali 2020.1, we need to change the make config
# We need to change CMakeLists.txt in the misc and nasl directories

# Original Line: set (CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -Werror")
# New Line: set (CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -Werror -Wno-error=deprecated-declaration")
sed -i -e "s/\(-Werror\)\(.*\)/\1 -Wno-error=deprecated-declarations\2/" misc/CMakeLists.txt
sed -i -e "s/\(-Werror\)\(.*\)/\1 -Wno-error=deprecated-declarations\2/" nasl/CMakeLists.txt

mkdir build/
cd build
cmake -DCMAKE_INSTALL_PREFIX=/opt/gvm ..

make
make doc
make install
