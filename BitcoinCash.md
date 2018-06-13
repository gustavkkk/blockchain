### [Concept](https://en.wikipedia.org/wiki/Bitcoin_Cash)

### [website](https://www.bitcoincash.org/)

### code

   - [bitcoin-abc](https://github.com/Bitcoin-ABC/bitcoin-abc)
   
   - [bitcoinxt](https://github.com/bitcoinxt/bitcoinxt)
   
   - [BitcoinUnlimited](https://github.com/BitcoinUnlimited/BitcoinUnlimited)
   
### [rpc](https://github.com/paOol/Bitcoin-Cash-RPC)

### [Installation](https://github.com/Bitcoin-ABC/bitcoin-abc/blob/master/doc/build-unix.md#to-build)

     bitcoin-abc-compile error(https://www.bitcoinunlimited.info/download)
     $ sudo add-apt-repository ppa:bitcoin/bitcoin
     $ sudo apt-get update
     $ sudo apt-get install libdb4.8-dev libdb4.8++-dev
     $ sudo apt-get install libdb++-dev
     $ git clone https://github.com/Bitcoin-ABC/bitcoin-abc
     $ cd bitcoin-abc
     $ ./autogen.sh
     $ ./configure
     
     bitcoinunlimited-pass(https://www.bitcoinunlimited.info/download)
     $ sudo apt-get install git build-essential libtool autotools-dev automake pkg-config
     $ sudo apt-get install libssl-dev libevent-dev bsdmainutils libboost-all-dev
     $ sudo apt-get install libqt4-dev libprotobuf-dev protobuf-compiler libqrencode-dev #opt: only needed if you want bitcoin-qt
     $ sudo apt-get install software-properties-common                               #opt: only needed if your wallet uses the old format
     $ sudo add-apt-repository ppa:bitcoin-unlimited/bu-ppa                          #     this is not needed if your wallet will use the new
     $ sudo apt-get update                                                           #     format, or if you're not going to use a wallet at all
     $ sudo apt-get install libdb4.8-dev libdb4.8++-dev
     $ mkdir -p ~/src
     $ git clone https://github.com/BitcoinUnlimited/BitcoinUnlimited.git bu-src
     $ cd bu-src
     $ git checkout release
     $ ./autogen.sh
     $ ./configure
     $ make
     $ sudo make install
