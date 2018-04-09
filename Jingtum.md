### API
  
   python
   
    from jingtumsdk.account import Wallet, FinGate, Amount, Memo
    # init
    fingate = FinGate()
    fingate.setAccount("snqFcH......pQYzxEEbW");
    fingate.setMode(FinGate.DEVLOPMENT)
    # create wallet
    my_wallet = fingate.createWallet()
    #
    fingate.setAccount(my_wallet.secret, my_wallet.address)
    fingate.setActivateAmount(25)
    ret = fingate.activeWallet(my_wallet.address)
    #
    wallet =  Wallet(my_wallet.secret,my_wallet.address)
    #
    bc = my_wallet.getBalance();
    bc = my_wallet.getBalance('SWT');
    bc = my_wallet.getBalance('USD');
    bc = my_wallet.getBalance('USD', 'jMcCACcfG37xHy7.....FCk7tT');
    
    
