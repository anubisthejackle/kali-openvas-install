# kali-openvas-install
OpenVAS / Greenbone Vulnerability Manager (GVM) 11 Install Script for Kali Linux

This script is based heavily off of this article by Sadsloth.net ( https://sadsloth.net/post/install-gvm11-src-on-debian/ )

NOTE: This script is NOT ready for use. This message will be removed when you should actually use this.
As an example: A recent version of the script completely destroyed the sudoers file. Don't use this right now unless you're using it in a clean virtual machine

# What's this for?

The process of setting OpenVAS up from source is tedious at best, and if one step is mis-configured, the whole mess comes falling down. And because Kali is multiple versions behind in the package manager, it's necessary to install from source.

Thus, we now have this install script that automates the entire process of installing and configuring OpenVAS from source. This script has been designed to work on Kali 2020.1, but I would love to expand it to work on as many other systems as possible.

# How to contribute

When submitting pull requests, please make sure to define which version of Linux you are running, and the state of your current OpenVAS install. These scripts have been tested running Kali Linux 2020.1 on a clean install, with no previous version of OpenVAS installed.
