#!/bin/bash

installdocker() {
    dnf install -y dnf-utils
    dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
    yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
}
enabledocker() {
    systemctl enable --now docker
}
installdocker
enabledocker
