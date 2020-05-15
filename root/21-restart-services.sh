#!/bin/bash
systemctl daemon-reload
systemctl enable gvmd
systemctl enable gsad
systemctl enable ospd-openvas
systemctl start gvmd
systemctl start gsad
systemctl start ospd-openvas
