docker run -d --name webhooks -p 5455:5000 -v $(pwd)/hooks:/src/hooks:rw -v $(pwd)/webhook-config.json:/app/config.json --privileged=true carlos-jenkins/python-github-webhooks
docker run -d -p 1234:80 --privileged=true -v /sys/fs/cgroup:/sys/fs/cgroup:ro local/nginx-webhook
