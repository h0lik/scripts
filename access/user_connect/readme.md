Мониторинг подлкючения пользователей к LINUX системах 
создаем файл к примеру /root/.fullaccess
Со следующим содержимом 
```bash
#!/bin/bash
if [ -z "$ROOT_LOGGED" ]; then
    export ROOT_LOGGED=true
TOKEN=""
CHAT_ID=""
IPUSER=$(echo $SSH_CLIENT | awk '{ print $1}')
MESSAGE="$(whoami) IP:$IPUSER Logged in  $HOSTNAME"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSAGE" > /dev/null 2>&1
fi
```
и прописываем его в /etc/bash.bashrc

