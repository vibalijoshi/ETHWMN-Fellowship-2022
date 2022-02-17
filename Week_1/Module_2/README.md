# Module -2

1. Now you need to create an account on the goerli network. It manages your key pair enabling you to perform transactions. [How to create an account](). I would suggest you to create two accounts, as this would come handy while performing the transactions.
2. After you have your account ready, add some test ether (this ether has no monetary value and is used for testing purposes only). [How to get test ether]()

## Signing The Message
1. Signing a message is a way of verifying that you have sent the text and it is legit. 
2. I used [web3js documentation](https://web3js.readthedocs.io/en/v1.7.0/web3-eth-accounts.html#sign) to find the method of signing the message.

### How to run the files
I am running javascript on node.js console, hence make sure you have the lastest node version installed in your system. 
```
npm install node
```
```
npm install web3
```
```
node <filename>.js
```

## Sending the transaction
1. Code available in `sendTransaction.js`. 
2. There are three stages of sending the transaction - build, sign, broadcast.
3. I referred to [this YT Video](https://www.youtube.com/watch?v=uFdjZ-B3GCM) to get an idea of what it going on. It is outdated and methods have changed drastically. 
