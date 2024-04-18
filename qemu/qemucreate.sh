#!/bin/bash
#==================================================
# Name:Qemu-img create
# Autor:H0lik@linux
# Github:github.com/h0lik
# Date:17.04.2024
#==================================================
dir= #Тут впишите свой путь куда будут сохраняться виртуальные диски!

echo -e "Hello \e[32m $USER \e[0m ,Creating a virtual machine disk?"
read -p "-Format virtual disk:" Hard
read -p "-Name virtual disk:" Name
read -p "-Size virtual disk:" Size
sudo qemu-img create -f $Hard $dir$Name.$Hard $Size
echo -e "Virtual disk:$name format:$Hard Size:$Size >>>>>>>  \e[32m Created! \e[0m "
