FROM alpine:latest

# 1. Кладём файл во временную директорию образа
COPY myuser.session /tmp/myuser.session

# 2. При запуске контейнера копируем его в примонтированный том /data
ENTRYPOINT ["/bin/sh", "-c", "cp /tmp/myuser.session /data/myuser.session && echo 'file copied' && sleep 3600"]
