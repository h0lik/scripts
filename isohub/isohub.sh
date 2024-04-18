#!/bin/bash
#==========================================
#Name:isohub
#Autor:h0lik@linux
#GitHub:github.com/h0lik
#Date:18.04.2024
#==========================================
pool= #Тут прописываем ваш путь к каталогу где будут храниться iso образы дистрибутивов!
green='\e[32m'
red='\e[31m'
blue='\e[34m'
clear='\e[0m'
ColorGreen() {
	echo -ne $green$1$clear
}
ColorBlue() {
	echo -ne $blue$1$clear
}
ColorRed() {
	echo -ne $red$1$clear
}
rockly8() {
	cd $pool
	sudo wget -O RocklyLinux-8.iso https://download.rockylinux.org/pub/rocky/8/isos/x86_64/Rocky-8.9-x86_64-minimal.iso
	echo -e "Downloaded RocklyLinux-8 \e[32m successfully! \e[0m"
	echo -e "SHA-256 \e[32m 06019fd7c4f956b2b0ed37393e81c577885e4ebd518add249769846711a09dc4 \e[0m"
}
rockly9() {
	cd $pool
	sudo wget -O RocklyLinux-9.iso https://download.rockylinux.org/pub/rocky/9/isos/x86_64/Rocky-9.3-x86_64-minimal.iso
	echo -e "Downloaded RocklyLinux-9 \e[32m successfully! \e[0m"
	echo -e "SHA-256 \e[32m eef8d26018f4fcc0dc101c468f65cbf588f2184900c556f243802e9698e56729 \e[0m"
}

alpine() {
	cd $pool
	sudo wget -O alpine-vs.iso https://dl-cdn.alpinelinux.org/alpine/v3.19/releases/x86_64/alpine-virt-3.19.1-x86_64.iso
	echo -e "Downloaded Alpine Linux 3.19 \e[32m successfully! \e[0m"
	echo -e "SHA-256 -> \e[32m 366317d854d77fc5db3b2fd774f5e1e5db0a7ac210614fd39ddb555b09dbb344 \e[0m "
}
alma8() {
	cd $pool
	sudo wget -O AlmaLinux-8.iso https://repo.almalinux.org/almalinux/8.9/isos/x86_64/AlmaLinux-8.9-x86_64-minimal.iso
	echo -e "Downloaded AlmaLinux-8 \e[32m successfully! \e[0m"
	echo -e "SHA-256 -> \e[32m fc866e1280e7b3f066b1380e831e33e7f3e78bc9db7bfc27744d569eadd974b3 \e[0m"
}
alma9() {
	cd $pool
	sudo wget -O AlmaLinux-9.iso https://repo.almalinux.org/almalinux/9.3/isos/x86_64/AlmaLinux-9.3-x86_64-minimal.iso
	echo -e "Downloaded AlmaLinux-9 \e[32m successfully! \e[0m"
	echo -e "SHA-256 \e[32m 6624593b53c89195f7b68b2070a280d47b4276a7cbc10d2216661bf35d4f442b \e[0m"
}
fedora39() {
	cd $pool
	sudo wget -O fedoraserver-39.iso https://download.fedoraproject.org/pub/fedora/linux/releases/39/Server/x86_64/iso/Fedora-Server-netinst-x86_64-39-1.5.iso
	echo -e "Downloaded Fedora-server-39 \e[32m successfully! \e[0m"
	echo -e "SHA-256 \e[32m https://download.fedoraproject.org/pub/fedora/linux/releases/39/Server/x86_64/iso/Fedora-Server-netinst-x86_64-39-1.5.iso \e[0m"
}
deb12() {
	cd $pool
	sudo wget -O debian12.iso https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-12.5.0-amd64-netinst.iso
	echo -e "Downloaded Debian-12 \e[32m successfully! \e[0m"
	echo -e "SHA-256 \e[32m    \3[0m"
}
deb11() {
	cd $pool
	sudo wget -O debian11.iso https://cdimage.debian.org/cdimage/archive/11.9.0/amd64/iso-cd/debian-11.9.0-amd64-netinst.iso
	echo -e "Downloaded Debian-11 \e[32m successfully! \e[0m"
	echo -e "SHA-256 \e[32m   \e[0m"
}
US22() {
	cd $pool
	sudo wget -O ubuntu-server22.04lts.iso https://releases.ubuntu.com/22.04.4/ubuntu-22.04.4-live-server-amd64.iso
	echo -e "Downloaded ubuntu-server-22.04.lts \e[32m successfully! \e[0m"
	echo -e "SHA-256 \e[32m   \e[0m"
}
US23() {
	cd $pool
	sudo wget -O ubuntu-server-23.10.iso https://releases.ubuntu.com/23.10/ubuntu-23.10-live-server-amd64.iso
	echo -e "Downloaded ubuntu-server-23.10 \e[32m successfully! \e[0m"
	echo -e "SHA-256 \e[32m \e[0m"
}
US20() {
	cd $pool
	sudo wget -O ubuntu-server-20.04.iso https://releases.ubuntu.com/20.04.6/ubuntu-20.04.6-live-server-amd64.iso
	echo -e "Downloaded ubuntu-server-20.04 \e[32m successfully! \e[0m"
	echo -e "SHA-256 \e[32m   \e[0m"
}
echo -e "Welcome \e[32m $USER \e[0m , in isohub the scripts!"
echo -ne "
ISOhub menu
$(ColorGreen '1)') RocklyLinux-8
$(ColorGreen '2)') RocklyLinux-9
$(ColorGreen '3)') AlpineLinux-VS
$(ColorGreen '4)') AlmaLinux-8
$(ColorGreen '5)') AlmaLinux-9
$(ColorGreen '6)') FedoraServer-39 
$(ColorGreen '7)') Debian-12
$(ColorGreen '8)') Debian-11
$(ColorGreen '9)') UbunutServer-23.10
$(ColorGreen '10)') UbunutServer-22.04.LTS
$(ColorGreen '11)') UbunutServer-20.04
$(ColorRed '0)') Exit 
$(ColorBlue 'Choose an option:') "
read isohub
case $isohub in
1) rockly8 ;;
2) rockly9 ;;
3) alpine ;;
4) alma8 ;;
5) alma9 ;;
6) fedora39 ;;
7) deb12 ;;
8) deb11 ;;
9) US23 ;;
10) US22 ;;
11) US20 ;;
0) exit 0 ;;
esac
