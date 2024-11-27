#!/bin/bash

installdocker() {
    dnf -y install docker
}
enabledocker() {
    systemctl enable --now docker
}
installdocker
enabledocker
