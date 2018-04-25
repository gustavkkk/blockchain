### [document](http://developer.jingtum.com/)

### [API](https://github.com/jingtum/jingtum-python-sdk), [ex](https://github.com/jingtum/jingtum-examples) :  This code is old. jingtum-python-sdk was developed as api1.0 in 2017, then never updated. It is nothing but a capsule of api. so you download code, modifiy it, then use. That's it.
  
   python
   
    #Account1: jE6Gpf1uKXe8Ka6quJwAs4UwuNJoFUKroJ-ssCHGNRyddGnysXRwohdu2GY51N5k
    #Account2: j41YVGVcaCpN9b2d4EnuLG9SNNXYf22FB3-ssNzw8R7m5LQ8zpe68vd2Nwg7jcd6

    from jingtumsdk.account import Wallet, FinGate, Amount, Memo
    
    # TEST ACCOUNT
    fingate_secret = "snoPBjXtMeMyMHUVTgbuqAfg1SUTb"
    fingate_address = "jHb9CJAWyB4jr91VRWn96DkukG4bwdtyTh"
    fingate_issuer = "jBciDE8Q3uJjf111VeiUNM775AMKHEbBLS"
    
    src_addr = "jE6Gpf1uKXe8Ka6quJwAs4UwuNJoFUKroJ"
    src_secret = "ssCHGNRyddGnysXRwohdu2GY51N5k"
    dest_addr = "j41YVGVcaCpN9b2d4EnuLG9SNNXYf22FB3"
    
    # INIT FINGATE
    fingate = FinGate()
    fingate.setAccount(fingate_secret, fingate_address)
    fingate.setMode(FinGate.DEVLOPMENT)
    
    # Create Account(Wallet)
    my_wallet = fingate.createWallet()
    fingate.setActivateAmount(25)
    ret = fingate.activeWallet(my_wallet.address)
    wallet =  Wallet(my_wallet.secret,my_wallet.address)
    
    # Get Balance
    bc = wallet.getBalance();
    bc = wallet.getBalance('SWT');
    bc = wallet.getBalance('USD');
    bc = wallet.getBalance('USD', 'jMcCACcfG37xHy7.....FCk7tT');
    
    # Send Transaction
    from jingtumsdk.operation import PaymentOperation
    op = PaymentOperation(wallet)
    op.setDestAddress(dest_addr)
    amt = Amount(10, "CNY", fingate_issuer)
    op.setAmount(amt)
    op.setClientId("20611171957")
    op.setValidate(True)
    op.submit()#callback)
    
 [API2](http://developer.jingtum.com/api2_doc.html)   
 
    https://api.jingtum.com/v2/accounts/jLf34anobZPvVWPDHojsagxuMhA9WtW7fR/balances
 
    
