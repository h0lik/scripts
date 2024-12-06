#!/bin/bash 
os=$(uname)
# Fynction install docker deb-base
fynct_deb() {
# Add docker`s official GPG Key:
apt-get update
apt-get install ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to APT source:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
# Istall the latest version docker
apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
#Starting Docker
systemctl enable --now docker
}
# Fynction install docker rpm-base 
fynct_rpm() {
# Configure DNF manager
dnf makecache --refresh
dnf -y install dnf-plugins-core
yum makecache --refresh
# ADD repo Docker
dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
# Install docker 
dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
# Starting docker 
systemctl enable --now docker
}

if [[ $EUID -ne 0 ]]; then 
	ehco "This script must be run as root"
	exit 1
fi 

if [ "$os" = "Linux" ]; then
echo "This is a Linux machine"
if [[ -f /etc/redhat-release ]]; then
    pkg_manager=yum
  elif [[ -f /etc/debian_version ]]; then
    pkg_manager=apt
  fi

if [ $pkg_manager = "yum" ]; then 
	fynct_rpm
elif [ $pkg_manager = "apt" ]; then 
	fyntc_deb
fi 


