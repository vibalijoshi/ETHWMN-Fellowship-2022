# Hardhat

Hardhat makes the smart contract developement process really simple. In the earlier modules, I used Remix to code, compile and deploy my smart contracts. You can do this locally on your machine by using HardHat. 

## How to get started
I recommend going through the official tutorial and just following along it: https://hardhat.org/tutorial/

## Workflow

Summarizing the workflow ->

## Deploying to testnets

The Workflow is as follows ->
1. In your metamask wallet choose the desired network for the account you want to use.
2. Then add money to the wallet using faucets available for different testnets. Following are the testnets that worked for me:
     - Ropsten
     - Goerli
     - [Rinkeby](https://ethereum.stackexchange.com/questions/30659/are-there-any-rinkeby-testnet-faucets-that-dont-require-social-network-accounts)

3. You would require an endpoint url to your node. I would suggest using node providers such as Infura or Alchemy API to fasten the process. The code looks like this: 

```js
require("@nomiclabs/hardhat-waffle");

const INFURA_API_KEY = "";
// Replace this private key with your testnet network account private key
// To export your private key from Metamask, open Metamask and
// go to Account Details > Export Private Key
// Be aware of NEVER putting real Ether into testing accounts
const PRIVATE_KEY = "";
const TESTNET = "goerli" //ropsten, rinkeby 

module.exports = {
  solidity: "0.7.3",
  networks: {
    goerli: { //make sure to change this to your testnet name
      url: `https://${TESTNET}.infura.io/v3/${INFURA_API_KEY}`,
      accounts: [`0x${PRIVATE_KEY}`]
    }
  }
};
```
If you get an error, network not found that would be cause you forgot to add the network's name in the module.exports. 


## My learnings
- Difference between npm and npx: 
     - Npm is a tool that use to install packages. Npx is a tool that use to execute package

- The `view` modifier indicates that it doesn't modify the contract's state, which allows us to call it without executing a transaction.
- The metamask faucet for rinkeby does not work properly, it sent money to my ropsten network :P
     
## Doubts
- [ ] confusion about what infura provides for me and the relationship between my account and the node/the end point that they provided me with
   
     
     
     
