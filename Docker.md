### [Get Started](https://docs.docker.com/get-started/#containers-and-virtual-machines)

### [Documentation](https://docs.docker.com/)

### [Install-Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

    $ sudo apt-get update
    $ sudo apt-get install \
           apt-transport-https \
           ca-certificates \
           curl \
           software-properties-common
    $ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    $ sudo apt-key fingerprint 0EBFCD88
    $ sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"
    $ sudo apt-get update
    $ sudo apt-get install docker-ce
    Install specific version
    $ apt-cache madison docker-ce
    docker-ce | 18.03.0~ce-0~ubuntu | https://download.docker.com/linux/ubuntu xenial/stable amd64 Packages
    $ sudo apt-get install docker-ce=<VERSION>
    $ sudo docker run hello-world
    
    Install from a package
    $ sudo apt-get install docker-ce=<VERSION>
    $ sudo docker run hello-world
    
### Uninstall Docker CE 

    $ sudo apt-get purge docker-ce
    $ sudo rm -rf /var/lib/docker

### [docker-compose](https://docs.docker.com/compose/)-[install](https://docs.docker.com/compose/install/)

    install
    $ sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
    $ sudo chmod +x /usr/local/bin/docker-compose
    $ docker-compose --version
    
    upgrade
    $ docker-compose migrate-to-labels
    $ docker container rm -f -v myapp_web_1 myapp_db_1 ...
    
    uninstall
    $ sudo rm /usr/local/bin/docker-compose
    $ pip uninstall docker-compose

### Usages-Basics

    $ docker --version
    $ docker info
    $ docker image ls
    $ docker container --help
    $ docker container ls --all
    $ docker run
### [Usages](https://github.com/wsargent/docker-cheat-sheet)
   
    Create Image/Container
    docker pull ubuntu
    docker run --name hello-world -it ubuntu:latest bash
    apt-get update
    apt-get install hello-world^

    Access Hub
    $ docker login
    $ docker logout
