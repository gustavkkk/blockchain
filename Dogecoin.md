# [Dogecoin](https://github.com/dogecoin/dogecoin)

### Wiki

### [Build on Unix](https://github.com/dogecoin/dogecoin/blob/master/doc/build-unix.md)

    sudo apt-get install software-properties-common
    sudo add-apt-repository ppa:bitcoin/bitcoin
    sudo apt-get update
    sudo apt-get install libdb4.8-dev libdb4.8++-dev
    sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
    sudo apt-get install libqrencode-dev
    ./autogen.sh
    ./configure
    make
    make install # optional

### [MINING](https://www.reddit.com/r/dogecoin/comments/3hbon4/how_to_run_a_dogecoin_testnet_node_its_easier/)

    $ dogecoind -datadir=/home/ubuntu/dogecoind/data -gen
    $ dogecoind -datadir=/home/ubuntu/dogecoind/data -testnet -daemon -gen
    $ dogecoind -datadir=/home/ubuntu/dogecoind/data -rpcuser=xxxx -rpcpassword=xxxx -rpcport=xxxx -testnet -daemon -gen -genproclimit=1

# TestNet

   - [balance](https://chain.so/testnet/doge)
