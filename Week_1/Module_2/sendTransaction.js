/* A transaction has three parts->
1. Building The Transaction Object
2. Signing The Transaction Object
3. Broadcasting The Signed Transaction
*/
import { secretKeys } from '../secretKeys';
const Web3 = require('web3');

const web3 = new Web3(secretKeys.infuraEndpoint);

const account1Address = secretKeys.account1Address;
const account2Address = secretKeys.account2Address;

const account1PrivateKey = secretKeys.account1PrivateKey;


web3.eth.getTransactionCount(account1Address, (err, txCount) => {
    // Build the transaction
    const txObject = {
        to: account2Address,
        value:web3.utils.toWei('0.5','ether'),
        gas: '21000',
        gasPrice: web3.utils.toWei('10', 'gwei')
    }


    // Sign the transaction
    const signedTransaction = web3.eth.accounts.signTransaction(txObject, account1PrivateKey); 


    //Broadcast the Transaction
    signedTransaction.then(signedTx => {
        const sentTx = web3.eth.sendSignedTransaction(signedTx.raw || signedTx.rawTransaction);
        //get the receipt, after this it becomes like getTransaction() method
        sentTx.on("receipt", receipt => {
            console.log("receipt: ", receipt);
          });
        sentTx.on("error", err => {
            console.log(err.message)
        });
    })


})
