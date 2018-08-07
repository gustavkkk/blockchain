### [IOError: [Errno 24] Too many open files](https://medium.com/hbsmith/too-many-open-files-%EC%97%90%EB%9F%AC-%EB%8C%80%EC%9D%91%EB%B2%95-9b388aea4d4e)
    
    RESTART MODE

    $ ulimit -a
    $ ulimit -n 500000
    
    $ cat /proc/sys/fs/file-max
    
    $ vim  /etc/security/limits.conf
    * hard nofile 500000
    * soft nofile 500000
    root hard nofile 500000
    root soft nofile 500000    
      
    $ sudo sysctl -p

    NO KILLING MODE
    
    $ ps -ef | grep python
    1234
    $ prlimit --nofile --output RESOURCE,SOFT,HARD --pid 1234
    $ prlimit --nofile=500000 --pid=1234
