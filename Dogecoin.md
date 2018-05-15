# [Dogecoin](https://github.com/dogecoin/dogecoin)

### Wiki

### [Build on Unix](https://github.com/dogecoin/dogecoin/blob/master/doc/build-unix.md)

    sudo apt-get install software-properties-common
    sudo add-apt-repository ppa:bitcoin/bitcoin
    sudo apt-get update
    sudo apt-get install libdb4.8-dev libdb4.8++-dev libdb++-dev
    sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
    sudo apt-get install libqrencode-dev
    
    $ git clone https://github.com/dogecoin/dogecoin
    $ cd dogecoin 
    
    [berkeley-db5.1](https://github.com/dogecoin/dogecoin/blob/master/doc/build-unix.md#berkeley-db)
   
    DOGECOIN_ROOT=$(pwd)
    # Pick some path to install BDB to, here we create a directory within the dogecoin directory
    BDB_PREFIX="${DOGECOIN_ROOT}/db5"
    mkdir -p $BDB_PREFIX
    
    # Fetch the source and verify that it is not tampered with
    wget 'http://download.oracle.com/berkeley-db/db-5.1.29.NC.tar.gz'
    echo '08238e59736d1aacdd47cfb8e68684c695516c37f4fbe1b8267dde58dc3a576c db-5.1.29.NC.tar.gz' | sha256sum -c
    # -> db-5.1.29.NC.tar.gz: OK
    tar -xzvf db-5.1.29.NC.tar.gz
    
    # Build the library and install to our prefix
    cd db-5.1.29.NC/build_unix/
    #  Note: Do a static build so that it can be embedded into the executable, instead of having to find a .so at runtime
    ../dist/configure --enable-cxx --disable-shared --with-pic --prefix=$BDB_PREFIX
    make install
    
    # Configure Dogecoin Core to use our own-built instance of BDB
    cd $BITCOIN_ROOT
    ./configure (other args...) LDFLAGS="-L${BDB_PREFIX}/lib/" CPPFLAGS="-I${BDB_PREFIX}/include/"
    
    #build
    #./autogen.sh
    #./configure
    make
    make install # optional
    

### [MINING](https://www.reddit.com/r/dogecoin/comments/3hbon4/how_to_run_a_dogecoin_testnet_node_its_easier/)

    Doesn't Work
    #$ dogecoind -datadir=/home/ubuntu/dogecoind/data -gen
    #$ dogecoind -datadir=/home/ubuntu/dogecoind/data -testnet -daemon -gen
    #$ dogecoind -datadir=/home/ubuntu/dogecoind/data -rpcuser=xxxx -rpcpassword=xxxx -rpcport=xxxx -testnet -daemon -gen -genproclimit=1
    
    It works
    $ dogecoin-qt -testnet -gen -genproclimit=2

# TestNet

   - [balance](https://chain.so/testnet/doge)
