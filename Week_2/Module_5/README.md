Private and Public identifiers, you can even take an example and give it

doubts
- If I interact with the account again, would it get constructed once more?
- I do not get it how they are fetching the blocks why would I get different number all the time.
- How contracts call blocks? https://bitsofco.de/calling-smart-contract-functions-using-web3-js-call-vs-send/


FUNCTION MODIFIERS
https://ethereum.stackexchange.com/questions/19380/external-vs-public-best-practices
https://ethereum.stackexchange.com/questions/29867/using-require-or-modifier/29868

How you can read and write contract code on Etherscan: https://medium.com/etherscan-blog/interacting-with-smart-contracts-on-etherscan-b3e1d2395ac



Verify and Publish your contract so that others can write and play with it. (did this already)
So it all depends on whether the contract owner had called the stillAlive function or not. 
So you do not need to include it anywhere. 
So the person will do a transaction of calling the function 

When I perform a write operation then if it changes the state of the transactions then it is a transaction and you are doing a write operation: https://ethereum.stackexchange.com/questions/37073/when-i-deploy-a-smart-contract-does-it-create-a-new-block-or-when-i-perfrom-a-wr

Only makes sense when I am calling the function and it is changing state resulting in that transaction being mined to other blocks. 

As the blocks are connected hence we can tell...the next block call will be ahead of the before one. 

Selfdestruct: https://solidity-by-example.org/hacks/self-destruct/

Module 5: Contract Published - https://goerli.etherscan.io/address/0x7c63452566a3e914745255e552b1cd1d81792f98#writeContract