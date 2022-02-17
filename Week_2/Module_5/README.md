# Module Overview
Here we were required to put to test our knowledge about the Solidity and contract creation. We were required to code a smart contract which if is inactive ( determined by the frequency of calls to a function) then all the money would be transferred to an account pre determined by the owner account and hence the money would be saved. My dead man's contract is deployed at [this address](https://goerli.etherscan.io/address/0x7c63452566a3e914745255e552b1cd1d81792f98#writeContract)

## What I got to learn
- Payable, Private, Public, External, Internal Keywords/Function Modifiers and where and how to use them. 
- Detailed functioning of a contstructor. 
- [External vs Public](https://ethereum.stackexchange.com/questions/19380/external-vs-public-best-practices)
- [Required Modifier](https://ethereum.stackexchange.com/questions/29867/using-require-or-modifier/29868)
- When an EOA performs a write function and it changes the state of EVM then it is a transaction (ether would be deducted). [Referrence](https://ethereum.stackexchange.com/questions/37073/when-i-deploy-a-smart-contract-does-it-create-a-new-block-or-when-i-perfrom-a-wr)
- [Selfdestruct function](https://solidity-by-example.org/hacks/self-destruct/)

## Workflow
- Anyone can access the `checkIfOwnerAccountStillActive()` function but only the owner can call the `_stillAlive()` function. Such measures are taken to insure security. 
![module_5_transaction](https://user-images.githubusercontent.com/69690510/154508187-4c086346-47b8-4556-bbce-7366999868fd.png)

doubts
- If I interact with the account again, would it get constructed once more?
- I do not get it how they are fetching the blocks why would I get different number all the time.
- How contracts call blocks? https://bitsofco.de/calling-smart-contract-functions-using-web3-js-call-vs-send/
