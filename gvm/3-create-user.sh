#!/bin/bash
cd /opt/gvm
mkdir src
cd src

export PKG_CONFIG_PATH=/opt/gvm/lib/pkgconfig:$PKG_CONFIG_PATH
