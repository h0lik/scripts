#!/bin/bash

echo -e "\e[32m Install base software rpm OS! \e[0m"
sleep 2
sudo dnf update -y
sudo dnf -y install epel-release
sudo dnf update
sudo dnf -y install wget libselinux libselinux-utils mc git nmap traceroute tcpdump bind-utils net-tools cpan ipset conntrack iptables iptables-service htop nmon atop tree psmisc ncdu ipset-service nfs-utils
sleep 2
echo -e "\e[33m remove firewalld "
sudo dnf remove firewalld
sudo reboot
