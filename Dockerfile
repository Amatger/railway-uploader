FROM alpine:latest
COPY myuser.session /tmp/myuser.session
ENTRYPOINT ["/bin/sh","-c","cp /tmp/myuser.session /data/myuser.session && echo '✅ copied to /data' && sleep 3600"]
