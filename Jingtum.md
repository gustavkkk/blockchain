### API
  
   python
   
    from jingtumsdk.account import Wallet, FinGate, Amount, Memo
    # init
    fingate_secret = xxxx
    fingate_address = xxxxxxxxx
    fingate = FinGate()
    fingate.setAccount(fingate_secret, fingate_address)
    fingate.setMode(FinGate.DEVLOPMENT)
    # create wallet
    my_wallet = fingate.createWallet()
    #
    fingate.setActivateAmount(25)
    ret = fingate.activeWallet(my_wallet.address)
    #
    wallet =  Wallet(my_wallet.secret,my_wallet.address)
    #
    bc = my_wallet.getBalance();
    bc = my_wallet.getBalance('SWT');
    bc = my_wallet.getBalance('USD');
    bc = my_wallet.getBalance('USD', 'jMcCACcfG37xHy7.....FCk7tT');
    
    
