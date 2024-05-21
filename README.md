# My shell Scripts

## Qemu

### [x] qemu-img create
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
cd ~/.bin # Если каталога не существует то создайте его.
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

### Download iso scripts
Скрипт для скачивания iso образов дистрибутивов 
В скрипте собраны минимальные дистрибутивы для сетевых установок
#### Список дистрибутиво!
* Rockly Linux 8/9
* Alpine Linux Virtual system 
* Alma Linux 8/9
* Fedora Server 39
* Debian 11/12
* Ubuntu Server 23/22lts/20
#### Install Scripts
````bash
cd ~/.bin # Если у вас отсуствует каталог .bin то создайте его mkdir ~/.bin 
mkdir isohub
wget  https://raw.githubusercontent.com/h0lik/scripts/main/isohub/isohub.sh
chmod +x isohub.sh 
echo 'alias isohub="/home/$USER/.bin/isohub/./isohub.sh"' >> ~/.bashrc && source ~/.bashrc
cat ~/.bashrc | grep isohub 
````
***

 
