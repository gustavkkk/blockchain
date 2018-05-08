### run daemon
  - test mode(standalone mode)
     
        $ ./vacd -a --start --rpc
  - real mode(default)
  
        $ ./vacd --start --rpc
### Test
  - CLI
  
        $ ./vacd account_info rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh
        
  - Test Accounts
      
        Mother: rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh-snoPBrXtMeMyMHUVTgbuqAfg1SUTb
        Child1: rK682RfVDtxUTAPZQvaQNabeRLB2qFMR6p-shovEbEjYXtQadisLGgvzai7yru8h
        Child2: rUfSWLedmvBJTSdj4xB9GgbGX5LuayXVkt-snHkm3DxxjMgcVjzbjd3X23bfRQNZ
      
  - url
  
        127.0.0.0:9091/vac/createwallet?passphrase=123456
        127.0.0.0:9091/vac/sendxrp?fromaddr=rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh&fromsecret=snoPBrXtMeMyMHUVTgbuqAfg1SUTb&toaddr=rK682RfVDtxUTAPZQvaQNabeRLB2qFMR6p&value=1000
