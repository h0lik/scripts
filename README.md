# My shell Scripts

## Qemu-img create

### Install 
 ```bash 
 mkdir ~/.bin
 cd ~/.bin
 mkdir qemu
 cd qemu
 wget https://raw.githubusercontent.com/h0lik/scripts/main/qemu/qemucreate.sh
 chmod +x qemucreate.sh
 echo 'alias vmcreate="/home/$USER/.bin/./qemucreate.sh"' >> ~/.bashrc && source ~/.bashrc
 ```
В скрипте изменить путь перменной dir на свой.
