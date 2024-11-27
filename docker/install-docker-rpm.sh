#!/bin/bash

installdocker() {
    dnf install -y docker
}
enabledocker() {
    systemctl enable --now docker
}
installdocker
enabledocker
