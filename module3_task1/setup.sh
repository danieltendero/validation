#!/bin/bash
wget https://github.com/gohugoio/hugo/releases/download/v0.87.0/hugo_0.87.0_Linux-64bit.deb
dpkg -i hugo_0.87.0_Linux-64bit.deb
rm hugo_0.87.0_Linux-64bit.deb

# binary will be $(go env GOPATH)/bin/golangci-lint
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.44.0

sudo apt install golang-go

golangci-lint --version

sudo apt install golang-go


