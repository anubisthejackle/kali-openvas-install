# kali-openvas-install
OpenVAS / Greenbone Vulnerability Manager (GVM) 11 Install Script for Kali Linux

This script is based heavily off of this article by Sadsloth.net ( https://sadsloth.net/post/install-gvm11-src-on-debian/ )

# What's this for?

The process of setting OpenVAS up from source is tedious at best, and if one step is mis-configured, the whole mess comes falling down. And because Kali is multiple versions behind in the package manager, it's necessary to install from source.

Thus, we now have this install script that automates the entire process of installing and configuring OpenVAS from source. This script has been designed to work on Kali 2020.1, but I would love to expand it to work on as many other systems as possible.

# Installation Steps

Simply execute `install-gvm11.sh` with an account that has sudo capabilities. The script will do the rest.

*NOTE: This script takes a LONG time to complete. You will be required to enter your sudo password on at least two occasions. Once at the very start of the script, and once near the middle after updating feeds.*

# How to contribute

When submitting pull requests, please make sure to define which version of Linux you are running, and the state of your current OpenVAS install. These scripts have been tested running Kali Linux 2020.1 on a clean install, with no previous version of OpenVAS installed.
This script is now tested with Parrot GNU/Linux 4.10 and ubuntu 20.00
