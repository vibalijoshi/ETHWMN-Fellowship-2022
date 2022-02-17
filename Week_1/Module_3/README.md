# Module -3

## Retrieve the first 128 block hashes
1. This was quite simple. Using the `getBlock().hash` method you can fetch the particular hash of the block. Each block within the blockchain is identified by a hash, generated using the SHA256 cryptographic hash algorithm on the header of the block. It is different from the block number
2. I used javascript file I/O module to directly write into the file rather than priting it and then copying it. 

## How to identify a smart contract block?

- A block holds records of multiple transactions mined to it. 
- To determine whether we have a smart contract in the block we need to analyze the list of transactions in it.
- If any transaction in the list of transactions does not have a to address, this means that this particular transaction is required to deploy a smart contract. 
- The first transaction of smart contract deployment is stored in block number 12841. 

### Outline of the whole process

1. Start fetching the block object using the `getBlock()` method.
2. Then extract the transactions array from the block object. 
3. There will be plenty of blocks with no transactions so let us filter them out.
4. If there are transactions then you need to check all individual transaction addresses and fetch the transaction receipt.
5. Then will check if any transactions have the to address `null`. If you find such transaction, then print the block number and end the process. 


Note: [Refer to the latest web3js documentation (v1.7.0)](https://web3js.readthedocs.io/en/v1.7.0/web3-eth-accounts.html)
