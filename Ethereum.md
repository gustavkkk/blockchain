### [guide](https://www.reddit.com/r/ethereum/comments/5viint/how_to_download_and_install_ethereum_wallet_and/)

### [wiki](https://github.com/ethereum/go-ethereum/wiki/Geth)

### [wallet](https://www.ethereum.org/)

    [Release](https://github.com/ethereum/mist/releases/)

    [Windows](https://www.ethereum.org/)
    
    [Ubuntu32](http://ethembedded.com/?page_id=187)
    
    $ wget https://github.com/ethereum/mist/releases/download/0.5.1/Ethereum-Wallet-linux32-0-5-1.zip
    $ unzip Ethereum-Wallet-linux32-0-5-1.zip
    
### [src](https://github.com/ethereum/cpp-ethereum)   

### [rpc](https://github.com/ethereum/wiki/wiki/JSON-RPC)

### [build](https://ethereum.gitbooks.io/frontier-guide/content/installing_linux.html)
    
  cpp
  
    $ sudo apt-get install cmake
    $ git submodule update --init
    $ mkdir build
    $ cd build
    $ cmake ..
    $ cmake --build .
    $ sudo make install
  
  [go](https://geth.ethereum.org/install/)
  
    $ sudo apt-get install golang
    $ apt-get install geth
    $ make geth
    $ make all
    
  latest
  
    sudo apt-get install software-properties-common
    sudo add-apt-repository -y ppa:ethereum/ethereum
    sudo add-apt-repository -y ppa:ethereum/ethereum-dev    
    sudo apt-get update
    sudo apt-get install ethereum

### [ETH-CLI](https://ethereum.org/cli)

   [JavaScript-Console](https://github.com/ethereum/go-ethereum/wiki/JavaScript-Console)
   
    $ geth console
    $ geth attach

### Set datadir path

    geth --datadir "/home/ubuntu/.ethereum"
    
### Start RPC Service

    geth --rpc
    geth --rpc --rpcaddr 127.0.0.1 --rpcport 8454
    
###
