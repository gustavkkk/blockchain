### API
  
   python
   
    from jingtumsdk.account import Wallet, FinGate, Amount, Memo
    # TEST ACCOUNT
    fingate_secret = "snoPBjXtMeMyMHUVTgbuqAfg1SUTb"
    fingate_address = "jHb9CJAWyB4jr91VRWn96DkukG4bwdtyTh"
    fingate_issuer = "jBciDE8Q3uJjf111VeiUNM775AMKHEbBLS"
    # INIT FINGATE
    fingate = FinGate()
    fingate.setAccount(fingate_secret, fingate_address)
    fingate.setMode(FinGate.DEVLOPMENT)
    # Create Wallet
    my_wallet = fingate.createWallet()
    fingate.setActivateAmount(25)
    ret = fingate.activeWallet(my_wallet.address)
    wallet =  Wallet(my_wallet.secret,my_wallet.address)
    # GetBalance
    bc = wallet.getBalance();
    bc = wallet.getBalance('SWT');
    bc = wallet.getBalance('USD');
    bc = wallet.getBalance('USD', 'jMcCACcfG37xHy7.....FCk7tT');
    
    
