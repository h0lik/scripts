# My shell Scripts

## Qemu

###  qemu-img create
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

###  qemu-install system
````bash 
Если не создан каталог .bin то его создаем 
mkdir ~/.bin
если каталог уже существует то 
cd ~/.bin 
cd qemu # Если каталог не существует то создайте его 
wget https://raw.githubusercontent.com/h0lik/scripts/main/qemu/qemuinstall.sh
chmod +x qemuinstall.sh
echo 'alias vminstall="/home/$USER/.bin/./qemuinstall.sh"' >> ~/.bashrc && source ~/.bashrc
````
По переменным в скрипте 
Изменить переменную $dir на ваш каталог, если вы использовали скрипт для создания виртуального диска то укажите тот путь до каталога который вы указали в скрипте qemucreate.sh

Переменная $iso если вы используете скрипт для скачивания дистрибутивов то укажите тот каталог который вы указали скрипту isohub.
Если у вас свое хранилище iso образов то укажите полный путь до него!

Пример 
iso=/home/user/iso/

