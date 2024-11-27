#!/bin/bash

installdocker() {
    dnf -y config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
    dnf -y install docker-ce docker-ce-cli containerd.io
}
enabledocker() {
    systemctl enable --now docker
}
installdocker
enabledocker
