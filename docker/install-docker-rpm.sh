#!/bin/bash

install_docker() {
    dnf install -y dnf-utils
    dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
    yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
}enable_docker() {
    systemctl enable --now docker
}
install_docker
enable_docker
