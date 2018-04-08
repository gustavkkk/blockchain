### create repo

    $ mkdir /svn
    $ svnadmin create /svn/ripple
    $ chown -R apache:apache /svn/ripple
    $ vi /svn/ripple/svnserve.conf
    [general]
    anon-access = none
    auth-access = write
    password-db = passwd
    authz-db = authz
    
    create usr&passwd pair
    $ htpasswd -c /svn/ripple/conf/passwd jay
    $ vim /svn/ripple/conf/authz
    [repo1:/]
    kojy = r
    frank = rw
    * =
    
    $ vi /etc/httpd/conf/httpd.conf
    [.....]
    Include conf.d/*.conf
    [.....]
    
    
### deploy repo

    $ svn up
    $ svn commit -m add-new
    $ svn add xxx.py
    $ svn mkdir btc
   
