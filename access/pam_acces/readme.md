# Мониторинг подключений по SSH средставми PAM-SSHD

в **/etc/pam.d/sshd**

```bash 
session optional pam_exec.so seteuid path-file-script/.pam_access

```
```bash
chmod 100 path-file-script/.pam_access
```


