### [wallet](https://bitcoin.org/en/download)

    [windows](https://bitcoin.org/en/download)
    [ubuntu](https://www.linuxbabe.com/ubuntu/install-bitcoin-core-wallet-ubuntu-16-04-16-10)
    
### [src](https://github.com/bitcoin/bitcoin)

    https://github.com/bitcoin/bitcoin
    https://github.com/bitpay/bitcoind-rpc
    https://github.com/jgarzik/python-bitcoinrpc
    
### [guide](https://github.com/bitcoin/bitcoin/tree/master/doc)

   [BerkeleyDB](https://github.com/bitcoin/bitcoin/blob/master/doc/build-openbsd.md)
    
### build

   Ubuntu
   
    sudo apt-get install libdb++-dev
    sudo apt-get install software-properties-common
    sudo add-apt-repository ppa:bitcoin/bitcoin
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
    ./autogen.sh
    ./configure
    make
    make install # optional

### API

    bitcoinditon
    bitcoind -datadir /home/ubuntu/bitcoind/data -rpcuser root -rpcpassword 123456-rpcport 8332 -daemon
    bitcoin-cli help
    bitcoin-cli help | grep gettransaction
    bitcoin-cli gettransaction
    bitcoin-cli stop

### pyRPC

    curl http://127.0.0.1:9090/btc/help
    curl http://127.0.0.1:9090/btc/getbalance -d "account=fun1"
    curl http://127.0.0.1:9090/btc/getaccount -d "address=fun1"
    
### Test

    bitcoin-cli help sendtoaddress
    bitcoin-cli help | grep send
    
    bitcoin-cli listaccounts
    bitcoin-cli listtransactions
    bitcoin-cli listtransactions | grep address
    
    bitcoin-cli getaddressinfo xxxxxxxxxxxxxxxxxxxxxxxxxx
    
    bitcoin-cli sendtoaddress xxxxxxxxxxxxxxxxxxxx 0.1
    bitcoin-cli getreceivedfromaddress xxxxxxxxxxxxxxxxxxxxxxx
    
    bitcoin-cli getaddressesbyaccount xxxx
    
    bitcoin-cli gettransaction xxxxxxxxxxxxxxxxxxxxxxx
    bitcoin-cli dumpwallet wallet.dat
    bitcoin-cli getnewaddress
    
    bitcoin-cli getaccountaddress xxxx
    
    bitcoin-cli getbalance xxxxxxxxxxxxxxxxxxxxxxx
    
    
    
    
    
    
