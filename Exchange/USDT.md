
[USDT is a cryptocurrency asset issued on the Bitcoin blockchain via the Omni Layer Protocol. Each USDT unit is backed by a U.S Dollar held in the reserves of the Tether Limited and can be redeemed through the Tether Platform. USDT can be transferred, stored, spent, just like bitcoins or any other cryptocurrency, users can transact and store tethers with any Omni Layer enabled wallet like Ambisafe, Holy Transaction or Omni Wallet.](https://www.cryptocompare.com/coins/guides/what-is-usdt-and-how-to-use-it/)

# [Basic Info](https://tether.to) 
    no sign up discovered, 2019.03.02
### Keywords
    Bitcoin, Omni Layer Protocol, Omni Layer enabled wallet, Omni Wallet
    
### Analysis - Omni protocol layer
   * [x] [github](https://github.com/OmniLayer/omnicore)

### [Install](https://blog.csdn.net/C_jian/article/details/85337467)
    wget https://github.com/OmniLayer/omnicore/releases/download/v0.3.1/omnicore-0.3.1-x86_64-linux-gnu.tar.gz
    tar -zvxf omnicore-0.3.1-x86_64-linux-gnu.tar.gz 
    sudo install -m 0755 -o root -g root -t /usr/local/bin ./omnicore-0.3.1/bin/*
### [rpc api](https://github.com/OmniLayer/omnicore/blob/master/src/omnicore/doc/rpc-api.md)    

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
    rpcuser=omni
    rpcpassword=omni2018
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
    $ ./omnicored -daemon -conf=/root/.bitcoin/bitcoin-test.conf -datadir=/data2 -testnet
    
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
    
### [curl](https://blog.csdn.net/C_jian/article/details/85337467)
    $ curl --user omni --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaccounts", "params": [] }' -H 'content-type: text/plain;' http://0.0.0.0:18332/
    $ curl --user omni --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "omni_getbalance", "params": ["n1Axxy3WGwFci1GJffwdY55dRem92GKXAm", 1] }' -H 'content-type: text/plain;' http://0.0.0.0:18332/
    $ curl --user omni --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnewaddress", "params": ["test"] }' -H 'content-type: text/plain;' http://0.0.0.0:18332/
    
# [Reference](https://www.jianshu.com/p/bd573e2df746)
