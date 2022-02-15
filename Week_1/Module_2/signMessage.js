import { secretKeys } from '../secretKeys';
const Web3 = require('web3');
const web3 = new Web3(secretKeys.infuraEndpoint);

const privateKey = secretKeys.account1PrivateKey;


var dataToBeSigned = 'gEth is Money'
var signedMessage = web3.eth.accounts.sign(dataToBeSigned, privateKey);
console.log(signedMessage);