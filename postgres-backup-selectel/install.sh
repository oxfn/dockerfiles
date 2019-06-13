#! /bin/sh

# exit if a command fails
set -e


apk update

# install pg_dump, curl
apk add postgresql-client curl

# install go-cron
curl -L --insecure https://github.com/odise/go-cron/releases/download/v0.0.6/go-cron-linux.gz | zcat > /usr/local/bin/go-cron
chmod u+x /usr/local/bin/go-cron

# cleanup
rm -rf /var/cache/apk/*
