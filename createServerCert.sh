#!/bin/bash
openssl genrsa -aes256 -out key-stuff/server.key 4096
openssl req -new -key rootCA.key -sha3-256 -out key-stuff/server.csr -config key-stuff/server.cnf
openssl x509 -req -in key-stuff/server.csr -CA key-stuff/rootCA.pem -CAkey key-stuff/rootCA.key -CAcreateserial -out key-stuff/server.crt -days 365 -sha3-256 -extfile key-stuff/v3.ext

echo 0