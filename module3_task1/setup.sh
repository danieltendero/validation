#!/bin/bash
wget https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz
sudo tar -xzf go1.8.linux-amd64.tar.gz -C /usr/local
export PATH=$PATH:/usr/local/go/bin
rm go1.8.linux-amd64.tar.gz


sudo wget https://github.com/gohugoio/hugo/releases/download/v0.87.0/hugo_0.87.0_Linux-64bit.deb
sudo dpkg -i hugo_0.87.0_Linux-64bit.deb
sudo rm hugo_0.87.0_Linux-64bit.deb


# binary will be $(go env GOPATH)/bin/golangci-lint
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.44.0

golangci-lint --version

sleep 5
