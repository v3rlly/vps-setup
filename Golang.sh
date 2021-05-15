#!/usr/bin/bash
#
# Golang application development environment
# author: v3rlly

# version
v="1.16.4"

# Create GO local dir
mkdir -p "$HOME/go"


# download / extract
wget "https://golang.org/dl/go$v.linux-amd64.tar.gz"
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf "go$v.linux-amd64.tar.gz"
rm "go$v.linux-amd64.tar.gz"


# setup environment variables
echo '# Go environment'                          >> $HOME/.profile
echo 'export GOROOT=/usr/local/go'               >> $HOME/.profile
echo 'export GOPATH=$HOME/go'                    >> $HOME/.profile
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> $HOME/.profile
