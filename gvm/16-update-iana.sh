#!/bin/bash

mkdir iana_service_ports
cd iana_service_ports

wget https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xml

gvm-portnames-update service-names-port-numbers.xml

cd /opt/gvm/src
