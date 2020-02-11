#!/bin/bash

# remove stuff
systemctl stop program-editor-testing.socket
systemctl stop program-editor-testing.service
rm /run/program-editor-testing.sk
# cop stuff
cp program-editor-testing.service /etc/systemd/system/
cp program-editor-testing.socket /etc/systemd/system/
cp nginx-config /etc/nginx/servers/program-editor-testing
# reload restard daemons and socket
systemctl daemon-reload
systemctl start program-editor-testing.socket
nginx -s reload
