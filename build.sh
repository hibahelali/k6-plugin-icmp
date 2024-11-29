#!/bin/bash

# This fetches the k6-plugin-icmp from GitHub and
# builds it in your $GOPATH/src/github.com/hibahelali/k6-plugin-icmp

# Assurez-vous d'être dans le bon répertoire
cd $GOPATH/src/github.com/hibahelali/k6-plugin-icmp || exit

# Construire le plugin avec le nouveau chemin d'importation
go build -buildmode=plugin -ldflags="-s -w" -o icmp.so go.k6.io/k6/plugin

