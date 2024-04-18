#!/bin/bash
#================================================
#Name:Qemu-install virtual machine
#Autor:H0lik@Linux
#Github:github.com/h0lik
#Date:18.04.2024
#================================================
dir= # Тут вписываем где храняться у вас виртуальные жесткие диски!
iso= # Тут вписываем хранилище ISO образов систем!
echo -e "Installing a virtual machine qemu/kvm, \e[32m $USER \e[0m"

read -p "-Amount of virtual machine RAM:" ram
read -p "-ISO system install:" deb
read -p "-Disk virtual machine:" vdm

sudo qemu-system-x86_64 -m $ram -hda $dir$vdm -cdrom "$iso$deb"
