ENTRYPOINT ["/bin/sh","-c","echo 'CONTENT of /data:'; ls -l /data; cp /tmp/myuser.session /data/myuser.session; echo '✅ copied'; ls -l /data; sleep 3600"]
