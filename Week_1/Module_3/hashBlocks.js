/* Looping through the first 128 blocks in the Goerli network
 * Using getBlock(value) to fetch the block object
 * After obtaining the hash, writing it to the file 'hash_codes.txt'
*/ 
import { secretKeys } from '../secretKeys';
const Web3 = require('web3');
var fs = require('fs');

const web3 = new Web3(secretKeys.infuraEndpoint);


const hashBlocks = async () => {
    for (let i = 0; i < 128; i++) {
        const block = await web3.eth.getBlock(i);
        //writing block hash into file
        fs.appendFileSync('hash_codes.txt', `block ${i} hash: ${block.hash} \n`);
    }
}

hashBlocks();
