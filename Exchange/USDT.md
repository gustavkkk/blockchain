
[USDT is a cryptocurrency asset issued on the Bitcoin blockchain via the Omni Layer Protocol. Each USDT unit is backed by a U.S Dollar held in the reserves of the Tether Limited and can be redeemed through the Tether Platform. USDT can be transferred, stored, spent, just like bitcoins or any other cryptocurrency, users can transact and store tethers with any Omni Layer enabled wallet like Ambisafe, Holy Transaction or Omni Wallet.](https://www.cryptocompare.com/coins/guides/what-is-usdt-and-how-to-use-it/)

# [USDT](https://tether.to) 
    no sign up discovered, 2019.03.02
### Keywords
    Bitcoin, Omni Layer Protocol, Omni Layer enabled wallet, Omni Wallet
### Top Down 
   omni protocol layer
   - [spec](https://github.com/OmniLayer/spec)
   - omnicore
   * [x] [github](https://github.com/OmniLayer/omnicore)
   - webwallets
   * [ ] [Omni Wallet](https://www.cryptocompare.com/wallets/omniwallet/) - bad reputation
   * [ ] [Holy Transaction](https://www.cryptocompare.com/wallets/holy-transaction-wallet/) - so,so
### Botton Up
# [Test](https://www.jianshu.com/p/417c280b8f9f)
### omni.conf
    - realnet
    datadir=/data/usdt/
    dbcache=2048
    txindex=1
    rpcuser=btc
    rpcpassword=btc2018
    daemon=1
    server=1
    rest=1
    rpcbind=0.0.0.0:8332
    rpcallowip=0.0.0.0/0
    deprecatedrpc=accounts
    
    - testnet
    server=1  
    txindex=1 
    rpcuser=btc
    rpcpassword=btc2018
    rpcallowip=0.0.0.0/0
    rpcport=18332
    rpcbind=0.0.0.0:18332
    paytxfee=0.00001
    minrelaytxfee=0.00001
    datacarriersize=80
    logtimestamps=1
    omnidebug=tally  
    omnidebug=packets
    omnidebug=pending
    
### [fake usdt](https://coinfaucet.eu/en/btc-testnet/)
### start the daemon
    - realnet
    $ ./omnicored -daemon -conf=/root/.bitcoin/bitcoin.conf -datadir=/data0
    
    - testnet
    $ ./omnicored -conf=/root/.bitcoin/bitcoin-test.conf -datadir=/data2 -testnet
    
### test
    - realnet
    $ ./omnicore-cli getnewaddress mytest
    $ ./omnicore-cli getaddressesbyaccount "mytest"
    $ ./omnicore-cli getbalance "mytest4"
    $ ./omnicore-cli sendfrom "tabby" "1M72Sfpbz1BPpXFHz9m3CdqATR44Jvaydd" 0.01 6 "donation" "seans outpost"
    $ ./omnicore-cli sendfrom "" "1M72Sfpbz1BPpXFHz9m3CdqATR44Jvaydd" 0.01
    
    - testnet
    $ ./omnicore-cli -testnet getnewaddress mytest
    $ ./omnicore-cli -testnet getaddressesbyaccount "mytest"
    $ ./omnicore-cli -testnet getbalance "mytest4"
    $ ./omnicore-cli -testnet sendfrom "tabby" "1M72Sfpbz1BPpXFHz9m3CdqATR44Jvaydd" 0.01 6 "donation" "seans outpost"
    $ ./omnicore-cli -testnet sendfrom "" "1M72Sfpbz1BPpXFHz9m3CdqATR44Jvaydd" 0.01
    
# [Reference](https://www.jianshu.com/p/bd573e2df746)
