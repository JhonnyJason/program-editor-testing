#!/bin/bash
openssl genrsa -aes256 -out key-stuff/rootCA.key 4096
openssl req -x509 -new -key rootCA.key -sha3-256 -days 730 -out key-stuff/rootCA.pem -config key-stuff/rootCA.cnf

echo 0