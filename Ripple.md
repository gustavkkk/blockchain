### APIs

    [rippleapi](https://ripple.com/build/rippleapi/#boilerplate)
    [rippled-apis](https://ripple.com/build/rippled-apis/)
    [rippled-build-ubuntu](https://ripple.com/build/build-run-rippled-ubuntu/)
    [rippled-setup](https://ripple.com/build/rippled-setup)
    [data-ripple](https://data.ripple.com/)
    [data-api-v2](https://ripple.com/build/data-api-v2/)

### [Setup](https://ripple.com/build/rippled-setup)

    

### JS

    Install NodeJS
    $ curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
    $ sudo apt-get install -y nodejs
    Install yarn
    $ sudo npm install -g yarnpkg
    $ sudo apt-get install -y libprotobuf-dev
    
# TEST

### Ref

   []()

   [Command_line_agent_for_sending_RPC_commands](https://wiki.ripple.com/Rippled#Command_line_agent_for_sending_RPC_commands)

   Root Account-rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh
    
    ./rippled account_info rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh

### [CLI](https://wiki.ripple.com/Sending_RPC_Commands)

    $ ./rippled -h
    
    standalone-testmode
    #$ ./rippled -a --start
    normal mode
    #$ ./rippled
    working mode
    $ ./rippled --start
    local mode
    #$ ./rippled --load
    net
    #$ ./rippled --net
    
    ./rippled -v account_info rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh
    ./rippled -q sign snoPBrXtMeMyMHUVTgbuqAfg1SUTb '{"TransactionType":"Payment",  "Account":"rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh","Amount":"200000000","Destination":"r3kmLJN5D28dHuH8vZNUZpMC43pEHpaocV" }'
    ./rippled -v sign snoPBrXtMeMyMHUVTgbuqAfg1SUTb '{"TransactionType":"Payment",  "Account":"rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh","Amount":"200000000" }'
    ./rippled account_tx r9DsFqNqLaMs5yBmhzUK7G9pCTSb9w3xoj 1 100000 100 count
    
### RPC
    
    https://data.ripple.com/v2/accounts/rHiNp12QB1PCpTXgjvyEn6xLE4st2Emciw/balances

