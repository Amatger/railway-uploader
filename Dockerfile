FROM alpine:latest

# кладём файл в слой образа
COPY myuser.session /tmp/myuser.session

# при запуске контейнера — выводим содержимое /data,
# копируем файл в том и засыпаем
ENTRYPOINT ["/bin/sh","-c","echo '--- CONTENT of /data before ---'; ls -l /data; cp /tmp/myuser.session /data/myuser.session; echo '✅ copied'; ls -l /data; echo '--- CONTENT after ---'; sleep 3600"]
