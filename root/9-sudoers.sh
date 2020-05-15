#!/bin/bash

sed -i -e '/secure_path/ s[=.*[&:/opt/gvm/sbin[' /etc/sudoers

cat <<< EOF >> /etc/sudoers

### Allow the user running ospd-openvas, to launch openvas with root permissions
gvm ALL = NOPASSWD: /opt/gvm/sbin/openvas
gvm ALL = NOPASSWD: /opt/gvm/sbin/gsad

EOF

