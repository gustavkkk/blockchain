### create repo

    $ sudo yum install subversion
    $ sudo yum install httpd
    
    $ mkdir /svn
    $ svnadmin create /svn/ripple
    $ chown -R apache:apache /svn/ripple
    $ vi /svn/ripple/svnserve.conf
    [general]
    anon-access = none
    auth-access = write
    password-db = passwd
    authz-db = authz
    realm = repos
    
    create usr&passwd pair
    $ htpasswd -c /svn/ripple/conf/passwd kojy
    $ vim /svn/ripple/conf/authz
    group1=jack,emily,frank,king,john,kevin
    [/]
    @group1 =rw
    *=r 
    
    $ vi /etc/httpd/conf/httpd.conf
    [.....]
    Include conf.d/*.conf
    [.....]
    
    $ cd /etc/httpd/conf.d/
    $ vi subversion.conf
    LoadModule dav_svn_module     modules/mod_dav_svn.so
    LoadModule authz_svn_module   modules/mod_authz_svn.so
    <Location /ripple>
    DAV svn
    SVNPath /svn/ripple
    Authtype Basic
    AuthName "ripple"
    AuthzSVNAccessFile /svn/ripple/conf/authz
    AuthUserFile /svn/ripple/conf/passwd
    Require valid-user
    </Location>
    
    $ service httpd restart
    $ systemctl restart httpd
    $ systemctl status httpd.service
    $ cat /var/log/httpd/*error*
    
    $ vim /etc/selinux/config
    SELINUX=enforcing修改为SELINUX=disable
    
    $ svnserve -d -r /svn/ripple
    
### deploy repo

    $ mkdir repo_client
    $ svn co http://192.168.43.101/svn/ripple repo_client
    $ svn import project svn://192.168.43.101/svn/ripple -m "initial import"
    $ svn up
    $ svn commit -m add-new
    $ svn add xxx.py
    $ svn mkdir btc
   
