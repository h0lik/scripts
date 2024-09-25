# Скрипты для работы с базовыми дистрибутивами Linux
## 1 - Скрипт для удаления netplan и установки ifupdown 
* Скрипт disable_netplan_ubuntu удаляет netplans и ставит ifupdown и прописываем настройки сети по dhcp
* Как использовать скрипт 
* Самое главное скрипт нужно запускать от root пользователя 
```bash
sudo -s 
wget https://raw.githubusercontent.com/h0lik/scripts/refs/heads/main/base-os/disable_netplans_ubuntu.sh
chmod +x disable_netplans_ubuntu.sh
./disable_netplans_ubuntu.sh
 ```
