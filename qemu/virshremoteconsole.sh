#!/bin/bash

echo -e "\e[32m Remote console virsh host guest! \e[0m"
sudo -s
cd /etc/default/
echo 'GRUB_CMDLINE_LINUX="console=ttyS0,115200n8"' >> grub
echo 'GRUB_SERIAL_COMMAND="serial --speed=115200 --unit=0 --word=8 --parity=no --stop=1"' >> grub
echo 'GRUB_TERMINAL="serial console"' >> grub
sleep
echo -e "\e[32m....... ok \e[0m "
grub2-mkconfig -o /boot/grub2/gurb.cfg
reboot
