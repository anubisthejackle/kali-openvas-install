#!/bin/bash

gvmd --get-scanners
gvmd --modify-scanner=08b69003-5fc2-4037-a479-93b440211c73 of OpenVAS Default --scanner-host=/opt/gvm/var/run/ospd.sock
