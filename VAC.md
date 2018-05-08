### run daemon
  - test mode(standalone mode)
     
        $ ./vacd -a --start --rpc
  - real mode(default)
  
        $ ./vacd --start --rpc
### Test

  - Test Accounts
      
        Mother: rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh-snoPBrXtMeMyMHUVTgbuqAfg1SUTb
        Child1: rK682RfVDtxUTAPZQvaQNabeRLB2qFMR6p-shovEbEjYXtQadisLGgvzai7yru8h
        Child2: rUfSWLedmvBJTSdj4xB9GgbGX5LuayXVkt-snHkm3DxxjMgcVjzbjd3X23bfRQNZ
        
  - Using CLI
  
        $ ./vacd wallet_propose 123456
        $ ./vacd account_info rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh
        $ ./vacd submit snoPBrXtMeMyMHUVTgbuqAfg1SUTb '{"Account": "rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh", "Amount": "10000000000000", "Destination": "rUfSWLedmvBJTSdj4xB9GgbGX5LuayXVkt", "TransactionType": "Payment", "Fee": "1000000"}'
             
  - Using URL
  
        127.0.0.0:9091/vac/getbalance?account=rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh
        127.0.0.0:9091/vac/createwallet?passphrase=123456
        127.0.0.0:9091/vac/sendxrp?fromaddr=rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh&fromsecret=snoPBrXtMeMyMHUVTgbuqAfg1SUTb&toaddr=rK682RfVDtxUTAPZQvaQNabeRLB2qFMR6p&value=1000
