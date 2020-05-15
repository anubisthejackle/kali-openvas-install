#!/bin/bash

cd openvas

# Because of quirks with Kali 2020.1, we need to change the make config
# We need to change CMakeLists.txt in the misc and nasl directories

# Original Line: set (CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -Werror")
# New Line: set (CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -Werror -Wno-error=deprecated-declaration")
sed -i -e "s/\(-Werror\)\(.*\)/\2 -Wno-error=deprecated-declarations\2/" misc/CMakeLists.txt
sed -i -e "s/\(-Werror\)\(.*\)/\2 -Wno-error=deprecated-declarations\2/" nasl/CMakeLists.txt

cd build/
cmake -DCMAKE_INSTALL_PREFIX=/opt/gvm ..
make
make doc
make install
cd /opt/gvm/src
