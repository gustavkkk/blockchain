### [Source](https://github.com/litecoin-project/litecoin)

   [Release](https://github.com/litecoin-project/litecoin/releases)

### [Build-Linux](https://github.com/litecoin-project/litecoin/blob/master/doc/build-unix.md#to-build)

      $ sudo apt-get install software-properties-common
      $ sudo add-apt-repository ppa:bitcoin/bitcoin
      $ sudo apt-get update
      $ sudo apt-get install libdb4.8-dev libdb4.8++-dev
      $ sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
      $ sudo apt-get install libqrencode-dev
      
      $ git clone https://github.com/litecoin-project/litecoin
      $ cd litecoin
      
      $ ./autogen.sh
      $ ./configure
      $ make
      $ make install # optional

### [Ref]()

### TEST-CLI

      litecoin-cli listaccounts
      litecoin-cli getnewaddress frank
      litecoin-cli getnewaddress kevin
      litecoin-cli listaccounts

### Fake LTC

   - [litecointools](http://testnet.litecointools.com/)
