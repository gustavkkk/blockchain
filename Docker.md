### [Get Started](https://docs.docker.com/get-started/#containers-and-virtual-machines)
    [Guide](http://sssslide.com/www.slideshare.net/larrycai/learn-docker-in-90-minutes)
    
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

### [Commands](https://docs.docker.com/engine/reference/commandline/docker/)

### [Differenciate]
    [Container vs Image](https://github.com/wsargent/docker-cheat-sheet#difference-between-loading-a-saved-image-and-importing-an-exported-container-as-an-image)
    include history or not
    

### [Usages](https://github.com/wsargent/docker-cheat-sheet)
    LifeCycle
    pull
    run
    exec
    start
    commit
    load/save
    import/export
    push
    
    [Status]
    container
    sudo docker stats --all
    sudo docker ps
    image
    sudo docker images
   
    [Create-Ex](https://www.techrepublic.com/article/how-to-create-a-docker-image-and-push-it-to-docker-hub/)
    ubuntu$ docker pull ubuntu
    ubuntu$ docker run --name test-lamp-server -it ubuntu:latest bash
    root$ apt-get update
    root$ apt-get install lamp-server^
    ubuntu$ docker commit -m "Added LAMP Server" -a "NAME" test-lamp-server frank0125/test-lamp-server:latest
    
    [PULL & PUSH]
    ubuntu$ docker pull ubuntu
    ubuntu$ docker push frank0125/test-lamp-server
    
    [Access Hub/Upload Image]
    ubuntu$ docker login
    ubuntu$ docker push frank0125/test-lamp-server
    ubuntu$ docker logout
    
    [Run-Image]
    ubuntu$ docker images
    ubuntu$ docker run
    
    [Execute](https://docs.docker.com/engine/reference/commandline/exec/#extended-description)
    ubuntu$ docker run -i -t ubuntu /bin/bash
    ubuntu$ docker run --name ubuntu_bash --rm -i -t ubuntu bash
    ubuntu$ docker exec -d ubuntu_bash touch /tmp/execWorks
    ubuntu$ docker exec -it ubuntu_bash bash
    ubuntu$ docker exec -it -e VAR=1 ubuntu_bash bash
    ubuntu$ docker exec -it ubuntu_bash pwd
    ubuntu$ docker exec -it -w /root ubuntu_bash pwd
    ubuntu$ sudo docker exec ubuntu_bash ls
    
    [Load & Save]
    ubuntu$ docker save ubuntu > ubuntu.tar.gz
    ubuntu$ docker load < ubuntu.tar.gz
    
    [Import & Export]
    ubuntu$ cat my_container.tar.gz | docker import - my_image:my_tag
    ubuntu$ docker export my_container | gzip > my_container.tar.gz
    
    [Start & Stop]
    start,stop,restart,pause,unpause,wait,kill,attach
    ubuntu$ sudo docker start test-lamp-server
    ubuntu$ sudo docker exec test-lamp-server ls
    ubuntu$ sudo docker stop test-lamp-server

### Case for Exchange
    initial
    ubuntu@ sudo docker pull ubuntu:16.04
    ubuntu@ sudo docker run --name exchange-server -it ubuntu:16.04 bash
    root@ apt update
    ubuntu$ sudo docker commit -m "Added Exchange Server" -a "NAME" exchange-server frank0125/exchange-server:latest
    
    run without save
    ubuntu@ sudo docker run -it frank0125/exchange-server bash
    
    run with save
    ubuntu@ sudo docker start exchange-server
    ubuntu@ sudo docker ps
    ubuntu@ sudo docker exec -it exchange-server bash
    ubuntu@ sudo docker stop exchange-server
    ubuntu@ sudo docker ps

    install pkgs
    root@ apt update
    root@ apt install python python-pip vim net-tools
