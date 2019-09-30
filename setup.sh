#!/bin/bash

# remove stuff
systemctl stop program-manager-testing.socket
systemctl stop program-manager-testing.service
rm /run/program-manager-testing.sk
# cop stuff
cp program-manager-testing.service /etc/systemd/system/
cp program-manager-testing.socket /etc/systemd/system/
cp nginx-config /etc/nginx/servers/program-manager-testing
# reload restard daemons and socket
systemctl daemon-reload
systemctl start program-manager-testing.socket
nginx -s reload
