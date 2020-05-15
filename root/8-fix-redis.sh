#!/bin/bash
ldconfig

cp /etc/redis/redis.conf /etc/redis/redis.orig
cp /opt/gvm/src/openvas/config/redis-openvas.conf /etc/redis/

chown redis:redis /etc/redis/redis-openvas.conf

echo "db_address = /run/redis-openvas/redis.sock" > /opt/gvm/etc/openvas/openvas.conf

systemctl enable redis-server@openvas.service
systemctl start redis-server@openvas.service

sysctl -w net.core.somaxconn=1024
sysctl vm.overcommit_memory=1

echo "net.core.somaxconn=1024"  >> /etc/sysctl.conf
echo "vm.overcommit_memory=1" >> /etc/sysctl.conf

cat << EOF > /etc/systemd/system/disable-thp.service
[Unit]
Description=Disable Transparent Huge Pages (THP)

[Service]
Type=simple
ExecStart=/bin/sh -c "echo 'never' > /sys/kernel/mm/transparent_hugepage/enabled && echo 'never' > /sys/kernel/mm/transparent_hugepage/defrag"

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl start disable-thp
systemctl enable disable-thp
systemctl restart redis-server
