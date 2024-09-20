#!/bin/bash 

echo -e "###########################################"
echo -e "# hello \e[31m $USER \e[0m "
echo -e "# The script performs a system update"
echo -e "# Installing the server administration software"
echo -e "# It also adds a user"
echo -e "# And restarts the system"
echo -e "###########################################"
sleep 2
echo -e "\e[32m Update System OS \e[0m"
sudo dnf update -y
