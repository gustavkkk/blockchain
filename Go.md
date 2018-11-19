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
    
    latest
    sudo add-apt-repository ppa:longsleep/golang-backports
    sudo apt-get update
    sudo apt-get install golang-go
    
    # environment variable
    $ export GOROOT=/usr/local/go
    $ export GOPATH=$HOME/Projects/Proj1
    $ export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
    
### [Hello-world](https://www.digitalocean.com/community/tutorials/how-to-install-go-1-6-on-ubuntu-16-04#step-1-%E2%80%94-installing-go)
