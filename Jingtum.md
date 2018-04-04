### API
  
   python
   
    from jingtumsdk.account import Wallet, FinGate, Amount, Memo
    # init
    fingate = FinGate()
    fingate.setMode(FinGate.DEVLOPMENT)
    # create wallet
    my_wallet = fingate.createWallet()
    #
    fingate.setAccount(my_wallet.secret, my_wallet.account)
    
    
