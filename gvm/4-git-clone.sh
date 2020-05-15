#!/bin/bash

git clone -b gvm-libs-11.0 --single-branch  https://github.com/greenbone/gvm-libs.git

git clone -b openvas-7.0 --single-branch https://github.com/greenbone/openvas.git

git clone -b gvmd-9.0 --single-branch https://github.com/greenbone/gvmd.git

git clone -b master --single-branch https://github.com/greenbone/openvas-smb.git

git clone -b gsa-9.0 --single-branch https://github.com/greenbone/gsa.git

git clone -b ospd-openvas-1.0 --single-branch  https://github.com/greenbone/ospd-openvas.git

git clone -b ospd-2.0 --single-branch https://github.com/greenbone/ospd.git
