Понадобилось оповещение о успешном подключение ROOT юзера в linux системах! \
Вот собственно и скрипт, первое что надо сделать это в директории **/root** создать файл **.bashaccess**
```bash
touch .bashaccess
vi .bashaccess
```
И добавляем в него следующее.
```bash
#!/bin/bash
if [ -z "$ROOT_LOGGED" ]; then
    export ROOT_LOGGED=true
TOKEN="Тут ваш токен бота" 
CHAT_ID="Тут ваш айди чата"
MESSAGE="Access ROOT user $HOSTNAME"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSAGE" > /dev/null 2>&1
fi
```

Далее в файл **.bashrc**
```bash
vi .bashrc
и прописываем в самое начало
source /root/.bashaccess
```
На помню как выйти из VI/VIM
```bash
:wq!
```
и перечитываем конфиг
```bash
source ~/.bashrc
```
