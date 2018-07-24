### [guide](https://www.reddit.com/r/ethereum/comments/5viint/how_to_download_and_install_ethereum_wallet_and/)

### [APIs](https://github.com/ethereum/wiki/wiki/JavaScript-API)

   [JavaScript](https://github.com/ethereum/wiki/wiki/JavaScript-API)
   
   [JSON-RPC](https://github.com/ethereum/wiki/wiki/JSON-RPC)

### [White-Paper](https://github.com/ethereum/wiki/wiki/%5BKorean%5D-White-Paper)

### [wiki](https://github.com/ethereum/wiki/wiki)

   - [gitbooks](https://ethereum.gitbooks.io/frontier-guide/content/jsre.html)
   - [go](https://github.com/ethereum/go-ethereum/wiki)
   - [ethdocs](http://ethdocs.org/en/latest/)
   - [gitbooks](https://ethereum.gitbooks.io/frontier-guide/content/backup_restore.html)

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
    geth account update
    geth account import

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
    $ sudo add-apt-repository -y ppa:ethereum/ethereum
    $ sudo apt-get update
    $ sudo apt-get install ethereum
    #$ sudo apt-get install ethereum-unstable
    #$ apt-get install geth
    #$ make geth
    #$ make all
    
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

    #geth --rpc
    #geth --rpc --rpcaddr 127.0.0.1 --rpcport 8454
    #geth --rpc --exec "personal.unlockAccount(eth.accounts[0], \password\", 3600)"
    #geth --rpc --unlock 0x5d5e5432fd7dc5ab048e92b9e373713c1164650d --password password.txt
    #geth  --rpcaddr localhost --rpcport 8545 --rpcapi "eth,net,web3,personal"  --rpc
    geth --rpcapi eth,web3,personal --rpcport 18600 --port 18601 -testnet --rpc
    geth --rpcapi eth,web3,personal --rpcport 8600 --port 8601 --rpc
    
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
    > eth.getTransactionReceipt("0x169ec56e82f06aeda45ff4608469f9f7fb518765530b968c8d0fb1061cf88a4b")
    
### Test Browser

     #127.0.0.1:9090/eth/gasprice
     127.0.0.1:9090/eth/getbalance?address=
     127.0.0.1:9090/eth/accounts
     127.0.0.1:9090/eth/sendtransaction?to=&from=&gas=&gasPrice=&value=&data=
     127.0.0.1:9090/eth/newaccount?passphrase=
     127.0.0.1:9090/eth/unlockaccount?account=&passphrase=
     127.0.0.1:9090/eth/pendingTransactions
     #127.0.0.1:9090/eth/gettransactioncount?address=
     127.0.0.1:9090/eth/getransactionreceipt?tx_hash=
     127.0.0.1:9090/eth/newaccount?passphrase=123456
     127.0.0.1:9090/eth/unlockaccount?account=0x13f4a6b622ea04da17e813b2e406b9212dd43c45&passphrase=123456
     
 ### [Create Private Key](https://github.com/ethereumjs/keythereum)
 
     geth account new
     cat ~/.ethereum/keystore/UTC--2018-03-27T02-07-51.370329422Z--5d5e5432fd7dc5ab048e92b9e373713c1164650d
     geth --testnet account new
     cat  ~/.ethereum/testnet/keystore/UTC--2018-03-27T07-42-01.383863409Z--1609256db753f0cbd537b059ae3eca1e0b9c7db6
     
 ### [Account](http://ethdocs.org/en/latest/account-management.html#using-mist-ethereum-wallet)
 
 ### Online
 
   [ethereum-balance](https://ethereum-balance.com)
   
   [etherchain](https://www.etherchain.org/account/)
   
   [etherscan](https://etherscan.io/])
   
   [ethgasstation](https://ethgasstation.info/index.php)
 
 ### [web3.js]()
 
 ### [web3.py]()
 
 ### [Transactions](https://ethereum.stackexchange.com/questions/8547/how-to-explore-all-transactions-for-a-given-account)
 
   [etherscan-transaction](https://etherscan.io/txs)
   
   [listtransactions](https://github.com/ethereum/go-ethereum/issues/2104)
   
   [listtransactions](https://github.com/ethereum/go-ethereum/issues/1897)
   
 ### [Contract]()

   EX1:

   1. Edit a Contract as example.sol
      
            $ vim example.sol
            
            pragma solidity ^0.4.21;
            
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
    
            $ solc --bin example.sol
            $ solc --abi example.sol
            
   3. Creating
         
            > compiled = '0x606060405261020f806100136000396000f30060606040526000357c01000000000000000000000000000000000000000000000000000000009004806375d74f3914610044578063e7aab290146100bd57610042565b005b61004f600450610191565b60405180806020018281038252838181518152602001915080519060200190808383829060006004602084601f0104600302600f01f150905090810190601f1680156100af5780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b61010d6004803590602001906004018035906020019191908080601f016020809104026020016040519081016040528093929190818152602001838380828437820191505050505050905061010f565b005b806000600050908051906020019082805482825590600052602060002090601f01602090048101928215610160579182015b8281111561015f578251826000505591602001919060010190610141565b5b50905061018b919061016d565b80821115610187576000818150600090555060010161016d565b5090565b50505b50565b60206040519081016040528060008152602001506000600050805480601f0160208091040260200160405190810160405280929190818152602001828054801561020057820191906000526020600020905b8154815290600101906020018083116101e357829003601f168201915b5050505050905061020c565b9056'
            > abi = '[{\"constant\":false,\"inputs\":[],\"name\":\"get_s\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"new_s\",\"type\":\"string\"}],\"name\":\"set_s\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"}]'
            > contract_tx = eth.sendTransaction({from: '0x5d5e5432fd7dc5ab048e92b9e373713c1164650d', data: compiled, gas:'0x493e0'})
            '0x7dbde5d87f6b440cbc900545d1c559be00dd4504e61df1d7b9b59ba48c96d9de'
            > contract_addr = eth.getTransactionReceipt(contract_tx)
            '0x2f97e63809b53fe7fa3e3f45a6f1415c9917c07e'
            > eth.getCode('0x2f97e63809b53fe7fa3e3f45a6f1415c9917c07e')
            > tx = eth.sendTransaction({from:'0x5d5e5432fd7dc5ab048e92b9e373713c1164650d', to:'0x7dbde5d87f6b440cbc900545d1c559be00dd4504e61df1d7b9b59ba48c96d9de', 'set_s(string)', ['Hello, world'])
            
            
      [EX2:](http://ethdocs.org/en/latest/contracts-and-transactions/contracts.html#interacting-with-a-contract) doesn't work
      
      1. Contract
      
             pragma solidity ^0.4.4;

             contract test {

                  function multiply(uint a) returns(uint d){

                  return a * 7;
                  }

             }
             
      2. Compile
      
             #> source = "contract test { function multiply(uint a) returns(uint d) { return a * 7; } }"
             #> contract = eth.compile.solidity(source).test
             $ solc --bin example.sol
             $ solc --abi example.sol
            
      3. Execute

             > bytecode = '0x6060604052341561000f57600080fd5b60b18061001d6000396000f300606060405260043610603f576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff168063c6888fa1146044575b600080fd5b3415604e57600080fd5b606260048080359060200190919050506078565b6040518082815260200191505060405180910390f35b60006007820290509190505600a165627a7a72305820f7e57fcd19c7e5db9916e0d80b4355376628d8eff50b76cb52c6e6794bf05d1a0029'
             > abi = '[{"constant":false,"inputs":[{"name":"a","type":"uint256"}],"name":"multiply","outputs":[{"name":"d","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"function"}]'
             > contract_tx = eth.sendTransaction({from: '0x5d5e5432fd7dc5ab048e92b9e373713c1164650d', data: compiled, gas:eth.estimateGas({data: bytecode})})
             '0xc9b6fa6c4d7ee5fb0cc8e3bc66f6700cc957a3002e3370ee0f92765954170e8f'
             > contract_addr = eth.getTransactionReceipt(contract_tx)
             '0x7b1b314a3df2686701e675f5ee4ec0e0595a970d'
             > mycontract = eth.contract(abi)
             > contract_instance = mycontract.new({data: bytecode, gas: eth.estimateGas({data: bytecode}), from: eth.coinbase}, function(e, contract){
             if(!e){
               if(!contract.address){
                  console.log("Contract transaction send: Transaction Hash: "+contract.transactionHash+" waiting to be mined...");
               }else{
                  console.log("Contract mined! Address: "+contract.address);
                  console.log(contract);
               }
             }else{
               console.log(e)
             }
             })
             #> var contract = eth.contract(abi)#contract.info.abiDefinition)
             #> var mycontract = contract.at(address)
             #> var mycontract = contract.new(...)
             > eth.getCode(contractaddress)
             #> mycontract.multiply.sendTransaction(3, {from: address})
             #> mycontract.multiply.call(3)
             > web3.sha3("multiply(uint256)").substring(0, 8)
             "c6888fa1"
             > 
             0000000000000000000000000000000000000000000000000000000000000006
             0xc6888fa10000000000000000000000000000000000000000000000000000000000000006
             #> eth.sendTransaction({from:eth.coinbase,to:'0x7b1b314a3df2686701e675f5ee4ec0e0595a970d',data:'0xc6888fa10000000000000000000000000000000000000000000000000000000000000006'})
             "0x93444bb7246005df6973058b643481740b721bb444329bb0fd89334bfe28a6ce"
             >  eth.call({to:'0x7b1b314a3df2686701e675f5ee4ec0e0595a970d',data:'0xc6888fa10000000000000000000000000000000000000000000000000000000000000006'})
             "0x000000000000000000000000000000000000000000000000000000000000002a"
      
      
### [Discussing](https://gitter.im/ethereum/go-ethereum)

### Test

      curl -H 'content-type: application/json'  -X POST --data '{"jsonrpc":"2.0","method":"eth_accounts","params":[],"id":1}' http://localhost:8545
      curl -H 'content-type: application/json'  -X POST --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":83}' http://localhost:8545
      curl -H 'content-type: application/json'  -X POST --data '{"jsonrpc":"2.0","method":"eth_getTransactionByHash","params":["0x169ec56e82f06aeda45ff4608469f9f7fb518765530b968c8d0fb1061cf88a4b"],"id":1}' http://localhost:8545
      curl -H 'content-type: application/json'  -X POST --data '{"jsonrpc":"2.0","method":"eth_getBlockByNumber","params":["0x52b4fd", true],"id":1}' http://localhost:8545
      
# Topics

 ### [Pending Transactions](https://www.reddit.com/r/EtherDelta/comments/72tctz/guide_how_to_cancel_a_pending_transaction/)
 
 ### [Cancel Transaction](https://stackoverflow.com/questions/48738582/web3-can-eth-transaction-be-cancelled)
 
   [How to cancel](https://ethereum.stackexchange.com/questions/9072/canceling-overwriting-a-pending-transaction-using-geth-json-rpc/24586)
   
      > personal.unlockAccount('<YOUR_ACCOUNT>')
        Unlock account <YOUR_ACCOUNT>
        Passphrase:
        true
      > eth.sendTransaction({from: '<YOUR_ACCOUNT>',to: '<YOUR_ACCOUNT>',value: 0,gasPrice: <NEW_HIGHER_GAS_PRICE>,gasLimit: 24000,nonce: '<NONCE_OF_YOUR_PENDING_TRANSACTION>'});
      
### [TEST using TestNet](https://testnet.etherscan.io/)

    $ geth  --rpcaddr localhost --rpcport 8545 --rpcapi "eth,net,web3,personal,miner"  --rpc --testnet
    $ geth --port 30305 -testnet
    $ geth --testnet account new
    $ geth --testnet --mine --minerthreads=4
    $ geth --testnet attach
    > miner.start(8)
    > miner.stop()
    
### CONCEPT

   []()
   
   [token](https://ethplorer.io/)

   [Contract]() - Decentralized Logic
  
   [Swarm](https://ethereum.stackexchange.com/questions/375/what-is-swarm-and-what-is-it-used-for) - Decentralized Storage
  
   [Whisper]() - Decentralized Messaging
   
   [IPFS]()
   
   [DApp](https://ethereum.stackexchange.com/questions/383/what-is-a-dapp) - [Decentralized Applications](https://blockgeeks.com/guides/dapps/)
   
### TEST

      geth --rpcapi eth,web3,personal --rpcport 18600 --port 18601 -testnet --rpc
      geth --rpcapi eth,web3,personal --rpcport 8600 --port 8601 --rpc

### ERC20
     [ERC20_Token_Standard](https://theethereum.wiki/w/index.php/ERC20_Token_Standard)
     pragma solidity ^0.4.24;

      // ----------------------------------------------------------------------------
      // 'FIXED' 'Example Fixed Supply Token' token contract
      //
      // Symbol      : FIXED
      // Name        : Example Fixed Supply Token
      // Total supply: 1,000,000.000000000000000000
      // Decimals    : 18
      //
      // Enjoy.
      //
      // (c) BokkyPooBah / Bok Consulting Pty Ltd 2018. The MIT Licence.
      // ----------------------------------------------------------------------------


      // ----------------------------------------------------------------------------
      // Safe maths
      // ----------------------------------------------------------------------------
      library SafeMath {
          function add(uint a, uint b) internal pure returns (uint c) {
              c = a + b;
              require(c >= a);
          }
          function sub(uint a, uint b) internal pure returns (uint c) {
              require(b <= a);
              c = a - b;
          }
          function mul(uint a, uint b) internal pure returns (uint c) {
              c = a * b;
              require(a == 0 || c / a == b);
          }
          function div(uint a, uint b) internal pure returns (uint c) {
              require(b > 0);
              c = a / b;
          }
      }


      // ----------------------------------------------------------------------------
      // ERC Token Standard #20 Interface
      // https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
      // ----------------------------------------------------------------------------
      contract ERC20Interface {
          function totalSupply() public constant returns (uint);
          function balanceOf(address tokenOwner) public constant returns (uint balance);
          function allowance(address tokenOwner, address spender) public constant returns (uint remaining);
          function transfer(address to, uint tokens) public returns (bool success);
          function approve(address spender, uint tokens) public returns (bool success);
          function transferFrom(address from, address to, uint tokens) public returns (bool success);

          event Transfer(address indexed from, address indexed to, uint tokens);
          event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
      }


      // ----------------------------------------------------------------------------
      // Contract function to receive approval and execute function in one call
      //
      // Borrowed from MiniMeToken
      // ----------------------------------------------------------------------------
      contract ApproveAndCallFallBack {
          function receiveApproval(address from, uint256 tokens, address token, bytes data) public;
      }


      // ----------------------------------------------------------------------------
      // Owned contract
      // ----------------------------------------------------------------------------
      contract Owned {
          address public owner;
          address public newOwner;

          event OwnershipTransferred(address indexed _from, address indexed _to);

          constructor() public {
              owner = msg.sender;
          }

          modifier onlyOwner {
              require(msg.sender == owner);
              _;
          }

          function transferOwnership(address _newOwner) public onlyOwner {
              newOwner = _newOwner;
          }
          function acceptOwnership() public {
              require(msg.sender == newOwner);
              emit OwnershipTransferred(owner, newOwner);
              owner = newOwner;
              newOwner = address(0);
          }
      }


      // ----------------------------------------------------------------------------
      // ERC20 Token, with the addition of symbol, name and decimals and a
      // fixed supply
      // ----------------------------------------------------------------------------
      contract FixedSupplyToken is ERC20Interface, Owned {
          using SafeMath for uint;

          string public symbol;
          string public  name;
          uint8 public decimals;
          uint _totalSupply;

          mapping(address => uint) balances;
          mapping(address => mapping(address => uint)) allowed;


          // ------------------------------------------------------------------------
          // Constructor
          // ------------------------------------------------------------------------
          constructor() public {
              symbol = "FIXED";
              name = "Example Fixed Supply Token";
              decimals = 18;
              _totalSupply = 1000000 * 10**uint(decimals);
              balances[owner] = _totalSupply;
              emit Transfer(address(0), owner, _totalSupply);
          }


          // ------------------------------------------------------------------------
          // Total supply
          // ------------------------------------------------------------------------
          function totalSupply() public view returns (uint) {
              return _totalSupply.sub(balances[address(0)]);
          }


          // ------------------------------------------------------------------------
          // Get the token balance for account `tokenOwner`
          // ------------------------------------------------------------------------
          function balanceOf(address tokenOwner) public view returns (uint balance) {
              return balances[tokenOwner];
          }


          // ------------------------------------------------------------------------
          // Transfer the balance from token owner's account to `to` account
          // - Owner's account must have sufficient balance to transfer
          // - 0 value transfers are allowed
          // ------------------------------------------------------------------------
          function transfer(address to, uint tokens) public returns (bool success) {
              balances[msg.sender] = balances[msg.sender].sub(tokens);
              balances[to] = balances[to].add(tokens);
              emit Transfer(msg.sender, to, tokens);
              return true;
          }


          // ------------------------------------------------------------------------
          // Token owner can approve for `spender` to transferFrom(...) `tokens`
          // from the token owner's account
          //
          // https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20-token-standard.md
          // recommends that there are no checks for the approval double-spend attack
          // as this should be implemented in user interfaces 
          // ------------------------------------------------------------------------
          function approve(address spender, uint tokens) public returns (bool success) {
              allowed[msg.sender][spender] = tokens;
              emit Approval(msg.sender, spender, tokens);
              return true;
          }


          // ------------------------------------------------------------------------
          // Transfer `tokens` from the `from` account to the `to` account
          // 
          // The calling account must already have sufficient tokens approve(...)-d
          // for spending from the `from` account and
          // - From account must have sufficient balance to transfer
          // - Spender must have sufficient allowance to transfer
          // - 0 value transfers are allowed
          // ------------------------------------------------------------------------
          function transferFrom(address from, address to, uint tokens) public returns (bool success) {
              balances[from] = balances[from].sub(tokens);
              allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
              balances[to] = balances[to].add(tokens);
              emit Transfer(from, to, tokens);
              return true;
          }


          // ------------------------------------------------------------------------
          // Returns the amount of tokens approved by the owner that can be
          // transferred to the spender's account
          // ------------------------------------------------------------------------
          function allowance(address tokenOwner, address spender) public view returns (uint remaining) {
              return allowed[tokenOwner][spender];
          }


          // ------------------------------------------------------------------------
          // Token owner can approve for `spender` to transferFrom(...) `tokens`
          // from the token owner's account. The `spender` contract function
          // `receiveApproval(...)` is then executed
          // ------------------------------------------------------------------------
          function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
              allowed[msg.sender][spender] = tokens;
              emit Approval(msg.sender, spender, tokens);
              ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
              return true;
          }


          // ------------------------------------------------------------------------
          // Don't accept ETH
          // ------------------------------------------------------------------------
          function () public payable {
              revert();
          }


          // ------------------------------------------------------------------------
          // Owner can transfer out any accidentally sent ERC20 tokens
          // ------------------------------------------------------------------------
          function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
              return ERC20Interface(tokenAddress).transfer(owner, tokens);
          }
      } 
      
     [SimpleERC20Token](https://programtheblockchain.com/posts/2018/01/30/writing-an-erc20-token-contract/)
     pragma solidity ^0.4.21;

      contract SimpleERC20Token {
          // Track how many tokens are owned by each address.
          mapping (address => uint256) public balanceOf;

          string public name = "Simple ERC20 Token";
          string public symbol = "SET";
          uint8 public decimals = 18;

          uint256 public totalSupply = 1000000 * (uint256(10) ** decimals);

          event Transfer(address indexed from, address indexed to, uint256 value);

          function SimpleERC20Token() public {
              // Initially assign all tokens to the contract's creator.
              balanceOf[msg.sender] = totalSupply;
              emit Transfer(address(0), msg.sender, totalSupply);
          }

          function transfer(address to, uint256 value) public returns (bool success) {
              require(balanceOf[msg.sender] >= value);

              balanceOf[msg.sender] -= value;  // deduct from sender's balance
              balanceOf[to] += value;          // add to recipient's balance
              emit Transfer(msg.sender, to, value);
              return true;
          }

          event Approval(address indexed owner, address indexed spender, uint256 value);

          mapping(address => mapping(address => uint256)) public allowance;

          function approve(address spender, uint256 value)
              public
              returns (bool success)
          {
              allowance[msg.sender][spender] = value;
              emit Approval(msg.sender, spender, value);
              return true;
          }

          function transferFrom(address from, address to, uint256 value)
              public
              returns (bool success)
          {
              require(value <= balanceOf[from]);
              require(value <= allowance[from][msg.sender]);

              balanceOf[from] -= value;
              balanceOf[to] += value;
              allowance[from][msg.sender] -= value;
              emit Transfer(from, to, value);
              return true;
          }
      }
