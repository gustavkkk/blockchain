### [guide](https://www.reddit.com/r/ethereum/comments/5viint/how_to_download_and_install_ethereum_wallet_and/)

### [APIs](https://github.com/ethereum/wiki/wiki/JavaScript-API)

   [JavaScript](https://github.com/ethereum/wiki/wiki/JavaScript-API)
   
   [JSON-RPC](https://github.com/ethereum/wiki/wiki/JSON-RPC)

### [White-Paper](https://github.com/ethereum/wiki/wiki/%5BKorean%5D-White-Paper)

### [wiki](https://github.com/ethereum/wiki/wiki)

   [gitbooks](https://ethereum.gitbooks.io/frontier-guide/content/jsre.html)

   [go](https://github.com/ethereum/go-ethereum/wiki)

### [wallet](https://www.ethereum.org/)

    [Release](https://github.com/ethereum/mist/releases/)

    [Windows](https://www.ethereum.org/)
    
    [Ubuntu32](http://ethembedded.com/?page_id=187)
    
    $ wget https://github.com/ethereum/mist/releases/download/0.5.1/Ethereum-Wallet-linux32-0-5-1.zip
    $ unzip Ethereum-Wallet-linux32-0-5-1.zip

### [Smart Contract](https://github.com/glynnbird/smartsponsor)

### Account

    geth account new
    geth account list

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

   [JavaScript-Console](https://github.com/ethereum/go-ethereum/wiki/JavaScript-Console) , [JSRE](https://ethereum.gitbooks.io/frontier-guide/content/jsre.html)
   
    $ geth console
    $ geth attach
    > personal.newAccount(passwd)
    > personal.listAccounts
    > exit

### Set datadir path

    geth --datadir "/home/ubuntu/.ethereum"
    
### Start RPC Service

    geth --rpc
    geth --rpc --rpcaddr 127.0.0.1 --rpcport 8454
    
### Test

  [Transaction](https://ethereum.gitbooks.io/frontier-guide/content/ether_transfer.html)
  
    > personal.unlockAccount("0x5d5e5432fd7dc5ab048e92b9e373713c1164650d","",0)
    > eth.sendTransaction({from: '0x5d5e5432fd7dc5ab048e92b9e373713c1164650d', to: '0x7aa5f148592d35fa0d659fe2f3f98d5e30c66da3', value: web3.toWei(0.1, "ether")})
    > eth.accounts
    > eth.coinbase
    > eth.getBalance('0x5d5e5432fd7dc5ab048e92b9e373713c1164650d')
    > eth.getTransaction("0x169ec56e82f06aeda45ff4608469f9f7fb518765530b968c8d0fb1061cf88a4b")
    > eth.blockNumber
    > eth.getBlock(eth.blockNumber)
    > eth.getTransactionCount("0x5d5e5432fd7dc5ab048e92b9e373713c1164650d")
    
### Test Browser

     127.0.0.1:9090/eth/gasprice
     127.0.0.1:9090/eth/getbalance?address=
     127.0.0.1:9090/eth/accounts
     127.0.0.1:9090/eth/sendtransaction?to=&from=&gas=&gasPrice=&value=&data=
     127.0.0.1:9090/eth/gettransactioncount?address=
     127.0.0.1:9090/eth/getransactionreceipt?tx_hash=
     
 ### [Create Private Key](https://github.com/ethereumjs/keythereum)
 
     geth account new
     cat ~/.ethereum/keystore/UTC--2018-03-27T02-07-51.370329422Z--5d5e5432fd7dc5ab048e92b9e373713c1164650d
     geth --testnet account new
     cat  ~/.ethereum/testnet/keystore/UTC--2018-03-27T07-42-01.383863409Z--1609256db753f0cbd537b059ae3eca1e0b9c7db6
     
 ### [Account](http://ethdocs.org/en/latest/account-management.html#using-mist-ethereum-wallet)
 
 ### Online
 
   [Balance](https://ethereum-balance.com)
   
   [etherchain](https://www.etherchain.org/account/)
 
 ### [web3.js]()
 
 ### [web3.py]()
 
 ### [Transactions](https://ethereum.stackexchange.com/questions/8547/how-to-explore-all-transactions-for-a-given-account)
 
   [etherscan-transaction](https://etherscan.io/txs)
   
 ### [Contract]()
 
   1. Edit a Contract as example.sol
      
            vim example.sol
   
            contract Example {

                string s;

                function set_s(string new_s) {
                    s = new_s;
                }

                function get_s() returns (string) {
                    return s;
                }
            }
         
   2. Compile
    
            solc --binary stdout example.sol
      

