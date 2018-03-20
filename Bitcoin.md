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
    ./autogen.sh
    ./configure
    make
    make install # optional
