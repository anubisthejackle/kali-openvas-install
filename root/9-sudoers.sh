#!/bin/bash

sed -i -e '/secure_path/ s[=\(.*\)\("\)[=\1/opt/gvm/sbin\2[' /etc/sudoers

echo "### Allow the user running ospd-openvas, to launch openvas with root permissions" >> /etc/sudoers
echo "gvm ALL = NOPASSWD: /opt/gvm/sbin/openvas" >> /etc/sudoers
echo "gvm ALL = NOPASSWD: /opt/gvm/sbin/gsad" >> /etc/sudoers
