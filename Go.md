### [Installation](https://tecadmin.net/install-go-on-ubuntu/)
    default
    $ sudo apt install golang-go
    $ go version
    $ go env     
    
    customized
    $ sudo apt-get update
    $ sudo apt-get -y upgrade
    $ wget https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz
    $ sudo tar -xvf go1.10.3.linux-amd64.tar.gz
    $ sudo mv go /usr/local
    $ export GOROOT=/usr/local/go
    $ export GOPATH=$HOME/Projects/Proj1
    $ export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
