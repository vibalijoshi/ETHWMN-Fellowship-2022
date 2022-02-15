//12841 Answer
import { secretKeys } from '../secretKeys';
const Web3 = require('web3');

const web3 = new Web3(secretKeys.infuraEndpoint);

const checkSmartContract = async (transactionAddress) => {
    var transactionReceipt = await web3.eth.getTransactionReceipt(transactionAddress)
    var toAccountAddress = transactionReceipt.to;

    if (toAccountAddress === null) {
        return true;
    }
    else
        return false;
}

const findFirstSmartContractBlock = async () => {
    let blockNumber = 0
    while (1) {
        let block = await web3.eth.getBlock(blockNumber);
        console.log(blockNumber + ":" + block.transactions.length);

        if (block.transactions.length) {

            for (let i = 0; i < block.transactions.length; i++) {

                var transactionAddress = block.transactions[i];

                var isSmartContract = false;
                isSmartContract = await checkSmartContract(transactionAddress);
                
                if (isSmartContract === true) {
                    console.log(blockNumber)
                    break;
                }
            }
        }

        blockNumber += 1;
    }

}
findFirstSmartContractBlock();




