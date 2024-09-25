#!/bin/bash
update_system() {
echo -e "- Update system"
apt update && sudo apt upgrade -y 
echo -e "Install soft"
apt install -y ifupdown net-tools resolvconf
}
grub_configure() {
cp /etc/default/grub /etc/default/grub.bak
sed 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="netcfg\/do_not_use_netplan=true"/g' /etc/default/grub
update-grub
}

setting_network()  {
echo -e "configure network dhcp"
read -p "- name interfaces:" iner_name
cat << EOF >> /etc/network/interfaces
auto lo
iface lo inet loopback
auto $iner_name
iface $iner_name inet dhcp
EOF
}
netplans_del() {
echo -e "stopping service"
systemctl stop systemd-networkd.socket systemd-networkd networkd-dispatcher systemd-networkd-wait-online systemd-resolved
echo "disable service"
systemctl disable systemd-networkd.socket systemd-networkd networkd-dispatcher systemd-networkd-wait-online systemd-resolved
echo "mask service"
systemctl mask systemd-networkd.socket systemd-networkd networkd-dispatcher systemd-networkd-wait-online systemd-resolved
echo "purge netplans"
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
      update_system
      grub_configure
      setting_network
      netplans_del 
      ;;
    n|N) echo "Жаль,и пока!"
        exit 0
        ;;
    *) echo "Хм, вынужден закончить!"
      exit 0   
      ;;
esac
