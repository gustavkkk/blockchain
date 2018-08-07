### [IOError: [Errno 24] Too many open files](https://medium.com/hbsmith/too-many-open-files-%EC%97%90%EB%9F%AC-%EB%8C%80%EC%9D%91%EB%B2%95-9b388aea4d4e)

    $ ulimit -a
    $ ulimit -n 500000
    
    $ cat /proc/sys/fs/file-max
    
    $ vim  /etc/security/limits.conf
    * hard nofile 500000
    * soft nofile 500000
    root hard nofile 500000
    root soft nofile 500000    
      
    $ sudo sysctl -p
    
    #$ sudo cat /etc/sysctl.conf
    net.core.somaxconn=131072
    fs.file-max=131072
    
    #/usr/include/linux/limits.h
    #NR_OPEN = 65536
       
    #$ sudo apt install supervisor
    #$ supervisorctl restart all
    
    #$ vi /etc/sysctl.conf
    fs.file-max = 100000   
    
    $ ps -ef | grep python
    1234
    $ prlimit --nofile --output RESOURCE,SOFT,HARD --pid 1234
    $ prlimit --nofile=500000 --pid=1234
