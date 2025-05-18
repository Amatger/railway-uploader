FROM alpine:latest
COPY myuser.session /tmp/myuser.session
ENTRYPOINT ["/bin/sh","-c","echo '--- /data before ---'; ls -l /data; \
cp /tmp/myuser.session /data/myuser.session && echo '✅ copied'; \
ls -l /data; echo '--- /data after ---'; sleep 3600"]
