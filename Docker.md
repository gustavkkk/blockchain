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

### Usages

###
