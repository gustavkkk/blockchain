### [guide](https://www.reddit.com/r/ethereum/comments/5viint/how_to_download_and_install_ethereum_wallet_and/)

### [wallet](https://www.ethereum.org/)

### [src](https://github.com/ethereum/cpp-ethereum)   

### [rpc](https://github.com/ethereum/wiki/wiki/JSON-RPC)

### build
    
  cpp
  
    $ sudo apt-get install cmake
    $ git submodule update --init
    $ mkdir build
    $ cd build
    $ cmake ..
    $ cmake --build .
  
  go
  
    $ sudo apt-get install golang
    $ make geth
    $ make all
