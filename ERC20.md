### [Concept](https://en.wikipedia.org/wiki/ERC20)

### [BLOG](https://steemit.com/ethereum/@maxnachamkin/how-to-create-your-own-ethereum-token-in-an-hour-erc20-verified)

### SmartCode
   - [ERC20-Standard](https://theethereum.wiki/w/index.php/ERC20_Token_Standard)
   - [Tokens](https://github.com/bokkypoobah/Tokens#fixed-supply-token)
   - [Mineable-Coin](https://lightrains.com/blogs/how-to-create-mineable-erc20-tokens)
   
### [Compile & Create](https://github.com/gustavkkk/blockchain/blob/master/Ethereum.md#contract)
      solc --bin example.sol
      compiled = '0x' +
      contract_tx = eth.sendTransaction({from: '0x50125c68fa75ce8d24e3f1c01a0ee90e6c12ab207b77', data: compiled, gas:'0x4c4b40', gasPrice:'0x2540be400'})
      contract_addr = eth.getTransactionReceipt(contract_tx)
      
### Check
      https://etherscan.io/token/0x80d09da032f4293b1f1295274509cb76c2a5dc42
      https://etherscan.io/address/0x80d09da032f4293b1f1295274509cb76c2a5dc42#code

