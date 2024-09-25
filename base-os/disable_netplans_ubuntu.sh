#!/bin/bash
update_system() {
echo -e "- Update system"
sudo apt update && sudo apt upgrade -y 
echo -e "Install soft"
sudo apt install -y ifupdown net-tools resolvconf
}
grub_configure() {
sudo cp /etc/defaults/grub /etc/defaults/grub.bak
sudo sed 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="netcfg/do_not_use_netplan=true"/g' /etc/defaults/grub
sudo update-grub
}

setting_network()  {
echo -e "configure network dhcp"
read -p "- name interfaces:" iner_name
cat << EOF >> /etc/network/interfaces
auto $iner_name
iface $iner_name inet dhcp
EOF
}
netplans_del() {
echo -e "\e[31m stopping service \e[0m"
systemctl stop systemd-networkd.socket systemd-networkd networkd-dispatcher systemd-networkd-wait-online systemd-resolved
echo "\e[31m disable service \e[0m"
systemctl disable systemd-networkd.socket systemd-networkd networkd-dispatcher systemd-networkd-wait-online systemd-resolved
echo "\e[31m mask service \e[0m"
systemctl mask systemd-networkd.socket systemd-networkd networkd-dispatcher systemd-networkd-wait-online systemd-resolved
echo "\e[31m purge netplans \e[0m"
apt-get --assume-yes purge nplan netplan.io
}

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    exit 1
fi
cat << EOF
Данный скрипт удаляет netplans и ставит старый добрый ifupdown
EOF
echo -n "Продолжить? (y/n) "

read item
case "$item" in
    y|Y) echo "начинаем установку!"
      $update_system
      $gurb_configure
      $setting_network
      $netplans_del 
      ;;
    n|N) echo "Жаль,и пока!"
        exit 0
        ;;
    *) echo "Хм, вынужден закончить!"
      exit 0   
      ;;
esac
