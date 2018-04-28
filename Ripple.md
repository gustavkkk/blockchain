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

   Root Account-rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh,snoPBrXtMeMyMHUVTgbuqAfg1SUTb
    
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
    rpc mode
    $ ./rippled --start --rpc --rpc_ip 127.0.0.1 --rpc_port 9800
    
    ./rippled -v account_info rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh
    ./rippled -q sign snoPBrXtMeMyMHUVTgbuqAfg1SUTb '{"TransactionType":"Payment",  "Account":"rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh","Amount":"200000000","Destination":"r3kmLJN5D28dHuH8vZNUZpMC43pEHpaocV" }'
    ./rippled -v sign snoPBrXtMeMyMHUVTgbuqAfg1SUTb '{"TransactionType":"Payment",  "Account":"rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh","Amount":"200000000" }'
    ./rippled account_tx r9DsFqNqLaMs5yBmhzUK7G9pCTSb9w3xoj 1 100000 100 count
    ./rippled submit snoPBrXtMeMyMHUVTgbuqAfg1SUTb '{"Account": "rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh", "Amount": "10000000000000", "Destination": "rUi66TRaq74BQEXh8cz2mgZKYRjG6j6QpV", "TransactionType": "Payment", "Fee": "1000000"}'
    ./rippled wallet_propose 12345
    
### RPC
    
    https://data.ripple.com/v2/accounts/rHiNp12QB1PCpTXgjvyEn6xLE4st2Emciw/balances
    {"result":"success","ledger_index":38225577,"limit":200,"balances":[{"currency":"XRP","value":"23.103172"}]}
    https://data.ripple.com/v2/accounts/rB31eWvkfKBAu6FDD9zgnzT4RwSfXGcqPm
    {"result":"success","account_data":{"account":"rB31eWvkfKBAu6FDD9zgnzT4RwSfXGcqPm","parent":"r3kmLJN5D28dHuH8vZNUZpMC43pEHpaocV","initial_balance":"10000.0","inception":"2013-01-25T04:33:10Z","ledger_index":137268,"tx_hash":"87D89156AA7C24085E731B43A032B017567F53FBBB976464A69AB546E9FFDBBC"}}
    http://data.ripple.com/v2/accounts?parent=r3kmLJN5D28dHuH8vZNUZpMC43pEHpaocV
    {"result":"success","count":166,"accounts":[{"account":"rLQBHVhFnaC5gLEkgr6HgBJJ3bgeZHg9cj","parent":"r3kmLJN5D28dHuH8vZNUZpMC43pEHpaocV","initial_balance":"10000.0","inception":"2013-01-02T06:43:20Z","ledger_index":38129,"tx_hash":"3B1A4E1C9BB6A7208EB146BCDB86ECEA6068ED01466D933528CA2B4C64F753EF"},{"account":"rpH7MKR1WrWieYxtid4JxCiSE1273PGJ43","parent":"r3kmLJN5D28dHuH8vZNUZpMC43pEHpaocV","initial_balance":"10000.0","inception":"2013-01-04T02:55:20Z","ledger_index":46831,"tx_hash":"C5113D6E615B486E373C820B1D04FD32A3153AA53C2C6D6068CBE6481ABAC9C5"},{"account":"rUVgWx3oBA3RcZso8vHPQZ138UHyVcX3eT","parent":"r3kmLJN5D28dHuH8vZNUZpMC43pEHpaocV","initial_balance":"10000.0","inception":"2013-01-05T01:08:30Z","ledger_index":50448,"tx_hash":"4F87E96BAE7F07B17D37F5038DD71DB84670DCB1376D5950C90038DC548D6AAA"},]}
    https://data.ripple.com/v2/accounts/rHiNp12QB1PCpTXgjvyEn6xLE4st2Emciw/transactions
    {"result":"success","count":20,"marker":"rHiNp12QB1PCpTXgjvyEn6xLE4st2Emciw|20180310144632|000037129626|00010","transactions":[{"hash":"EA629A34EF9862354F7E32281057CCE059800E44194A81CA0D2907D6769F121C","ledger_index":36961501,"date":"2018-03-03T09:19:50+00:00","tx":{"TransactionType":"Payment","Flags":2147483648,"Sequence":34279,"DestinationTag":123456,"Amount":"20000000","Fee":"1000","SigningPubKey":"02820C6D08111F0AE73F1ED0463C5B50D0E45BF3DB4A36B1FCF5B2C8FBD9BB3EE6","TxnSignature":"30440220040850DDACEE2EE14971E387850FE15534F092C211BF05490C69FBD87C0AF05802206A789D8E950EBAB3AADB1C68CE303368D3935FD97B17194E3654979D767B37EB","Account":"rfexLLNpC6dqyLagjV439EyvfqdYNHsWSH","Destination":"rHiNp12QB1PCpTXgjvyEn6xLE4st2Emciw"},"meta":{"TransactionIndex":8,"AffectedNodes":[{"CreatedNode":{"LedgerEntryType":"AccountRoot","LedgerIndex":"3D1ADD8BCC29D7843EE9DFAD662069A1C36CE1F2F193D738E6285D38C9EE13B2","NewFields":{"Sequence":1,"Balance":"20000000","Account":"rHiNp12QB1PCpTXgjvyEn6xLE4st2Emciw"}}},{"ModifiedNode":{"LedgerEntryType":"AccountRoot","PreviousTxnLgrSeq":36961405,"PreviousTxnID":"B5AF13D7DC8EF8AEB824EDE1132F40FDCDD154D555DC2FAE9E98366E5BF443C0","LedgerIndex":"74A1C26DB171CE0528DA9230BA0E567BB6023FD07C6544BAC97E953605760CB8","PreviousFields":{"Sequence":34279,"Balance":"5471371704"},"FinalFields":{"Flags":131072,"Sequence":34280,"OwnerCount":0,"Balance":"5451370704","Account":"rfexLLNpC6dqyLagjV439EyvfqdYNHsWSH"}}}],"TransactionResult":"tesSUCCESS","delivered_amount":"20000000"}},{"hash":"C496690E8D2698A18A4F0C416477292E0AC38517BD2BFFA639D6B76303A49D84","ledger_index":36962297,"date":"2018-03-03T10:09:40+00:00","tx":{"TransactionType":"Payment","Flags":2147483648,"Sequence":34286,"DestinationTag":234567,"Amount":"24900000","Fee":"1000","SigningPubKey":"02820C6D08111F0AE73F1ED0463C5B50D0E45BF3DB4A36B1FCF5B2C8FBD9BB3EE6","TxnSignature":"3044022009608370F94ED769AFD4D2DC9AB18F3C5E6CD5683151360FFBD1A5DC336A866D022009E49E1E356451BADC672EB69262EEEFE75D4C7A8F0ACDE7B22C94F2DA36BFAC","Account":"rfexLLNpC6dqyLagjV439EyvfqdYNHsWSH","Destination":"rHiNp12QB1PCpTXgjvyEn6xLE4st2Emciw"},"meta":{"TransactionIndex":14,"AffectedNodes":[{"ModifiedNode":{"LedgerEntryType":"AccountRoot","PreviousTxnLgrSeq":36961501,"PreviousTxnID":"EA629A34EF9862354F7E32281057CCE059800E44194A81CA0D2907D6769F121C","LedgerIndex":"3D1ADD8BCC29D7843EE9DFAD662069A1C36CE1F2F193D738E6285D38C9EE13B2","PreviousFields":{"Balance":"20000000"},"FinalFields":{"Flags":0,"Sequence":1,"OwnerCount":0,"Balance":"44900000","Account":"rHiNp12QB1PCpTXgjvyEn6xLE4st2Emciw"}}},{"ModifiedNode":{"LedgerEntryType":"AccountRoot","PreviousTxnLgrSeq":36962075,"PreviousTxnID":"42D5CED558F31C43CB47CFAEB84D2AE9E4C8F4BD16972A19768E7A72C73E592A","LedgerIndex":"74A1C26DB171CE0528DA9230BA0E567BB6023FD07C6544BAC97E953605760CB8","PreviousFields":{"Sequence":34286,"Balance":"368147268"},"FinalFields":{"Flags":131072,"Sequence":34287,"OwnerCount":0,"Balance":"343246268","Account":"rfexLLNpC6dqyLagjV439EyvfqdYNHsWSH"}}}],"TransactionResult":"tesSUCCESS","delivered_amount":"24900000"}}]}
    
### [TestNet](https://ripple.com/build/xrp-test-net/)
