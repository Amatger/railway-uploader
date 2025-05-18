FROM alpine:latest
COPY myuser.session /data/myuser.session
CMD ["sleep","3600"]
