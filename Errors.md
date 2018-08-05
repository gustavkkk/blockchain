### IOError: [Errno 24] Too many open files:

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
    
