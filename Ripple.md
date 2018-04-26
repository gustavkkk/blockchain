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
    {"result":"success","ledger_index":38225577,"limit":200,"balances":[{"currency":"XRP","value":"23.103172"}]}
    https://data.ripple.com/v2/accounts/rB31eWvkfKBAu6FDD9zgnzT4RwSfXGcqPm
    {"result":"success","account_data":{"account":"rB31eWvkfKBAu6FDD9zgnzT4RwSfXGcqPm","parent":"r3kmLJN5D28dHuH8vZNUZpMC43pEHpaocV","initial_balance":"10000.0","inception":"2013-01-25T04:33:10Z","ledger_index":137268,"tx_hash":"87D89156AA7C24085E731B43A032B017567F53FBBB976464A69AB546E9FFDBBC"}}
    http://data.ripple.com/v2/accounts?parent=r3kmLJN5D28dHuH8vZNUZpMC43pEHpaocV{"result":"success","count":166,"accounts":[{"account":"rLQBHVhFnaC5gLEkgr6HgBJJ3bgeZHg9cj","parent":"r3kmLJN5D28dHuH8vZNUZpMC43pEHpaocV","initial_balance":"10000.0","inception":"2013-01-02T06:43:20Z","ledger_index":38129,"tx_hash":"3B1A4E1C9BB6A7208EB146BCDB86ECEA6068ED01466D933528CA2B4C64F753EF"},{"account":"rpH7MKR1WrWieYxtid4JxCiSE1273PGJ43","parent":"r3kmLJN5D28dHuH8vZNUZpMC43pEHpaocV","initial_balance":"10000.0","inception":"2013-01-04T02:55:20Z","ledger_index":46831,"tx_hash":"C5113D6E615B486E373C820B1D04FD32A3153AA53C2C6D6068CBE6481ABAC9C5"},{"account":"rUVgWx3oBA3RcZso8vHPQZ138UHyVcX3eT","parent":"r3kmLJN5D28dHuH8vZNUZpMC43pEHpaocV","initial_balance":"10000.0","inception":"2013-01-05T01:08:30Z","ledger_index":50448,"tx_hash":"4F87E96BAE7F07B17D37F5038DD71DB84670DCB1376D5950C90038DC548D6AAA"},]}
    

