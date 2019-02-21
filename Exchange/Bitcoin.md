### [wallet](https://bitcoin.org/en/download)

    [windows](https://bitcoin.org/en/download)
    [ubuntu](https://www.linuxbabe.com/ubuntu/install-bitcoin-core-wallet-ubuntu-16-04-16-10)
    
### [src](https://github.com/bitcoin/bitcoin)

    https://github.com/bitcoin/bitcoin
    https://github.com/bitpay/bitcoind-rpc
    https://github.com/jgarzik/python-bitcoinrpc
    
### [guide](https://github.com/bitcoin/bitcoin/tree/master/doc)

   [BerkeleyDB](https://github.com/bitcoin/bitcoin/blob/master/doc/build-openbsd.md)

### [rpc](https://en.bitcoin.it/wiki/API_reference_%28JSON-RPC%29)

### [releases](https://github.com/bitcoin/bitcoin/releases)

### build

   Ubuntu
   
    sudo apt-get install libdb++-dev
    sudo apt install libdb5.3++
    sudo apt-get install software-properties-common
    sudo add-apt-repository ppa:bitcoin/bitcoin
    #sudo apt install bitcoind bitcoin-qt
    
    sudo apt-get update
    sudo apt-get install libdb4.8-dev libdb4.8++-dev
    sudo apt-get install libminiupnpc-dev
    sudo apt-get install libzmq3-dev
    sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
    sudo apt-get install libqt4-dev libprotobuf-dev protobuf-compiler
    sudo apt-get install libqrencode-dev
    sudo apt-get install libboost-all-dev
    sudo apt-get install openssl
    sudo apt-get install libssl-dev
    sudo apt-get install libevent-dev
    sudo apt-get install autoconf
    sudo apt install git
    git clone https://github.com/bitcoin/bitcoin
    cd bitcoin
    ./autogen.sh
    ./configure
    make
    make install # optional

### API

    bitcoinditon
    bitcoind -rpcuser=root -rpcpassword=123456 -rpcport=8332 -datadir=/home/ubuntu/bitcoind/data --daemon
    bitcoin-cli help
    bitcoin-cli help | grep gettransaction
    bitcoin-cli gettransaction
    bitcoin-cli stop

### pyRPC
    curl --user btc[:btc2018] --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaccounts", "params": [6] }' -H 'content-type: text/plain;' http://192.168.10.199:8332/

    curl http://127.0.0.1:9090/btc/help
    curl http://127.0.0.1:9090/btc/getbalance -d "account=fun1"
    curl http://127.0.0.1:9090/btc/getaccount -d "address=fun1"

### Start RPC Service
    
    bitcoind -rpcuser=root -rpcpassword=123456 -rpcport=8332 -datadir=/home/ubuntu/bitcoind/data --daemon

### Test CLI

    bitcoin-cli help sendtoaddress
    bitcoin-cli help | grep send
    
    bitcoin-cli listaccounts
    bitcoin-cli listtransactions
    bitcoin-cli listtransactions | grep address
    
    bitcoin-cli sendtoaddress xxxxxxxxxxxxxxxxxxxx 0.1
    bitcoin-cli getreceivedfromaddress xxxxxxxxxxxxxxxxxxxxxxx
    
    bitcoin-cli getaddressinfo xxxxxxxxxxxxxxxxxxxxxxxxxx
    bitcoin-cli gettransaction xxxxxxxxxxxxxxxxxxxxxxx
    bitcoin-cli getnewaddress
    bitcoin-cli getaccountaddress xxxx
    bitcoin-cli getaccount xxxxxxxxxxxxxxxxxxxxxxx
    bitcoin-cli getbalance xxxxxxxxxxxxxxxxxxxxxxx
    
    bitcoin-cli dumpwallet wallet.dat
    
### Test RPC

    curl 127.0.0.1:9090/btc/listtransactions -d "account=json&count=10&from="
    curl 127.0.0.1:9090/btc/sendfrom -d "fromaccount=json&toaddress=3DVEBu1GUcby6BJQBcHjdro11CPb1VB6uk&amount=0.00001"
    curl 127.0.0.1:9090/btc/listaccounts -d "minconf="
    curl 127.0.0.1:9090/btc/getaccountaddress -d "account=json"
    curl 127.0.0.1:9090/btc/help
    
### Test Browser(POSTMAN)

    127.0.0.1:9090/btc/listtransactions?account=json&count=10&from=
    127.0.0.1:9090/btc/sendfrom?fromaccount=&toaddress=32Asg8GxveorKLkwF7fEC5zKUrR5oe2Rrz&amount=0.00001
    127.0.0.1:9090/btc/listaccounts?minconf=
    127.0.0.1:9090/btc/getaccountaddress?account=json
    127.0.0.1:9090/btc/help
    
### TEST

   [Check-Balance](https://www.blocktrail.com/tBTC/address/2MuuDnGquySMuA9WUAPLgJaDRGUa2pwP9uK)

    alias bitcoin-test='bitcoin-cli -config=~/bitcoind/xxx.conf'
    bitcoin-test getnewaddress jack
    bitcoin-test getnewaddress frank
    bitcoin-test listaccounts
    
### [Fake BTC](https://www.quora.com/How-do-I-get-free-Bitcoin-testnet-coins)

    [testnet.coinfaucet.eu](https://testnet.coinfaucet.eu/en/)
    
    [testnet.manu.backend.hamburg/faucet](https://testnet.manu.backend.hamburg/faucet)

### TestNet

    bitcoin-qt -testnet -gen
    
    
    
    
