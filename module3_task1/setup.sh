#!/bin/bash
sudo apt install golang-go


# binary will be $(go env GOPATH)/bin/golangci-lint
sudo go get -u github.com/golangci/golangci-lint/cmd/golangci-lint@v1.44.0


sudo wget https://github.com/gohugoio/hugo/releases/download/v0.87.0/hugo_0.87.0_Linux-64bit.deb
sudo dpkg -i hugo_0.87.0_Linux-64bit.deb
sudo rm hugo_0.87.0_Linux-64bit.deb

sleep 5
