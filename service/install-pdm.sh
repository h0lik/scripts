#!/bin/bash 
set -e 
install_pdm() {
  echo 'deb http://download.proxmox.com/debian/pdm bookworm pdm-test' >/etc/apt/sources.list.d/pdm-test.list
  wget https://enterprise.proxmox.com/debian/proxmox-release-bookworm.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bookworm.gpg
  apt update
  apt install proxmox-datacenter-manager proxmox-datacenter-manager-ui
}

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    exit 1
fi
echo "Press enter to continue [y/n]"
print ENTER
if [ $ENTER = "y" ] ;
    then
	echo -e "\e[32m Install Proxmox Datacenter Manager \e[0m"
  install_pdm	
	else
	echo "\e[31m NO \e[0m"
	exit;
fi
