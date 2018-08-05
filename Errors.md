### [IOError: [Errno 24] Too many open files](https://medium.com/hbsmith/too-many-open-files-%EC%97%90%EB%9F%AC-%EB%8C%80%EC%9D%91%EB%B2%95-9b388aea4d4e)

    $ ulimit -a
    $ unlimit -n 50000
    
    /etc/sysctl.conf
    net.core.somaxconn=131072
    fs.file-max=131072
    
    sudo sysctl -p
    
    /usr/include/linux/limits.h
    NR_OPEN = 65536
    
    /etc/security/limits.conf
    *                soft    nofile          65535
    *                hard    nofile          65535
    
    $ sudo apt install supervisor
    $ supervisorctl restart all
    
    cat /etc/security/limits.d/custom.conf
    * hard nofile 550000
    * soft nofile 550000
    
    $ vi /etc/sysctl.conf
    fs.file-max = 100000
    $ sysctl -p
    
    $ cat /proc/sys/fs/file-max
    $ sudo echo 200000 > /proc/sys/fs/file-max
    
    $ vim  /etc/security/limits.conf
    * hard nofile 500000
    * soft nofile 500000
    root hard nofile 500000
    root soft nofile 500000
    
    $ cat /proc/sys/fs/file-max
    
    $ ps -ef | grep foobar
    1234
    $ prlimit --nofile --output RESOURCE,SOFT,HARD --pid 1234
    $ prlimit --nofile=500000 --pid=1234
